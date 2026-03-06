<?php

namespace App\Http\Controllers;

use App\Models\Area;
use App\Models\User;
use Illuminate\Http\Request;
use \Auth;

class AreasController extends Controller
{
      public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $areas = Area::get();
        return view('areas.index')->with("areas", $areas);
    }


    public function create()
    {
        return view('areas.create');
    }


    public function store(Request $request)
    {
        $dadosNovos = Area::where("nome", $request->name);
        if($dadosNovos->exists()){
        request()->session()->flash('warning', "Essa area foi cadastrada com sucesso!");
        return redirect()->back()->with('warning' , "Essa area já existe");

        }else{
        $dadosNovos = new Area();
        $dadosNovos->nome = $request->name;
        $dadosNovos->user_id = Auth::user()->id;
        $dadosNovos->save();
        return redirect()->back()->withSuccess('Area cadastrada com sucesso');
     // request()->session()->flash('success', "Essa area foi cadastrada com sucesso!");
       // return redirect()->back(); //->with('cancelrate' , "Essa area já existe");

        }


    }

    public function Facilitadores($id){
 $area = Area::find($id);
     $users = User::whereRaw('FIND_IN_SET("'.$id.'", area_id)')->get();
        return view('facilitadores.index')->with("users", $users)->with("area", $area);
    }


    public function show(Area $area)
    {
        //
    }


    public function edit($dados)
    {
        $user = Area::find($dados);

         return view('areas.edit')->with('user', $user);
    }


    public function update(Request $request, Area $area)
    {
          $dadosNovos =  Area::find($request->id);
        $dadosNovos->nome = $request->name;
         $dadosNovos->status = $request->status;
        $dadosNovos->user_id = Auth::user()->id;
        $dadosNovos->save();
        return redirect()->back()->withSuccess('Area atualizada com sucesso');
    }


    public function destroy(Area $area, $id)
    {
        Area::where([['id', '=', $id]])->delete();
        return redirect()->back()->withSuccess('Area atualizada com sucesso');
    }
}
