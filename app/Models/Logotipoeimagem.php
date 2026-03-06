<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Logotipoeimagem extends Model
{
    use HasFactory;

       protected $guarded = [];

    public function atuacao()
    {
        return $this->hasMany(Medico::class);
        //   return $this->hasMany(Medico::class)->selectRaw('especialidade_id, count(*) as num')->groupBy('especialidade_id');
    }

    public function getAtuacaoAttribute()
{
    return $this->contaMed->first()?$this->contaMed->count():0;
}

}
