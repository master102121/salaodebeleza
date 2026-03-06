<?php

namespace App\Models;

use App\Models\Medico;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Plantonista extends Model
{
    protected $guarded = [];

          use Notifiable;
    protected $fillable = [
        'id', 'inicio', 'fim', 'indaiatuba_1', 'indaiatuba_2', 'salto_1', 'salto_2', 'itu_1', 'itu_2', 'created_at', 'updated_at', 'status', 'user_id',

    ];

    public function indaiatuba_one()
    {
        return $this->belongsTo(User::class, "indaiatuba_1", "id");
    }

      public function indaiatuba_two()
    {
        return $this->belongsTo(User::class, "indaiatuba_2", "id");
    }


        public function salto_one()
    {
        return $this->belongsTo(User::class, "salto_1", "id");
    }

      public function salto_two()
    {
        return $this->belongsTo(User::class, "salto_2", "id");
    }

        public function itu_one()
    {
        return $this->belongsTo(User::class, "itu_1", "id");
    }

      public function itu_two()
    {
        return $this->belongsTo(User::class, "itu_2", "id");
    }


    public function medico()
    {
        return $this->hasMany(Medico::class);
        //   return $this->hasMany(Medico::class)->selectRaw('especialidade_id, count(*) as num')->groupBy('especialidade_id');
    }

    public function getSectionsCountAttribute()
{
    return $this->contaMed->first()?$this->contaMed->count():0;
}

}
