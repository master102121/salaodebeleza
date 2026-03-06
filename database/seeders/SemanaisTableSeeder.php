<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SemanaisTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('semanais')->delete();
        
        \DB::table('semanais')->insert(array (
            0 => 
            array (
                'id' => 1,
                'segunda' => '',
                'terca' => '4,5,6,7,8,9,10,11',
                'quarta' => '4,5,6,7,8,9,10,11',
                'quinta' => '4,5,6,7,8,9,10,11',
                'sexta' => '4,5,6,7,8,9,10,11',
                'sabado' => '4,5,6,7,8,9,10,11',
                'domingo' => '4,5,6',
                'user_id' => 2,
                'created_at' => '2023-06-02 13:03:38',
                'updated_at' => NULL,
                'status' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'segunda' => '',
                'terca' => '4,5,6,7,8,9,10,11',
                'quarta' => '4,5,6,7,8,9,10,11',
                'quinta' => '4,5,6,7,8,9,10,11',
                'sexta' => '4,5,6,7,8,9,10,11',
                'sabado' => '4,5,6,7,8,9,10,11',
                'domingo' => '4,5,6',
                'user_id' => 3,
                'created_at' => '2023-06-02 13:03:38',
                'updated_at' => NULL,
                'status' => 1,
            ),
        ));
        
        
    }
}