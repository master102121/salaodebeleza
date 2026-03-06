<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AdministradoresTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('administradores')->delete();
        
        \DB::table('administradores')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => '1',
                'valor' => '1',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:16:26',
                'updated_at' => NULL,
                'status' => 1,
                'deleted_at' => NULL,
                'alias' => 'admin',
            ),
        ));
        
        
    }
}