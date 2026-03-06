<?php

namespace App\Models;

use App\Models\Appointment;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Service extends Model
{
    use SoftDeletes;

    protected $guard = [];

    public static function boot()
    {
        parent::boot();

        self::deleting(function (Doctor $doctor) {
            foreach ($doctor->appointments as $appointment) {
                $appointment->delete();
            }
        });
    }

    /**
     * Get the doctor's appointments.
     */
    public function appointments()
    {
        return $this->hasMany(Appointment::class);
    }

     public function services()
    {
        return $this->belongsTo(Service::class, 'service_id');
    }

      public function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
