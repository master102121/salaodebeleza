<?php
use App\Models\Especialidade;
use App\Models\Mensagem;
use App\Models\Plantao;
use App\Models\Area;
use App\Models\Funcao;
use App\Models\Nivel;
use App\Models\Medico;
use App\Models\Servico;
use App\Models\Ajustemenu;
use App\Models\Hierarquia;
use App\Models\User;
use App\Models\Tipousuario;
use App\Models\Android;
use App\Models\Link;
use Illuminate\Support\Collection;
function arrayHelper($ar, $all=null){
    /*
    $collection = collect([
        (object) [
            'banco' => 'bb'
        ],
        (object) [
            'banco' => 'itau'
        ],
        (object) [
            'banco' => 'cef'
        ],
        (object) [
            'banco' => 'bradesco'
            ]
        ]);
        */
        $r =  array(
            '0'=>'Primeira visita',
            '1'=>'Confiável',
            '2'=>'Super Confiável',
            '3'=>'Não confiável',
            '4'=>'Não visitado'
        );
        if($all==null){
            return $r[$ar];
        }
        return $r;
    }


    function getVersao(){
        return Android::where("name", "versionname")->first()->valor;
    }


    function UserPlan($idplantao){
        return Plantao::find($idplantao);
    }


    function getSundays($y,$m){
        $date = "$y-$m-01";
        $first_day = date('N',strtotime($date));
        $first_day = 7 - $first_day + 1;
        $last_day =  date('t',strtotime($date));
        $days = array();
        for($i=$first_day; $i<=$last_day; $i=$i+7 ){
            $days[] = $i;
        }
        return  $days;
    }


    function TabelaShow($tb){
        return  Ajustemenu::where("nome", $tb)->first();
    }


    function SouColih(){
        if((Auth::user()->categoria==3)||(Auth::user()->categoria==4)){
            return true;
        }else{
            return false;
        }
    }


    function NomedoNivel($n){
        return Nivel::where('nivel_id', $n)->first();
    }


    function PermissManger(){
        return Nivel::get();
    }



    function acessos($menu, $nivel, $key)
    {
        //0=ver, 1=inserir, 2=editar, 3=excluir, 4=pdf
        $nv = Nivel::find($nivel)->nivel_id;
        $sera = Hierarquia::where('menu', $menu)->first();
        $posso = explode("*", $sera->$nv);
        return $posso[$key]=="1"?true:false;
    }


    function PastaLiberada($nivel, $p){
        if($p=="A"){
            if($nivel=="12"){
                return true;
            }else{
                return false;
            }
        }
        if($p=="P"){
            if($nivel=="11"){
                return true;
            }else{
                return false;
            }
        }
    }


    function UserPlanSol($solicitante){
        $esc = Plantao::where('user_id_1', $solicitante)->orWhere('user_id_2', $solicitante)->first();
        return $esc;
    }


    function AjustemenuHelper($id){
        return Ajustemenu::find($id);
    }
    function Escalados($inicio){
        $esc = Plantao::where('inicio', $inicio)->first();
        return $esc;
    }
    function TemTrocaPlt(){
        $tem = Mudadata::where("status", "1")->get();
        return count($tem);
    }



    function Listatrocas(){
        $tem = Mudadata::where("status", "1")->get();
        return $tem;
    }


    function CapNome($nome){
        $ligatira = array(" Das ", " Dos ", " De ", " Da ", " Do ", " E ", " Em ", " Ou ", " Por ");
        $ligapoe = array(" das ", " dos ", " de ", " da ", " do ", " e ", " em ", " ou ", " por ");
        return str_replace($ligatira, $ligapoe, ucwords(strtolower($nome)));
    }



    function csvToArray($filename = '', $delimiter = ';')
    {
        if (!file_exists($filename) || !is_readable($filename))
        return false;
        $header = null;
        $data = array();
        if (($handle = fopen($filename, 'r')) !== false)
        {
            while (($row = fgetcsv($handle, 1000, $delimiter)) !== false)
            {
                if (!$header)
                $header = $row;
                else
                $data[] = array_combine($header, $row);
            }
            fclose($handle);
        }
        return $data;
    }



    function saudacao( $nome = '' ) {
        date_default_timezone_set('America/Sao_Paulo');
        $hora = date('H');
        if( $hora >= 6 && $hora <= 12 )
        return 'Bom dia' . (empty($nome) ? '' : ', ' . $nome);
        else if ( $hora > 12 && $hora <=18  )
        return 'Boa tarde' . (empty($nome) ? '' : ', ' . $nome);
        else
        return 'Boa noite' . (empty($nome) ? '' : ', ' . $nome);
    }



    function formattedMoney($value)
    {
        $formattedMoney = number_format($value, 2, ',', '.');
        return "R$ " . $formattedMoney;
    }


    function jaagendou($inicio){
        $plt = array();
        if(Plantao::where('inicio', $inicio)->exists()){
            $plt = Plantao::where('inicio', $inicio)->first();
        }
        return $plt;
    }



    function mostratooltip($id, $value){
        if($id==1)
        {
            switch ($value) {
                case 1: return "Significa que foi feita a primeira visita"; break;
                case 2: return "Significa que pode ser recomendado com segurança até certo ponto";  break;
                case 3:  return "Significa que pode ser recomendado com segurança e é bem cooperador";   break;
                case 4:  return "Significa que em algum momento deixou de ser confiável";   break;
                case 5:  return "Significa que ele(a) não foi visitado por um membro da Colih mas teve boa indicação de alguém que passou por ele e mesmo assim colaborou com nossa posição";   break;
                default:   "Precisa ser analizado";
            }
        }
    }



    function selectStatus($s){
        $opr = '<option value="">Selecione</option>';
        $opr .= '<option value="1"'; if($s==1){ $opr .= ' selected '; } $opr .= ' >Ativo</option>';
        $opr .= '<option value="0"'; if($s==0){ $opr .= ' selected '; } $opr .= ' >Inativo</option>';
        echo $opr;
    }


    function selectMedicoTipo($me){
        $confinivhelper =  arrayHelper(1, 1);
        $htm ='<option value="" >Selecione</option>';
        foreach($confinivhelper as $key=>$value){
            $htm .='<option value="'.$key.'"'; if($me==$key){ $htm .=' selected '; } $htm .='>'.$value.'</option>';
        }
        echo $htm;
    }



    function getMensagem($id){
        $mensagens = Mensagem::where(function($query) use ($id){
            $query->where('dest_id', '=', $id)
            ->orWhere('rem_id', '=', $id);
        })
        ->where('lida', '0')->get();
        return $mensagens;
    }


    function selectTipoVisita(){
        return '<option value="Zoom">Zoom</option>
        <option value="Presencial">Presencial</option>';
    }



    function getareaFac($fac){
        if($fac->area!=null){
            $areas = explode(",", $fac->area);
            return Area::whereIn('id', $areas)->get();
        }else{
            return "0";
        }
    }



    function ListaMedicos(){
        return Medico::where('status', 1)->get();
    }


    function getespecMed($med){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
        if($med->especialidade_id!=null){
            $esp = explode(",", $med->especialidade_id);
            //  fwrite($fg, print_r($esp, 1)."\n\n");
            return Especialidade::whereIn('id', $esp)->get();
        }else{
            return "0";
        }
    }



    function getespecPro($pro){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
        if($pro->area_id!=null){
            $esp = explode(",", $pro->area_id);
            //  fwrite($fg, print_r($esp, 1)."\n\n");
            return Area::whereIn('id', $esp)->get();
        }else{
            return "0";
        }
    }

        function profissoes($pro){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
        $linha = "";
        if($pro!=null){
            $esp = explode(",", $pro);
            //  fwrite($fg, print_r($esp, 1)."\n\n");
            $areas = Servico::whereIn("id", $esp)->get();
            foreach($areas as $area){
            $linha .=$area->name.', ';

            }
            $linha = rtrim($linha, ", ");
            return $linha;

        }else{
            return "0";
        }
    }

           function profissoesAll(){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
        $linha = "";


            $areas = Area::where("status", 1)->get();
            foreach($areas as $area){
            $linha .=$area->nome.', ';

            }
            $linha = rtrim($linha, ", ");
            return $linha;


    }

           function profissoesAllId(){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
        $linha = "";


            $areas = Area::where("status", 1)->get();
            foreach($areas as $area){
            $linha .=$area->id.', ';

            }
            $linha = rtrim($linha, ", ");
            return $linha;


    }


    function nomesobrenome($rem){
        $r = explode(" ", $rem);
        return $r[0]." ".@$r[1];
    }



    function translatedMonth($month)
    {
        switch ($month) {
            case '01': $translatedMonth = "Janeiro";  break;
            case '02': $translatedMonth = "Fevereiro";  break;
            case '03': $translatedMonth = "Março";  break;
            case '04':  $translatedMonth = "Abril";  break;
            case '05':  $translatedMonth = "Maio";  break;
            case '06':  $translatedMonth = "Junho";  break;
            case '07':   $translatedMonth = "Julho";   break;
            case '08':    $translatedMonth = "Agosto";   break;
            case '09':   $translatedMonth = "Setembro";  break;
            case '10':   $translatedMonth = "Outubro";  break;
            case '11':   $translatedMonth = "Novembro";   break;
            case '12':    $translatedMonth = "Dezembro";  break;
        }
        return $translatedMonth;
    }



    function getDirContents($dir){
        $results = array();
        $files = scandir($dir);
        foreach($files as $key => $value){
            if(!is_dir($dir. DIRECTORY_SEPARATOR .$value)){
                $results[] = $value;
            } else if(is_dir($dir. DIRECTORY_SEPARATOR .$value)) {
                $results[] = $value;
                getDirContents($dir. DIRECTORY_SEPARATOR .$value);
            }
        }
    }



    function scan($dir){
        $files = array();
        if(file_exists($dir)){
            foreach(scandir($dir) as $f) {
                if(!$f || $f[0] == '.') {
                    continue; // Ignore hidden files
                }
                if(is_dir($dir . '/' . $f)) {
                    // The path is a folder
                    $files[] = array(
                        "name" => $f,
                        "type" => "folder",
                        "path" => $dir . '/' . $f,
                        "items" => scan($dir . '/' . $f) // Recursively get the contents of the folder
                    );
                }
                else {
                    // It is a file
                    $files[] = array(
                        "name" => $f,
                        "type" => "file",
                        "path" => $dir . '/' . $f,
                        "size" => filesize($dir . '/' . $f) // Gets the size of this file
                    );
                }
            }
        }
        return $files;
    }


    function Univenios($cv)
    {
        $c = explode(",", $cv);
        $cf = array();
        foreach($c as $cvn){
            $cf[]=App\Models\Convenio::where("id", $cvn)->first()->nome;
        }
        return $cf;
    }


    function Unitais($cv)
    {
        $c = explode(",", $cv);
        $cf = array();
        foreach($c as $cvn){
            $hosp = App\Models\Hospital::where("id", $cvn)->first();
            $cf[]=$hosp->nome." - ".$hosp->cidade;
        }
        return $cf;
    }



    function handle($date)
    {
        $dateDay = \Carbon\Carbon::createFromFormat('Y-m-d', $date); //\Carbon\Carbon::now();//use your date to get month and year
        $year = $dateDay->year;
        $month = $dateDay->month;
        $days = $dateDay->daysInMonth;
        $mondays=[];
        foreach (range(1, $days) as $day) {
            $date = \Carbon\Carbon::createFromDate($year, $month, $day);
            if ($date->isMonday()===true) {
                $mondays[]=($date->day);
            }
        }
        return $mondays;
    }


    function getMondaysInRange($dateFromString, $dateToString)
    {
        $dateFrom = new \DateTime($dateFromString);
        $dateTo = new \DateTime($dateToString);
        $dates = [];
        if ($dateFrom > $dateTo) {
            return $dates;
        }
        if (1 != $dateFrom->format('N')) {
            $dateFrom->modify('next monday');
        }
        while ($dateFrom <= $dateTo) {
            $dates[] = $dateFrom->format('Y-m-d');
            $dateFrom->modify('+1 week');
        }
        return $dates;
    }
    function getSundaysInRange($dateFromString, $dateToString)
    {
        $dateFrom = new \DateTime($dateFromString);
        $dateTo = new \DateTime($dateToString);
        $dates = [];
        if ($dateFrom > $dateTo) {
            return $dates;
        }
        if (1 != $dateFrom->format('N')) {
            $dateFrom->modify('next sunday');
        }
        while ($dateFrom <= $dateTo) {
            $dates[] = $dateFrom->format('Y-m-d');
            $dateFrom->modify('+1 week');
        }
        return $dates;
    }


    function GetEspecialidades(){
        return Especialidade::where('status', 1)->get();
    }


    function GravaTxt($f, $m){
        $lof = fopen("debugs/".$f, "a+");
        fwrite($lof, $m);
    }


    function   FillSelect1(){
        $retorno = "";
        $values = Area::where('status', 1)->get();
        foreach($values as $value){
            $retorno .= '<option value="'.$value->id.'" {$selected} >'.$value->nome.'</option>';
        }
        echo $retorno;
    }
    function  Myarea($id){
        echo "Enfermagem, Farmácia";
    }
    function MenosUm(){
        $menosum = "-1";
        $timestamp = time();
        if(date('D', $timestamp) === 'Mon'){
            $menosum = "";
        }
        return $menosum;
    }
    function Plantonistasdasemana(){
        $plts_ids =  Plantao::where('inicio', date('Y-m-d',strtotime(MenosUm().' Monday')))->first();
        $plt1 = User::find($plts_ids->user_id_1);
        $plt2 = User::find($plts_ids->user_id_2);
        echo $plt1->nome. " <br> ".$plt2->nome;
    }
    function PlantaoGeral(){
        $plantaogeral  = Plantao::where('inicio', date('Y-m-d',strtotime(MenosUm().' Monday')))->first();
        if($plantaogeral){
            return $plantaogeral;
        }
        $plantaogeral = new stdClass();
        $plantaogeral->id = 0;
        $plantaogeral->inicio = 'Sem Escala';
        $plantaogeral->termino = 'Sem Escala';
        return $plantaogeral;
    }
    function plantaolsGeral(){
        $plantaogeral  = Plantao::where('inicio', '>=', date('Y-m-d',strtotime(MenosUm().' Monday')))->OrderBy('inicio', "ASC")->get();
        if($plantaogeral){
            return $plantaogeral;
        }
        $plantaogeral = new stdClass();
        $plantaogeral->id = 0;
        $plantaogeral->inicio = 'Sem Escala';
        $plantaogeral->termino = 'Sem Escala';
        return $plantaogeral;
    }
    function AreaMy($area){
        if($area!=""){
            return Area::whereIn('id', explode(",", $area))->get();
        }else{
            return "" ;
        }
    }
    function Tiposusuarios(){
        return Tipousuario::where('status', 1)->get();
    }
    function MeuProximoPlantao(){
        $plt = Plantao::where('inicio', ">", date('Y-m-d'))->first();
        if($plt){
            return $plt;
        }
        $x = new stdClass();
        $x->inicio = 'Sem Escala';
        $x->termino = 'Sem Escala';
        return $x;
    }

         function selSelectLabel($textolabel, $clasel, $namesel, $arropt, $selected=""){
        $sel = '  <div class="form-group col-md-8">
        <label class="control-label">'.$textolabel.'</label>
        <select class="form-control form-select form-select-lg mb-3 '.$clasel.'" style="height:35px;" name="'.$namesel.'" aria-label=".form-select-lg">';
        if($selected==""){
            $sel .=' <option value="" selected>Selecione</option>';
        }
        foreach($arropt as $optval=>$optxt){
            if($optval==$selected){
               $ssel="selected";
            }else{
               $ssel="";
            }
            $sel .= '<option value="'.$optval.'" '.$ssel.'>'.$optxt.'</option>';
        }
        $sel .='</select></div>';
        echo $sel;
     }

       function servicos($pro){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
        $linha = "";
        if($pro!=null){
            $esp = explode(",", $pro);
            //  fwrite($fg, print_r($esp, 1)."\n\n");
            $areas = Servico::whereIn("id", $esp)->get();
            foreach($areas as $area){
            $linha .=$area->name.', ';

            }
            $linha = rtrim($linha, ", ");
            return $linha;

        }else{
            return "0";
        }
    }

           function servcads($pro){
           if($pro=="admin"){
             return Servico::get();
           }else if($pro=="sta"){
             return Servico::where("status", "1")->get();
           }else{
            return Servico::whereIn("id", explode(",", $pro))->get();
           }

    }

         function allservicos($pro, $st=null){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
       if($st==null){
        $servicos = Servico::get();
       }else{
       $servicos = Servico::where("status", 1)->get();
       }
            $linha = [];


            foreach($servicos as $servico){
             $linha["id"][]=$servico->id;
            $linha["name"][]=$servico->name;

            }
            return $linha;

    }

    function rand_color() {
    return sprintf('#%06X', mt_rand(0, 0xFFFFFF));
}

