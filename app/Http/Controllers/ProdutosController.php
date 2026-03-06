<?php

namespace App\Http\Controllers;

use App\Models\User as Usuario;
use App\Models\Produto;
use App\Models\Categoria;
use App\Models\SubCategoria;
use Illuminate\Http\Request;
use Auth;
use File;

class ProdutosController extends Controller
{
      public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $produtos = Produto::get();
        return view('produtos.index')->with("produtos", $produtos);
    }

    public function create()
    {
         // $produto = Produto::find($id);
             $categorias = Categoria::where("status", 1)->get();
             $subcategorias = SubCategoria::where("status", 1)->get();
        return view('produtos.form')
        //->with("produto", $produto)
        ->with("categorias", $categorias)
         ->with("subcategorias", $subcategorias)
        ->with("post", "create");
    }


    public function store(Request $request)
    {
            $prod = new Produto();
        $prod->name = $request->name;
         $prod->unitprice = str_replace(",", ".", $request->unitprice);
         $prod->promotional = $request->promocional=="on"?"1":"0";
       // $prod->user_id = Auth::user()->id;
        $prod->category_id = $request->categoria_id;
        $prod->subcategory_id = $request->subcategoria_id;
      //  $prod->diahora = $request->data.' 00:00:00';
        //$prod->imgurl = $request->imgurl;
       // $prod->status = $request->status;
        $prod->imgurl = trim($request->imgurl);
          if( $request->hasFile('image')) {

           $imageName = date("YmdHis").'.'.$request->image->extension();
            $prod->imgurl = asset('/images').'/'.$imageName;
             $request->image->move(public_path('images'), $imageName);

        }
        $prod->save();
        return redirect()->back()->with('message', 'Produto cadastrado com sucesso!');
    }


    public function show(Produto $produto)
    {
        //
    }


    public function edit($id)
    {
            $produto = Produto::find($id);
             $categorias = Categoria::where("status", 1)->get();
             $subcategorias = SubCategoria::where("status", 1)->get();
        return view('produtos.form')->with("produto", $produto)
        ->with("categorias", $categorias)
         ->with("subcategorias", $subcategorias)
        ->with("post", "edit");
    }


    public function update(Request $request)
    {
         $prod = Produto::find($request->id);
        $prod->name = $request->name;
         $prod->unitprice = str_replace(",", ".", $request->unitprice);
         $prod->promotional = $request->promocional=="on"?"1":"0";
       // $prod->user_id = Auth::user()->id;
        $prod->category_id = $request->categoria_id;
        $prod->subcategory_id = $request->subcategoria_id;
      //  $prod->diahora = $request->data.' 00:00:00';
        //$prod->imgurl = $request->imgurl;
       // $prod->status = $request->status;
        $prod->imgurl = trim($request->imgurl);
          if( $request->hasFile('image')) {

           $imageName = date("YmdHis").'.'.$request->image->extension();
            $prod->imgurl = asset('/images').'/'.$imageName;
             $request->image->move(public_path('images'), $imageName);

        }
        $prod->save();
        return redirect()->back()->with('message', 'Produto atualizado com sucesso!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Produto  $produto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Produto $produto)
    {
        //
    }
}
