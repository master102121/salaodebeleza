<?php

namespace App\Http\Controllers;

use App\Models\User as Usuario;
use App\Models\Subcategoria;
use App\Models\Categoria;
use Illuminate\Http\Request;

class SubcategoriasController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $subcategorias = Subcategoria::get();
        return view('subcategorias.index')->with("subcategorias", $subcategorias);
    }



public function create()
{
    // Precisamos das categorias para o usuário escolher a qual a subcategoria pertence
    $categorias = Categoria::all();
    return view('subcategorias.create', compact('categorias'));
}

public function store(Request $request)
{
    $request->validate([
        'name' => 'required|max:255',
        'category_id' => 'required',
        'status' => 'required'
    ]);

    // Lógica para salvar na tabela 'subcategory' (conforme seu Model)
    SubCategoria::create([
        'name' => $request->name,
        'category_id' => $request->category_id,
        'status' => $request->status,
        'imgurl' => $request->imgurl, // ajuste aqui se for usar upload de arquivo
    ]);

    return redirect()->route('subcategorias.index')->with('message', 'Subcategoria criada com sucesso!');
}

public function edit($id)
{
    $subcategoria = SubCategoria::findOrFail($id);
    $categorias = Categoria::all();
    return view('subcategorias.edit', compact('subcategoria', 'categorias'));
}

public function update(Request $request, $id)
{
    $subcat = SubCategoria::findOrFail($id);
    
    // Usando o mapeamento correto dos campos
    $subcat->update([
        'name' => $request->name,
        'category_id' => $request->category_id,
        'status' => $request->status,
        'imgurl' => $request->imgurl
    ]);

    return redirect()->route('subcategorias.index')->with('message', 'Subcategoria atualizada!');
}


    public function show(Subcategoria $subcategoria)
    {
        //
    }

/*
    public function edit($id)
    {
        $subcategoria = Subcategoria::find($id);
        $categorias = Categoria::get();
        return view('subcategorias.edit')->with("subcategoria", $subcategoria)->with("categorias", $categorias);
    }
*/
/*
    public function update(Request $request, $id)
    {
        $subcat = Subcategoria::find($id);
        $subcat->name = $request->name;
        // $prod->user_id = Auth::user()->id;
        $subcat->category_id = $request->category_id;
        //  $prod->diahora = $request->data.' 00:00:00';
       // $cat->imgurl = $request->imgurl;
        $subcat->status = $request->status;
        $subcat->save();

        return redirect()->back()->with('message', 'Subcategoria atualizado com sucesso!');
    }
*/
    /**
    * Remove the specified resource from storage.
    *
    * @param  \App\Models\Subcategoria  $subcategoria
    * @return \Illuminate\Http\Response
    */
    public function destroy(Subcategoria $subcategoria)
    {
        //
    }
}
