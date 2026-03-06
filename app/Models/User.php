<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Get the user's full name.
     *
     * @return string
     */
    public function getFullNameAttribute()
    {
        if (is_null($this->last_name)) {
            return "{$this->name}";
        }

        return "{$this->name} {$this->last_name}";
    }



    public function atuacao()
    {
        return $this->hasMany(Medico::class);
        //   return $this->hasMany(Medico::class)->selectRaw('especialidade_id, count(*) as num')->groupBy('especialidade_id');
    }

    public static function ondeatua($idarea)
{
    return \App\Models\Area::find($idarea);
}


   public static function profissao($idarea)
{
$ids = explode(",", $idarea);


    return \App\Models\Area::whereIn('id', $ids)->get();
}

   public static function servicos($idarea)
{
$ids = explode(",", $idarea);


    return \App\Models\Servico::whereIn('id', $ids)->get();
}

/*
    public function setPasswordAttribute($value)
    {
        $this->attributes['password'] = bcrypt($value);
    }
*/
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
                return '<span class="badge badge-danger">Inativo</span>';
                break;

            case '1':
                return '<span class="badge badge-success">Ativo</span>';
                break;

            case '2':
                return '<span class="badge badge-warning">Pendente</span>';
                break;

            default:
                return '<span class="badge badge-primary">Status:'.$this->status.'</span>';
                break;
        }
    }
}
