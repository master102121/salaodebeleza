<?php

namespace App\Http\Controllers;

use App\Models\Ajuste;
use App\Models\Android;
use App\Models\User;
use App\Models\Coresdosistema;
use App\Models\Listadeespecialidade;
use App\Models\Valoreseservico;
use App\Models\Administrador;
use App\Models\Financeiro;
use App\Models\Logotipoeimagem;
use Illuminate\Http\Request;
use \Auth;

class AjustesController extends Controller
{
      public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $ajustes = Ajuste::get();
        return view('ajustes.index')->with("ajustes", $ajustes);
    }


    public function sistemcolor()
    {
        $tags = Coresdosistema::get();

        return view('ajustes.sistemcolor')->with("tags", $tags);
    }

      public function tagsedit($id)
    {
        $tag = Coresdosistema::find($id);
        $tag->save();

        return view('ajustes.tagsedit')->with("tag", $tag);
    }

         public function tagspadrao($id)
    {
        $tag = Coresdosistema::find($id);
        $tag->color = $tag->default;
        $tag->save();

        return view('ajustes.tagsedit')->with("tag", $tag)->with("success", "A cor foi resetada com sucesso!");
    }

          public function tagsaltera(Request $request)
    {


        $tag = Coresdosistema::find($request->id);
        $tag->color = $request->cor;
        $tag->save();
echo  "A cor foi alterada com sucesso, clique em F5 no seu teclado para ver as alterações, se quizer voltar ao original clique no botão *Padrão* na tela";
      //  return view('ajustes.tagsedit')->with("tag", $tag)->with("success", "A cor foi alterada com sucesso!");
    }

             public function AndroidChange(Request $request)
    {


        $tag = Android::find($request->id);
        $tag->valor = $request->valor;
        $tag->save();
echo  "O item ".$tag->alias_name." foi alterado com sucesso para:".$request->valor;
      //  return view('ajustes.tagsedit')->with("tag", $tag)->with("success", "A cor foi alterada com sucesso!");
    }


public function especialidades(){
$especialidades = Listadeespecialidade::get();
return view('ajustes.especialidades')->with("especialidades", $especialidades);
}



    public function create()
    {
        return view('ajustes.create');
    }


    public function store(Request $request)
    {
        $dadosNovos = Ajuste::where("nome", $request->name);
        if($dadosNovos->exists()){
        request()->session()->flash('warning', "Essa ajuste foi cadastrada com sucesso!");
        return redirect()->back()->with('warning' , "Essa ajuste já existe");

        }else{
        $dadosNovos = new Ajuste();
        $dadosNovos->nome = $request->name;
        $dadosNovos->user_id = Auth::user()->id;
        $dadosNovos->save();
        return redirect()->back()->withSuccess('Ajuste cadastrada com sucesso');
     // request()->session()->flash('success', "Essa ajuste foi cadastrada com sucesso!");
       // return redirect()->back(); //->with('cancelrate' , "Essa ajuste já existe");

        }


    }




    public function show(Ajuste $ajuste)
    {
        //
    }


    public function edit($dados)
    {
        $ajuste = Ajuste::find($dados);
        $tags = Coresdosistema::get();
        $logoimg = Logotipoeimagem::get();

         return view('ajustes.'.$ajuste->arquivo)
         ->with('tags', $tags)
         ->with('logoimg', $logoimg)
         ->with('ajuste', $ajuste);
    }


    public function update(Request $request, Ajuste $ajuste)
    {
          $dadosNovos =  Ajuste::find($request->id);
        $dadosNovos->nome = $request->name;
         $dadosNovos->status = $request->status;
        $dadosNovos->user_id = Auth::user()->id;
        $dadosNovos->save();
        return redirect()->back()->withSuccess('Ajuste atualizada com sucesso');
    }


    public function destroy(Ajuste $ajuste, $id)
    {
        Ajuste::where([['id', '=', $id]])->delete();
        return redirect()->back()->withSuccess('Ajuste atualizada com sucesso');
    }
}
