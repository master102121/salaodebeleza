<?php

namespace App\Events;

use Illuminate\Queue\SerializesModels;

class HospitalUpdatedEvent
{
    use SerializesModels;

    public $hospital;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($hospital)
    {
        $this->hospital = $hospital;
    }
}