function setstatuscolor($cor){
$status = array('yellow'=>"Agendado", 'green'=>"Concluído", 'red'=>"Cancelado", 'blue'=>"Adiado", 'purple'=>"Indefinido");
return $status[$cor];
}

function parsecolor($cor){
$status = array('yellow'=>"	#FF8300", 'green'=>"#006400", 'red'=>"#8b0000", 'blue'=>"#131FC7", 'purple'=>"#800EA2");
return $status[$cor];
}

function daysofweek(){
$days = array('sunday', 'monday', 'tuesday', 'wednesday','thursday','friday', 'saturday');
return $days;
}

function daysofweekcheck($d){
$days = array('sunday'=>'sunday', 'monday'=>'monday', 'tuesday'=>'tuesday', 'wednesday'=>'wednesday','thursday'=>'thursday','friday'=>'friday', 'saturday'=>'saturday');
return $days[$d];
}

function daysofweektopt($d){
$days = array('sunday'=>"Domingo", 'monday'=>"Segunda", 'tuesday'=>"Terça", 'wednesday'=>'Quarta','thursday'=>'Quinta','friday'=>'Sexta', 'saturday'=>'Sábado');
return $days[$d];
}

function getWeekday($date) {
    return date('w', strtotime($date));
}

  function servicosAll(){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
        $linha = "";


            $areas = Servico::where("status", 1)->get();
            foreach($areas as $area){
            $linha .=$area->name.', ';

            }
            $linha = rtrim($linha, ", ");
            return $linha;


    }

           function servicosAllId(){
        // $fg = fopen("../storage/pastadelogs/getespmed.txt", "a+");
        $linha = "";


            $areas = Servico::where("status", 1)->get();
            foreach($areas as $area){
            $linha .=$area->id.', ';

            }
            $linha = rtrim($linha, ", ");
            return $linha;


    }


