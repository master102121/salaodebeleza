<?php
namespace App\Http\Controllers;
use App\Models\Especialidade;
use App\Models\Medico;
use App\Models\Notification;
use App\Models\Android;
use App\Models\User;
use Illuminate\Http\Request;
use Auth;
use OneSignal;
use Illuminate\Support\Facades\Hash;
use Notifications\OneSignal as OneSignalPush;
use App\Services\NotificationService;

class OneSignalsController extends Controller
{
    /*
    public function __construct(Request $request)
    {
        if(!isset($request->mobile)){
            $this->middleware(['auth', 'verified']);
        }
    }*/



    public function Marcarcomolida($id){
        try{
            $ms = Mensagem::findOrFail($id);
            $ms->datalida = $ms->datalida==null?date("Y-m-d H:i:s"):$ms->datalida;
            $ms->lida = 1;
            $ms->save();
            return 'sucesso';
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }



    public function Marcartodaslidas(Request $r){
        try{
            $mss = explode(",", $r->dados);
            foreach($mss as $id){
                $ms = Mensagem::findOrFail($id);
                $ms->datalida = $ms->datalida==null?date("Y-m-d H:i:s"):$ms->datalida;
                $ms->lida = 1;
                $ms->save();
            }
            return 'sucesso';
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }



    public function presend($id){
        $destinatario = User::find($id);
        $assuntos = Temapush::where("status", 1)->get();
        return view('usuarios.presend', compact('destinatario','assuntos'));
    }




    public function SendOneSignal(Request $request){
        $retorno = $this->PushcomFirebase($request->userOneSignalId,"bigimage", "Novo ALerta", $request->message);
        return back()->with('success', print_r($retorno, 1));
    }



    public function sendMessageOne(Request $request){
        $content = array(
            "en" => 'Testing Message'
        );
        $fields = array(
            'app_id' => Android::where('name', 'onesignalkey')->first()->valor, //'e9327e95-695b-4820-a4df-5f7caed01fff', // $request->userOneSignalId,
            'included_segments' => $request->userOneSignalId, //array('All'),
            'data' => array("foo" => "bar"),
            'large_icon' =>"ic_launcher_round.png",
            'contents' => $content
        );
        $fields = json_encode($fields);
        // dd($fields);
        //print("\nJSON sent:\n");
        //print($fields);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json; charset=utf-8',
        'Authorization: Basic ZjFiNTViNzUtZmY5OC00OWRiLWJmZTctMzIzYmFiMWI3MzA3'));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }



    public function index(Request $request)
    {
        //
    }



    public function storeEspecialidade(EspecialidadeRequest $request)
    {
        /*
        $especialidade = new Especialidade;
        $especialidade->user_id = auth()->user()->id;
        $especialidade->nome = $request->name;
        $especialidade->save();
        return redirect()->back()->with('success', 'especialidade adicionada!');
        */
    }



    public function deleteMedico(Medico $medico)
    {
        // $medico->delete();
        // return redirect()->back()->with('success', 'Médico excluído!');
    }



