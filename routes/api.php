<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;

/*
|--------------------------------------------------------------------------
| API Gerente da Beleza - MacBook Pro .103
|--------------------------------------------------------------------------
*/

// Rotas Principais para o Flutter
Route::get('/categories', [ApiController::class, 'getCategories']);
Route::get('/specialists', [ApiController::class, 'getSpecialists']);
Route::post('/book/create', [ApiController::class, 'storeBooking']);
Route::get('/my-bookings/{cliente_id}', [ApiController::class, 'getUserBookings']);

// Autenticação
Route::post('/loginMobile', [ApiController::class, 'loginMobile']);

// Rota para buscar serviços de uma categoria específica
Route::get('/categories/{id}/services', [ApiController::class, 'getServicesByCategory']);
Route::get('/services/highlights', [ApiController::class, 'getServiceHighlights']);
Route::put('/user/update', [UserController::class, 'update']);

// Teste de conexão rápido
Route::get('/ping', function() {
    return response()->json(['status' => 'online', 'ip' => '192.168.1.103']);
});