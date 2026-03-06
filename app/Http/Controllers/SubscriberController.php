<?php
namespace App\Http\Controllers;
use App\Mail\Subscribe;
use App\Models\Subscriber;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
class SubscriberController extends Controller
{
    public function subscribe(Request $request){
        $validator = Validator::make($request->all(),[
            'email' => 'required|email|unique:subscribers'
        ]);
        if($validator->fails()){
            return new JsonResponse(
                [
                    'success' => false,
                    'message' => $validator->errors()
                ], 422
            );
        }
        $email = $request->all()['email'];
        $codigo = rand(176542,999999);



        $subscriber = Subscriber::create([
            'email' => $email,
            'codigo' => $codigo
        ]);



        if($subscriber){
            Mail::to($email)->send(new Subscribe($email, $codigo));
            return new JsonResponse(
                [
                    'success' => true,
                    'message' => "Obrigado por estar conosco, use o numero aqui fornecido"
                ], 200
            );
        }
    }


    public function urlemailrecupera(Request $request){
        $email = $request->all()['email'];
        $codigo = rand(176542,999999);
        $user = User::where('email', $email);
        if($user->exists()){

            $user = $user->first();
            $user->codigo = $codigo;
            $user->save();

            Mail::to($email)->send(new Subscribe($email, $codigo));
            return response()->json([
                "result"=>"1",
                "status"=>"ok",
                "msg"=>"Você recebeu um código de confirmação por email - use ele no quadro indicado",
                "json" => []
            ]);
        }else{
            return response()->json([
                "result"=>"0",
                "status"=>"ok",
                "msg"=>"O email que você informou não se encontra em nossos registros!!!",
                "json" => []
            ]);
        }
    }



      public function urlenviacodigo(Request $request){
        $email = $request->all()['email'];
        $codigo = $request->all()['codigo'];
        $user = User::where([['email', $email], ['codigo', $codigo]]);
        if($user->exists()){
            return response()->json([
                "result"=>"1",
                "status"=>"ok",
                "msg"=>"Muito bem, agora você pode informar sua nova senha",
                "json" => []
            ]);
        }else{
            return response()->json([
                "result"=>"0",
                "status"=>"ok",
                "msg"=>"O codigo que voce informou não esta correto!!!",
                "json" => []
            ]);
        }
    }

}
