<?php

namespace App\Http\Controllers;
use App\Models\User as Profissionais;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Auth;

class ProfissionaisController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = Profissionais::where("membro", 1)->get();
        return view('profissionais.index')->with("users", $users);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }


    public function store(Request $request)
    {
        //
    }


    public function show(Profissionais $profissionais)
    {
        //
    }


    public function edit($profissionais)
    {

         $user = Profissionais::find($profissionais);



        return view('profissionais.edit')->with("user", $user);




    }


    public function update(Request $request)
    {

       $user = User::find($request->idhidden);

        if($request->password!=""){

        $user->password = Hash::make($request->password);
        }
        $user->name = $request->name;
        $user->telefone = $request->telefone;
        $user->cidade = $request->cidade;
        $user->congregacao = $request->congregacao;
        $user->email = $request->email;
        $user->membro = $request->membro;
        $user->comissao = $request->comissao;
if($request->atua!=""){
    $user->area_id = $request->atua;
}
            $user->save();

 return redirect()->back()->withSuccess('Atualização de usuário feita com sucesso');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Profissionais  $profissionais
     * @return \Illuminate\Http\Response
     */
    public function destroy(Profissionais $profissionais)
    {
        //
    }
}
