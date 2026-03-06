<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Link;
use Carbon\Carbon;

class ApiController extends Controller
{
    // 1. Listar Categorias (Para a Grid do Flutter)
    public function getCategories()
    {
        // Buscamos os dados (imagem_url contém "/storage/categorias/pRou...")
        $dados = DB::table('categories')->where('status', 1)->select('id', 'name', 'imagem_url as image')->get();

        foreach ($dados as $item) {
            // NÃO use basename(), pois ele remove o "/storage/categorias/"
            // Se o banco já tem o caminho começando com /, deixamos como está.
            // O Flutter vai receber "/storage/categorias/nome.jpg"
            $item->image = $item->image;
        }

        return response()->json($dados);
    }
    public function getSpecialists()
    {
        $profs = User::whereNotNull('area_id')->where('status', 1)->get();

        $data = [];
        foreach ($profs as $p) {
            $nomeImagem = $p->imagem ? basename($p->imagem) : 'user.jpg';
            $data[] = [
                'id' => $p->id,
                'name' => $p->name,
                'image' => '/img/' . $nomeImagem, // Ajustado para sua pasta 'img'
            ];
        }
        return response()->json($data);
    }
    // 3. Login Mobile
    public function loginMobile(Request $request)
    {
        $link = Link::find(1);
        $user = User::where('email', $request->email)->first();

        if (!$user) {
            return response()->json(['result' => '0', 'msg' => 'E-mail não encontrado'], 404);
        }

        if (Hash::check($request->password, $user->password)) {
            return response()->json([
                'result' => '1',
                'status' => 'liberado',
                'idlogin' => $user->id,
                'nome' => $user->name,
                'email' => $user->email,
                'imagem' => $user->imagem ? '/images/' . $user->imagem : '/images/user.jpg',
                'token' => $user->remember_token,
                'json' => $user,
            ]);
        }

        return response()->json(['result' => '0', 'msg' => 'Senha incorreta'], 401);
    }

    // 4. Criar Agendamento (Versão única e segura)
    public function storeBooking(Request $request)
    {
        try {
            $id = DB::table('bookings')->insertGetId([
                'nome' => $request->nome_cliente,
                'user_id' => $request->user_id,
                'dia' => $request->dia,
                'periodo' => $request->periodo,
                'cliente' => $request->cliente_id,
                'servicos' => $request->servicos,
                'valor' => $request->valor,
                'profissional_id' => $request->profissional_id,
                'status' => 'agendado',
                'created_at' => now(),
            ]);

            return response()->json(['result' => '1', 'msg' => 'Agendado com sucesso!', 'id' => $id]);
        } catch (\Exception $e) {
            return response()->json(['result' => '0', 'msg' => $e->getMessage()], 500);
        }
    }

    // 5. Histórico de Agendamentos
    public function getUserBookings($cliente_id)
    {
        $agendamentos = DB::table('bookings')->where('cliente', $cliente_id)->orderBy('id', 'desc')->get();

        return response()->json($agendamentos);
    }

public function getServiceHighlights()
{
    return response()->json(
        DB::table('servicos') // Nome correto da tabela
            ->where('status', 1)
            ->select('id', 'name', 'std_price as price') // Alias para manter compatibilidade com o Flutter
            ->limit(5)
            ->inRandomOrder()
            ->get()
    );
}

// Rota para serviços por categoria
public function getServicesByCategory($id)
{
    // Nota: Verifique se você tem a coluna category_id na tabela servicos. 
    // No seu SQL enviado ela não aparece, talvez precise adicionar!
    return response()->json(
        DB::table('servicos')
            ->where('category_id', $id) // Verifique se esta coluna existe
            ->where('status', 1)
            ->select('id', 'name', 'std_price as price')
            ->get()
    );
}
}
