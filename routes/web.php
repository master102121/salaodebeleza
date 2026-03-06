<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\{
    HomeController,
    AjustesController,
    ProfileController,
    ProdutosController,
    CategoriasController,
    SubcategoriasController,
    AgendamentosController,
    DisponibilidadesController,
    AreasController,
    ChangeControllers,
    OneSignalsController,
    HospitalController,
    PlantonistasController,
    NotificationsController
};

/*
|--------------------------------------------------------------------------
| Web Routes - Gerente da Beleza v11
|--------------------------------------------------------------------------
*/

// Rota inicial
Route::get('/', function () {
    return view('auth.login');
});

// Endpoint de Auth/API Legado (Refatorado)
Route::any('/auth', function (Request $request) {
    $json = $request->getContent();
    $logData = "\n--- New Auth Request ---\n" . "REQUEST: " . print_r($request->all(), true) . "\nJSON: " . $json . "\n";
    Storage::append('teste.txt', $logData);

    $openinghour = [[
        "id" => 1,
        "startTime" => "06:00:00",
        "endTime" => "22:00:00",
        "dayOfWeek" => 1,
        "tenant" => 5,
        "apiId" => 2
    ]];

    return response()->json([
        "token" => "456TGPKX22XNBGZSAAA",
        "type" => 1,
        "tenant" => 25,
        "profiles" => ["nome", "Paulo Sergio"],
        "openingHours" => $openinghour
    ]);
});

// Rotas de Autenticação
Auth::routes();

// Dashboard e Perfil
Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/backend', [HomeController::class, 'dash'])->name('backend.dashboard');
Route::get('/profile', [ProfileController::class, 'index'])->name('profile');
Route::put('/profile', [ProfileController::class, 'update'])->name('profile.update');

// Rota de Notificações Fixa (Para resolver o erro do Blade)
Route::get('/notifications', [NotificationsController::class, 'index'])->name('notifications');
Route::get('/notifications/create', [NotificationsController::class, 'create'])->name('notifications.create');
// Ajustes e Tags
Route::controller(AjustesController::class)->group(function () {
    Route::get('/change/android', 'AndroidChange')->name('change.android');
    Route::get('admin/tags/edit/{id}', 'tagsedit')->name("admin.tags.edit");
    Route::get('admin/tags/altera', 'tagsaltera')->name("admin.tags.altera");
    Route::get('admin/tags/padrao/{id}', 'tagspadrao')->name("admin.tags.padrao");
    Route::post('admin/tags/store', 'tagsstore')->name("admin.tags.store");
    
    $rotasajustes = ['sistemcolor', 'valoreseservicos', 'administradores', 'financeiro', 'logoeimagens', 'plantonistas', 'especialidades', 'eritropoetinas', 'areas', 'hospitals', 'ajustes'];
    foreach ($rotasajustes as $raj) {
        Route::get('/' . $raj . '/{id}', $raj)->name('ajustes.' . $raj);
    }
});

// Atualizações Específicas
Route::post('/produtos/atualiza/{id}', [ProdutosController::class, 'update'])->name('produtos.atualiza');
Route::post('/categorias/atualiza/{id}', [CategoriasController::class, 'update'])->name('categorias.atualiza');
Route::post('/subcategorias/atualiza/{id}', [SubcategoriasController::class, 'update'])->name('subcategorias.atualiza');
Route::post('/agendamentos/atualiza/{id}', [AgendamentosController::class, 'update'])->name('agendamentos.atualiza');
Route::get('/busca/valores/', [AgendamentosController::class, 'search'])->name('busca.valor');
Route::get('/change/user/disponiveis/', [DisponibilidadesController::class, 'ChangeUserDisp'])->name('change.user.disponiveis');

// CRUD Dinâmico (Removido 'notifications' do loop para evitar conflito de nomes)
$rotasCru = ['disponibilidades', 'profissionais', 'localizacoes', 'agendamentos', 'relatorios', 'areas', 'ajustes', 'produtos', 'categorias', 'subcategorias', 'usuarios', 'servicos'];

foreach ($rotasCru as $rota) {
    $controller = "App\\Http\\Controllers\\" . ucfirst($rota) . "Controller";
    
    Route::prefix($rota)->name($rota . '.')->controller($controller)->group(function () use ($rota) {
        Route::get('/', 'index')->name('index');
        Route::get('/create', 'create')->name('create');
        Route::post('/store', 'store')->name('store');
        Route::get('/edit/{dados}', 'edit')->name('edit');
        Route::post('/update', 'update')->name('update');
        Route::delete('/destroy/{id}', 'destroy')->name('destroy');
    });
}

// Outras Rotas de Negócio
Route::post('/plantonista/restore', [PlantonistasController::class, 'Restore'])->name('plantonistas.restore');
Route::get('/area/barbearias/{id}', [AreasController::class, 'Barbearias'])->name('areas.barbearias');
Route::get('/libera/usuario', [HomeController::class, 'Liberar'])->name('libera.usuario');
Route::get('/busca/autocomplete/', [HomeController::class, 'search'])->name('busca.ajax.lista.home');
Route::post('/change/all', [ChangeControllers::class, 'change'])->name('change.all.banks');
Route::post('/send/note', [OneSignalsController::class, 'sendforonlyoneuser'])->name('sendnotificationstouser');

Route::get('/about', fn() => view('about'))->name('about');

// Resources Adicionais
Route::resource('service', \App\Http\Controllers\Admin\ServiceController::class);
Route::resource('hospital', HospitalController::class);