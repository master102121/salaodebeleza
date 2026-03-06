<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategoria extends Model
{
    use HasFactory;

       protected $guarded = [];
       protected $table = "subcategory";

    public function categoria()
    {
        return $this->belongsTo(Categoria::class, "category_id", "id");
        //   return $this->hasMany(Medico::class)->selectRaw('especialidade_id, count(*) as num')->groupBy('especialidade_id');
    }

    public function getAtuacaoAttribute()
{
    return $this->contaMed->first()?$this->contaMed->count():0;
}

}
