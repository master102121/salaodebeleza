<?php

namespace App\Http\Controllers;

    use App\Models\User as Profissionais;
    use App\Models\User;
    use Illuminate\Http\Request;
    use \Hash;
    use Auth;

    class UsuariosController extends Controller
    {
        public function __construct()
        {
            $this->middleware('auth');
        }

        public function index()
        {
            $users = User::get();
            return view('usuarios.index')->with("users", $users);
        }

        /**
        * Show the form for creating a new resource.
        *
        * @return \Illuminate\Http\Response
        */
        public function create()
        {
            return view('usuarios.form')->with("user", [])->with("post", "create");
        }


        public function store(Request $request)
        {
            $user = new User();
            $user->password = Hash::make($request->password);
            $user->name = $request->name;
            $user->telefone = $request->telefone;
            $user->cidade = $request->cidade;
            $user->cidadeufbairrostr  = $request->cidade;
            $user->email = $request->email;
            $user->status = 1;
            $user->historico = $request->historico;
            $user->isadmin = $request->isadmin??"0";
            $user->area_id = $request->atua;
            $user->save();

            return redirect()->back()->withSuccess('Cadastro de usuário feita com sucesso');

        }


        public function show(Profissionais $profissionais)
        {
            //
        }


        public function edit($profissionais)
        {
            $user = User::find($profissionais);
            return view('usuarios.form')->with("user", $user)->with("post", "edit");
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
            $user->cidadeufbairrostr  = $request->cidade;
            //  $user->congregacao = $request->congregacao;
            $user->email = $request->email;
            $user->historico = $request->historico;
            // $user->membro = $request->membro;
            $user->isadmin = $request->isadmin;
            if($request->atua!=""){
                $user->area_id = $request->atua;
            }
            $user->save();

            return redirect()->back()->withSuccess('Atualização de usuário feita com sucesso');

        }

        public function destroy(Profissionais $profissionais)
        {
            //
        }
    }
