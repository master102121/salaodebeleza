<?php

namespace App\Http\Controllers;

use App\Models\User;
//use App\Models\Appointment as Agendamento;
use App\Models\Time;
use App\Models\Agendamento;
use App\Models\Disponibilidade;
use App\Models\Servico;
use Illuminate\Http\Request;
use App\Models\Dayson;
use Auth;

class DisponibilidadesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {

        if(isset($request->usrid)){

            $disponibilidades = Disponibilidade::where("profissional_id", $request->usrid)->first();
            $selected = User::find($request->usrid);
            $tema = "Disponibilidades de:".$disponibilidades->name;
        }else{
            $disponibilidades = Disponibilidade::where("profissional_id", Auth::user()->id)->first();
            $selected = Auth::user();
            $tema = "Minhas Disponibilidades";

        }



        return view('agendamentos.disponibilidades')->with('disponibilidades', $disponibilidades)
        ->with('selected', $selected)
        ->with('tema', $tema);
    }


    public function ChangeUserDisp(Request $request){
        //echo print_r($request->all(), 1);
        $novoouedit = Disponibilidade::where("profissional_id", $request->id);
        $dayson = Dayson::find(1);
        $ndaysons = array();

        if($novoouedit->exists()){
            $sql = $novoouedit->first();
        }else{
            $sql = new Disponibilidade();
            $sql->profissional_id = $request->id;
        }
        $periods = $request->periodo;
        $celula = "a";
        $mended = array();
        $fps = fopen("dayson.txt", "a+");
        foreach($periods as $per){
            $cel = explode("-", $per);
            if($celula!=$cel[0]){
                $celula = $cel[0];
                $mended = array();
            }else{
                if($celula!="a"){
                    $sql->$celula = implode(",", $mended);
                    //  fwrite($fps, implode(",", $mended)."\n");
                    if (strpos(implode(",", $mended), "s"))
                    {
                        //fwrite($fps, "tem sim\n");
                        $ndaysons[] = $celula;

                    }else{
                        //fwrite($fps, "tem nao\n");

                    }

                }
            }

            $mended[] = $cel[1]."-".$cel[2];




        }

        $ndaysons = array_unique($ndaysons);
        foreach($ndaysons as $ndayon){



            $sd = explode(",", $dayson->$ndayon);

            if (!strpos($dayson->$ndayon, $sql->profissional_id))
            {

                $sd[] = $sql->profissional_id;
                $ne = implode(",", $sd);
                $dayson->$ndayon = ltrim($ne, ',');
                $dayson->save();
            }
            $dayson->$ndayon = ltrim($dayson->$ndayon, ',');
            $dayson->save();

        }


        $sql->save();
        echo "Dados inseridos com sucesso!";


    }

    public function create()
    {
        $method = 'post';
        $agendamento = new Agendamento();
        $clientes = User::where("area_id", "")->get();
        $servicos = Servico::where("status", "1")->get();
        $profissionals = User::where("area_id", "!=", "")->get();

        return view('agendamentos.form')->with('clientes', $clientes)
        ->with('profissionals', $profissionals)
        ->with('method', $method)
        ->with('servicos', $servicos)
        ->with('agendamento', $agendamento);
    }


    public function store(Request $request)
    {

        $validator = \Validator::make($request->all(), [
            // 'descricao' => 'required|min:5',
            'start_date' => 'required',
            'end_date' => 'required',
            'servico' => 'servico',
            'cliente_id' => 'required',
            'profissional_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator);
        } else {
            $agendamento = new Agendamento();
            $agendamento->descricao = $request->input('descricao')??"Nenhuma observação adicionada";
            $agendamento->start_date = $request->input('start_date');
            $agendamento->end_date = $request->input('end_date');
            $agendamento->servico_id = $request->input('servico_id');
            $agendamento->id_cliente = $request->input('cliente_id')??25;
            $agendamento->id_profissional = $request->input('profissional_id');
            $agendamento->valor = str_replace(array("R", "$", ",", " ",), array("", "", ".", "",), $request->input('valor'));
            $agendamento->save();

            return redirect()->route('agendamentos.index');
        }
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $method = 'put';
        $agendamento = Agendamento::find($id);
        $servicos = Servico::where("status", "1")->get();
        $clientes = User::where("area_id", "")->get();
        $profissionals = User::where("area_id", "!=", "")->get();
        return view('agendamentos.form')->with('method', $method)
        ->with('agendamento', $agendamento)
        ->with('clientes', $clientes)
        ->with('servicos', $servicos)
        ->with('profissionals', $profissionals);
    }


    public function update(Request $request, $id)
    {
        $validator = \Validator::make($request->all(), [
            'descricao' => 'required|min:5',
            'start_date' => 'required',
            'end_date' => 'required',
            'cliente_id' => 'required',
            'profissional_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->withErrors($validator);
        } else {
            $agendamento = Agendamento::find($id);
            $agendamento->descricao = $request->input('descricao');
            $agendamento->start_date = $request->input('start_date');
            $agendamento->end_date = $request->input('end_date');
            $agendamento->id_cliente = $request->input('cliente_id');
            $agendamento->valor = str_replace(array("R", "$", ",", " ",), array("", "", ".", "",), $request->input('valor'));
            $agendamento->id_profissional = $request->input('profissional_id');
            $agendamento->save();

            return redirect()->route('agendamentos.index');
        }
    }

    public function search(Request $request){
        if($request->ajax()) {
            $data = Servico::find($request->id);
            return $data->std_price;


            /*
            ->where('status', 1);
            if(Auth::user()->praca_id!='mp'){
                $data = $data->where('praca', explode(",", Auth::user()->praca_id));
            }
            $data = $data->limit(10)->get();
            $output = '';
            if (count($data)>0) {
                $output = '<ul class="form-group col-md-11 d-block" style=" position: absolute; z-index: 3; background:rgba(240, 240, 240, 0.1);">';
                foreach ($data as $row){
                    $output .= '<li class="form-control lista"
                    data-id="'.$row->id.'"
                    data-cep="'.$row->CEP.'"
                    data-banco="'.($row->dadosbancario_id??0).'"
                    style="cursor:pointer;">'.$row->nome.'</li>';
                }
                $output .= '</ul>';
            }
            else {
                $output .= '<li class="list-group-item">'.'Sem Combinações'.'</li>';
            }
            return $output;
            */
        }
    }


    public function destroy($id)
    {
        $agendamento = Agendamento::find($id);

        $agendamento->delete();

        return redirect()->route('agendamentos.index');
    }
}
