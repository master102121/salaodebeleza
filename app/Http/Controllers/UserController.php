<?php

namespace App\Http\Controllers;

    use App\Models\User as Profissionais;
    use App\Models\User;
    use Illuminate\Http\Request;
    use \Hash;
    use Auth;

    class UserController extends Controller
    {
      
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


// No seu UserController.php
public function update(Request $request) {
    // Em vez de $user = $request->user(), procure pelo e-mail para teste:
    $user = User::where('email', $request->email)->first(); 

    if (!$user) {
        return response()->json(['message' => 'Usuário não encontrado'], 404);
    }

    $request->validate([
        'email' => 'required|email|unique:users,email,'.$user->id,
        'password' => 'nullable|min:6',
    ]);

    $user->name = $request->name; // Aproveite para atualizar o nome também
    $user->email = $request->email;
    
    if ($request->password) {
        $user->password = Hash::make($request->password);
    }
    
    $user->save();

    return response()->json(['message' => 'Dados atualizados no MySQL com sucesso!']);
}

        public function destroy(Profissionais $profissionais)
        {
            //
        }
    }
