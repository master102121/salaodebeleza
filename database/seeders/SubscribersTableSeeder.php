<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SubscribersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('subscribers')->delete();
        
        \DB::table('subscribers')->insert(array (
            0 => 
            array (
                'id' => 6,
                'email' => 'artesdazena@gmail.com',
                'codigo' => 178206,
                'created_at' => '2023-05-30 19:03:01',
                'updated_at' => '2023-05-30 19:03:01',
            ),
        ));
        
        
    }
}