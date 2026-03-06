<?php

namespace App\Http\Controllers;

use App\Models\Servico;
use App\Models\User;
use Illuminate\Http\Request;
use \Auth;

class ServicosController extends Controller
{
      public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $servicos = Servico::get();
        return view('servicos.index')->with("servicos", $servicos);
    }


    public function create()
    {
        return view('servicos.form')->with("post", "create");
    }


    public function store(Request $request)
    {
        $dadosNovos = Servico::where("name", $request->name);
        if($dadosNovos->exists()){

        return redirect()->back()->with('warning' , "Esse servico já existe");

        }else{
        $dadosNovos = new Servico();
        $dadosNovos->name = $request->name;
        $dadosNovos->expire_at = date("Y-m-d H:i:s", strtotime('+1 month'));
        $dadosNovos->std_price = $request->std_price;
        $dadosNovos->changed_by_id = Auth::user()->id;
        $dadosNovos->save();

        return redirect()->back()->withSuccess('Serviço cadastrado com sucesso');
     // request()->session()->flash('success', "Essa servico foi cadastrada com sucesso!");
       // return redirect()->back(); //->with('cancelrate' , "Essa servico já existe");

        }


    }




    public function show(Servico $servico)
    {
        //
    }


    public function edit($dados)
    {
        $servico = Servico::find($dados);

         return view('servicos.form')->with('servico', $servico)->with("post", "edit");
    }


    public function update(Request $request, Servico $servico)
    {
          $dadosNovos =  Servico::find($request->id);

        $dadosNovos->name = $request->name;
        $dadosNovos->std_price = $request->std_price;
        $dadosNovos->changed_by_id = Auth::user()->id;
        $dadosNovos->save();
        return redirect()->back()->withSuccess('Servico atualizada com sucesso');
    }


    public function destroy(Servico $servico, $id)
    {
        Servico::where([['id', '=', $id]])->delete();
        return redirect()->back()->withSuccess('Servico atualizada com sucesso');
    }
}
