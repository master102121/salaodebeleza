<?php

namespace App\Http\Controllers;

use App\Models\Especialidade;
use Illuminate\Http\Request;
use \Auth;

class EspecialidadesController extends Controller
{
      public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = Especialidade::get();
        return view('especialidades.index')->with("users", $users);
    }


    public function create()
    {
        return view('especialidades.create');
    }


    public function store(Request $request)
    {
        $dadosNovos = Especialidade::where("nome", $request->name);


        if($dadosNovos->exists()){
        request()->session()->flash('warning', "Essa especialidade foi cadastrada com sucesso!");
        return redirect()->back()->with('warning' , "Essa especialidade já existe");

        }else{
        $dadosNovos = new Especialidade();
        $dadosNovos->nome = $request->name;
        $dadosNovos->user_id = Auth::user()->id;
        $dadosNovos->save();
        return redirect()->back()->withSuccess('Especialidade cadastrada com sucesso');
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
        $user = Especialidade::find($dados);
         return view('especialidades.edit')->with('user', $user);
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
