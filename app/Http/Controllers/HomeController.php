<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use  Illuminate\Database\Eloquent\Collection;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function Liberar(Request $request)
    {
        $dadosNovos = User::find($request->id);



            $dadosNovos->status = $request->liberado;


            $dadosNovos->save();

            if($request->liberado==1){
            echo "Usuário liberado com sucesso!";
            }else{
            echo "Usuário bloqueado com sucesso";

            }

           // return redirect()->back()->withSuccess('Usuário liberado com sucesso');





    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {


        $users = new User();

       //$collection = collect([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);
      //  $shuffled = $collection->shuffle();
       // $shuff = $shuffled->implode("");

        $widget = [
            'users' => $users->where("email", "!=", null)->count(),
            'cabeleireiros' => $users->where("categoria",  "cab")->count(),
            'barbearias' => $users->where("categoria",  "brb")->count(),
            'manicures' => $users->where("categoria",  "man")->count(),
            'dermatologistas' => $users->where("categoria",  "der")->count(),
            //...
        ];

        return view('home', compact('widget'));
    }

        public function search(Request $request){
        if($request->ajax()) {
            $data = User::where('name', 'LIKE', $request->nome.'%')->where('status', 1);

             $data = $data->where('cidade', 'LIKE', $request->cidade.'%');
            if($request->cidade=="Itu"){
               $data = $data->orWhere('cidade', 'LIKE', 'Porto Feliz');
            }

           // ->whereRaw('LOWER("cidade") LIKE ? ',[trim(strtolower($request->cidade.'%')).'%'])


            $data = $data->limit(10)->get();
            $output = '';
            if (count($data)>0) {
                $output = '<ul class="form-group col-md-11 d-block" style=" position: absolute; z-index: 3; background:rgba(240, 240, 240, 0.1); color:black;">';
                foreach ($data as $row){
                    $output .= '<li class="form-control lista text-info"
                    data-id="'.$row->id.'"
                    data-inBusca="'.$request->idinput.'"
                    data-cidade="'.$row->cidade.'"
                    data-email="'.($row->email).'"
                    style="cursor:pointer;">'.$row->name.'</li>';
                }
                $output .= '</ul>';
            }
            else {
                $output .= '<li class="list-group-item">'.'Sem Combinações'.'</li>';
            }
            return $output;
        }
    }
}
