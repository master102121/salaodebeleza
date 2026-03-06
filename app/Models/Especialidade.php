<?php

namespace App\Models;

use App\Models\Medico;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Especialidade extends Model
{
    protected $guarded = [];

          use Notifiable;
    protected $fillable = [
        'id', 'user_id', 'nome', 'created_at', 'updated_at', 'imagem', 'descricao', 'status'

    ];

    public function user()
    {
        return $this->belongsTo(User::class);
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
