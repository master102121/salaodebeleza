<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agendamento extends Model
{
      use HasFactory;

       protected $guarded = [];

    public function profissional()
    {
        return $this->belongsTo(User::class, 'id_profissional');
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
