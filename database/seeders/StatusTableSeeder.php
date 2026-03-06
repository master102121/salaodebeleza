<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class StatusTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('status')->delete();
        
        \DB::table('status')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'ongoing',
                'class' => 'badge badge-pill badge-primary',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'stopped',
                'class' => 'badge badge-pill badge-secondary',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'completed',
                'class' => 'badge badge-pill badge-success',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'expired',
                'class' => 'badge badge-pill badge-warning',
            ),
        ));
        
        
    }
}