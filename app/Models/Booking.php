<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Booking extends Model
{
    protected $guarded = [];

    public function profissional()
    {
        return $this->belongsTo(User::class, "profissional_id", "id");
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
