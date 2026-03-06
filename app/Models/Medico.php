<?php

namespace App\Models;
use App\Models\Convenio;
use App\Models\Especialidade;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Medico extends Model
{
  protected $guarded = [];

  use Notifiable;



  protected $fillable = [
    'id', 'user_id', 'type', 'especialidade_id', 'type', 'nome', 'value', 'created_at', 'updated_at', 'hospital_ids', 'convenios_ids', 'status', 'telefone1', 'telefone2', 'sus', 'gender', 'descricao', 'datavisita', 'user1_id', 'user2_id', 'agenda', 'cidade', 'rua', 'state', 'bairro', 'numero', 'ibge', 'cep', 'dataagenda', 'hora'

  ];

  public function user()
  {
    return $this->belongsTo(User::class);
  }

  public function visitadopor_1()
  {
    return $this->belongsTo(User::class, 'user1_id', 'id');

  }

    public function visitadopor_2()
  {
    return $this->belongsTo(User::class, 'user2_id', 'id');

  }

  public static function categorias($especialidade_id)
  {
    $areas =  explode(",", $especialidade_id);
    $collection = \App\Models\Especialidade::whereIn("id", $areas)->get();

   return $collection->implode('nome', ', ');


  }





}
