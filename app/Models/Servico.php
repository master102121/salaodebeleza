<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Servico extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
  protected $guarded = [];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
protected $casts = [
    'std_price' => 'float',
    'liberado' => 'boolean',
    'updated_at' => 'datetime', // Isso também ajuda com o erro de data que tivemos
];
}
