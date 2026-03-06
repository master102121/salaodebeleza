<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class CoresdosistemasTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('coresdosistemas')->delete();
        
        \DB::table('coresdosistemas')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'bg-gradient-primary',
                'color' => '#000000',
                'default' => '#df4e92',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:10:32',
                'updated_at' => '2023-05-24 17:30:14',
                'status' => 1,
                'deleted_at' => NULL,
                'alias' => '',
                'onlyadmins' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'background-color',
                'color' => '#fcb9ed',
                'default' => '#fcb9ed',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:10:32',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'deleted_at' => NULL,
                'alias' => '',
                'onlyadmins' => 1,
            ),
        ));
        
        
    }
}