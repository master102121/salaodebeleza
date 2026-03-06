<?php

namespace App\Http\Controllers;

use App\Models\User as Usuario;
use App\Models\Categoria;
//use App\Models\Categoria;
use App\Models\SubCategoria;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Auth;
use File;

class CategoriasController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $categorias = Categoria::get();
        return view('categorias.index')->with('categorias', $categorias);
    }

    public function create()
    {
        return view('categorias.create');
    }

   public function store(Request $request)
{
    // 1. Validação
    $request->validate([
        'name' => 'required|string|max:255',
        'status' => 'required',
        'image' => 'nullable|image|max:2048'
    ]);

    // 2. Upload da Imagem (se houver)
    $path = null;
    if ($request->hasFile('image')) {
        $upload = $request->file('image')->store('categorias', 'public');
        $path = \Storage::url($upload);
    }

    // 3. Salvamento Mapeado
    // Aqui é onde a mágica acontece: ligamos o 'name' do Blade ao 'alias_name' do MySQL
    \App\Models\Categoria::create([
        'name'       => $request->name,       // Coluna name
        'alias_name' => $request->name,       // Coluna alias_name (repetindo para garantir)
        'status'     => $request->status,     // Coluna status
        'imagem_url' => $path,                // Coluna imagem_url
        'created_at' => now(),
        'updated_at' => now(),
    ]);

    return redirect()->route('categorias.index')
                     ->with('message', 'Categoria salva com sucesso!')
                     ->with('alerta', 'success');
}
    public function show(Categoria $categoria)
    {
        //
    }

    public function edit($id)
    {
        $categoria = Categoria::find($id);
        //  $categorias = Categoria::where("status", 1)->get();
        return view('categorias.edit')->with('categoria', $categoria); //->with("categorias", $categorias);
    }

    public function update(Request $request, $id)
    {
        $cat = Categoria::find($id);
        $cat->alias_name = $request->name;
        // $prod->user_id = Auth::user()->id;
        // $cat->category_id = $request->categoria;
        //  $prod->diahora = $request->data.' 00:00:00';
        // $cat->imgurl = $request->imgurl;

        if ($request->hasFile('image')) {
            $imageName = 'categoria_' . $cat->id . '_' . date('YmdHis') . '.' . $request->image->extension();
            $cat->imagem_url = asset('/images') . '/' . $imageName;
            $request->image->move(public_path('images'), $imageName);
        } else {
            $cat->imagem_url = $request->imgurl;
        }
        $cat->status = $request->status;
        $cat->save();

        return redirect()->back()->with('message', 'Categoria atualizado com sucesso!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Categoria  $categoria
     * @return \Illuminate\Http\Response
     */
    public function destroy(Categoria $categoria)
    {
        //
    }
}
