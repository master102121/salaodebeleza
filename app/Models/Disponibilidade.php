<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Disponibilidade extends Model
{
      use HasFactory;

 protected $table = "disponible_days";
       protected $guarded = [];

    public function profissional()
    {
        return $this->belongsTo(User::class, 'profissional_id');
    }

    public function cliente()
    {
        return $this->belongsTo(User::class, 'id_cliente');
    }

        public function servico()
    {
        return $this->belongsTo(Servico::class, 'servico_id');
    }
}
