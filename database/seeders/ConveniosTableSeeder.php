<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ConveniosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('convenios')->delete();
        
        \DB::table('convenios')->insert(array (
            0 => 
            array (
                'id' => 1,
                'nome' => 'Unimed',
                'user_id' => 1,
                'obs' => NULL,
                'created_at' => '2022-06-10 15:59:39',
                'updated_at' => '2022-06-10 15:59:39',
                'status' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'nome' => 'Bradesco',
                'user_id' => 1,
                'obs' => NULL,
                'created_at' => '2022-06-10 15:59:39',
                'updated_at' => '2022-06-10 15:59:39',
                'status' => 1,
            ),
        ));
        
        
    }
}