    public function PushcomOneSignalAgenda($dados)
    {
        $id=1;
        $ff = fopen("../storage/pastadelogs/responseONE.txt", "a+");
        $usersends = User::where(function($query) use ($id){
            $query->where('categoria', '=', $id)
            ->orWhere('categoria', '=', 2);
        })->where('liberado', 1)->get();
        fwrite($ff, "\n Userssends \n".print_r($usersends, 1)."\n\n");
        $usersId = array();
        foreach($usersends as $usersend)
        {
            $usersId[] = $usersend->Onesignal_device_id;
        }
        $especia = array();
        foreach(getespecMed($dados) as $spe)
        {
            $especia[] = $spe->nome;
        }
        $especia = implode(",", $especia);
        $data = [ "especialidade" => $especia??"Não informado",
        "doutor" => $dados->nome,
        "dia" => date("d/m/Y", strtotime($dados->datavisita)),
        "hora" => $dados->hora,
        "visita_id" => $dados->visita_id,
        "agenda" => "som1",
        "cidade" => $dados->cidade??"Não informado",
        "id" => $dados->id,
        "phone" => $dados->telefone1,
        "endereco" => $dados->rua.", ".$dados->numero.", ".$dados->cidade,
        "details" => "",
        "alvo" => "1"];
        //fwrite($ff, print_r($data, 1)."\n\nabaixo=resoponse\n\n");
        $assunto = "Nova Visita";
        $response =  OneSignalPush::sendNotificationToUser( $assunto,
        $usersId,
        $url = null,
        $data,
        $buttons = null,
        $schedule = null
    );
    // fwrite($ff, print_r($response, 1));
    return print_r($response, 1);
}



public function PushcomOneSignal(Request $request){
    $usersend= User::find($request->id);
    $userId = $usersend->Onesignal_device_id;
    $type = "bigtext"; //$request->type;
    $title = "Nova Mensagem"; //$request->title;
    $message = $request->message;
    if($request->assunto!="outro0")
    {
        if($request->assunto=="0")
        {
            $assunto = "Novo alerta";
        }
        else
        {
            $assunto = $request->assunto;
        }
    }
    else
    {
        $assunto = $request->assunto_alter;
    }
    $data = [
        'tipo' => "1",
        'title' => $assunto,
        'mensagem' => "222222",
        'data' => "1222222",
        'produto' => 'EPO'
    ];
    $response =  OneSignalPush::sendNotificationToUser(
        $assunto,
        $userId,
        $url = null,
        $data,
        $buttons = null,
        $schedule = null
    );
    $contents = (string) $response->getBody();
    dd($contents);
}


public function sendforonlyoneuser(Request $request, NotificationService $notificationService)
{
    $request->validate([
        'userId'  => 'required|exists:users,id',
        'message' => 'required|string|min:3',
    ]);

    $user = User::findOrFail($request->userId);
    
    // Chamamos o serviço centralizado
    $result = $notificationService->sendPush($user, $request->message, [
        'title' => 'Novo Agendamento',
        'cidade' => $user->cidade ?? 'Não informado'
    ]);

    if (!$result['success']) {
        return back()->with('warning', $result['error'])->withInput();
    }

    return back()->with('success', "Notificação enviada com sucesso!");
}


public function PushcomFirebase(Request $request){
    $token = $request->token;
    $type = "bigtext"; //$request->type;
    $title = "Nova Mensagem"; //$request->title;
    $message = $request->message;
    $ch=curl_init("https://fcm.googleapis.com/fcm/send");
    $header=array("Content-Type:application/json","Authorization: key=AAAAc2nEeEU:APA91bGghN-RKWlsRGxK5UKnG-dhdT3P3AUDuWU_upYnAfy2aZRPdJl1vmwGUzFfyyFgQj-Il9FEYXPN6eZ33LaBEhoS0Jn3svMlBbqoctbWodJE8tirN4z_D821oBkXs6l9ug52jz3H");
    if($token=="")
    {
        if($type=="bigtext")
        {
            $data=json_encode(array("to"=>"/topics/allDevices","data"=>array(
                "title"=>$title,
                "message"=>$message,
                "not_type"=>"bigtext",
                "extra_data"=>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book")));
            }
            if($type=="bigimage")
            {
                $data=json_encode(array("to"=>"/topics/allDevices","data"=>array("title"=>$title,"message"=>$message,"not_type"=>"bigimage","extra_data"=>"https://i.picsum.photos/id/721/200/300.jpg?hmac=6g_vLTUju_TGWN7cMKTjZgzqps-JjmHIS0KSuFsgVyc")));
            }
            if($type=="bigimage_withoutsideicon")
            {
                $data=json_encode(array("to"=>"/topics/allDevices","data"=>array("title"=>$title,"message"=>$message,"not_type"=>"bigimage_withoutsideicon","extra_data"=>"https://i.picsum.photos/id/721/200/300.jpg?hmac=6g_vLTUju_TGWN7cMKTjZgzqps-JjmHIS0KSuFsgVyc")));
            }
            if($type=="inbox_style")
            {
                $array_message=array("sundar : Hi How Are You?","Satya: I am Fine ","sundar : Are You Ok?");
                $json_message=json_encode($array_message);
                $data=json_encode(array("to"=>"/topics/allDevices","data"=>array("title"=>$title,"message"=>$message,"not_type"=>"inbox_style","extra_data"=>$json_message)));
            }
            if($type=="message_style")
            {
                $data=json_encode(array("to"=>"/topics/allDevices","data"=>array("title"=>$title,"message"=>$message,"not_type"=>"message_style","extra_data"=>"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")));
            }
        }
        else if(is_array($token))
        {
            $data=json_encode(array("registation_ids"=>array($token),"data"=>array("title"=>$title,"message"=>$message)));
        }
        else
        {
            $data=json_encode(array("to"=>$token,"data"=>array("title"=>$title,"message"=>$message)));
        }
        //now let's see data message
        curl_setopt($ch,CURLOPT_HTTPHEADER,$header);
        curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);
        curl_setopt($ch,CURLOPT_POST,1);
        curl_setopt($ch,CURLOPT_POSTFIELDS,$data);
        curl_exec($ch);
        return back()->with('success', "Mensagem enviada com sucesso!");//print_r($retorno, 1)
    }
}
