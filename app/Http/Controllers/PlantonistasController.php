<?php

namespace App\Http\Controllers;

use App\Models\Especialidade;
use App\Models\Plantonista;
use App\Models\User;
use Illuminate\Http\Request;
use \Auth;

class PlantonistasController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = Plantonista::get();
        return view('plantonistas.index')->with("users", $users);
    }


    public function create()
    {
        return view('plantonistas.create');
    }


     public function Restore(Request $request)
    {
        $dadosNovos = Plantonista::find($request->iddatabela);



            $dadosNovos->indaiatuba_1 = $request->indaiatuba_1_hidden;
            $dadosNovos->indaiatuba_2 = $request->indaiatuba_2_hidden;
            $dadosNovos->salto_1 = $request->salto_1_hidden;
            $dadosNovos->salto_2 = $request->salto_2_hidden;
            $dadosNovos->itu_1 = $request->itu_1_hidden;
            $dadosNovos->itu_2 = $request->itu_2_hidden;




            $dadosNovos->user_id = Auth::user()->id;
            $dadosNovos->save();
            return redirect()->back()->withSuccess('Período de plantão atualizado com sucesso');





    }



    public function store(Request $request)
    {
        $dadosNovos = Plantonista::where("inicio", $request->inicio);
        if($dadosNovos->exists()){
            request()->session()->flash('warning', "Essa periodo ja está cadastrado!");
            return redirect()->back()->with('warning' , "Esse periodo já existe");

        }else{
            $dadosNovos = new Plantonista();

            $dadosNovos->indaiatuba_1 = $request->indaiatuba_1_hidden;
            $dadosNovos->indaiatuba_2 = $request->indaiatuba_2_hidden;
            $dadosNovos->salto_1 = $request->salto_1_hidden;
            $dadosNovos->salto_2 = $request->salto_2_hidden;
            $dadosNovos->itu_1 = $request->itu_1_hidden;
            $dadosNovos->itu_2 = $request->itu_2_hidden;


            $dadosNovos->inicio = $request->inicio;
            $dadosNovos->fim = $request->fim;

            $dadosNovos->user_id = Auth::user()->id;
            $dadosNovos->save();
            return redirect()->back()->withSuccess('Período de plantão cadastrado com sucesso');
            // request()->session()->flash('success', "Essa especialidade foi cadastrada com sucesso!");
            // return redirect()->back(); //->with('cancelrate' , "Essa especialidade já existe");

        }


    }


    public function show(Especialidade $especialidade)
    {
        //
    }


    public function edit($dados)
    {
        $user = Plantonista::find($dados);
        return view('plantonistas.edit')->with('user', $user);
    }


    public function update(Request $request, Especialidade $especialidade)
    {
        $dadosNovos =  Especialidade::find($request->id);
        $dadosNovos->nome = $request->name;
        $dadosNovos->status = $request->status;
        $dadosNovos->user_id = Auth::user()->id;
        $dadosNovos->save();
        return redirect()->back()->withSuccess('Especialidade atualizada com sucesso');
    }


    public function destroy(Especialidade $especialidade, $id)
    {
        Especialidade::where([['id', '=', $id]])->delete();
        return redirect()->back()->withSuccess('Especialidade atualizada com sucesso');
    }
}
