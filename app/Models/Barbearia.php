<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Area;

class Barbearia extends Model
{
    use HasFactory;
         protected $guarded = [];

    public function areas()
  {
    return $this->belongsToMany(Area :: class);
  }

  public function hospital()
  {
    return $this->hasMany(Hospital :: class);
  }

   public function LangCommissionChoiceSingle()
    {
        return $this->morphOne(LangName::class, 'dependable')->where([['locale', '=', \App::getLocale()]]);
    }

    public static function areaondeatua($ar){
    try{
    $retorno = "";
    $areas = Area::whereIn("id", explode(",", $ar))->get();
    foreach($areas as $area){
    $retorno .= $area->name." ";
    }
    return $retorno;
    }catch(\Throwable $t){
    return "Nenhuma área cadastrada";

    }



    }

   public static function GetDetails($merchant_id, $phone)
    {
        return Facilitador::where([['merchant_id', '=', $merchant_id], ['phoneNumber', '=', $phone]])->first();
    }

      public function getStatusLabelAttribute()
    {


        switch ($this->status) {
            case '0':
                return '<span class="badge badge-danger">Inactive</span>';
                break;

            case '1':
                return '<span class="badge badge-success">Active</span>';
                break;

            case '2':
                return '<span class="badge badge-warning">Pending</span>';
                break;

            default:
                return '<span class="badge badge-primary">Status:'.$this->status.'</span>';
                break;
        }
    }
}
