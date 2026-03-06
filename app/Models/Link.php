<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Link extends Model
{
protected $guarded = [];
protected $table = "dadoslinks";


    public function categoria()
    {
        return $this->belongsTo(Categoria::class, 'categoria_id');
    }

    public function turmas(){
        return $this->hasMany(Turma::class, 'curso_id', 'id');
    }

    public function conteudo(){
        return $this->hasMany(Conteudo::class, 'curso_id', 'id');
    }
}
