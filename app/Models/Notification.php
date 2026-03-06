<?php

namespace App\Models;
use App\Models\Convenio;
use App\Models\Especialidade;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Notification extends Model
{
  protected $guarded = [];

  use Notifiable;




  public function user()
  {
    return $this->belongsTo(User::class);
  }

    public function sender()
  {
    return $this->belongsTo(User::class, "sended_by");
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
