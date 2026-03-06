<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class PlantonistasTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('plantonistas')->delete();
        
        \DB::table('plantonistas')->insert(array (
            0 => 
            array (
                'id' => 1,
                'inicio' => '2022-06-06',
                'fim' => '2022-06-12',
                'indaiatuba_1' => 17,
                'indaiatuba_2' => 18,
                'salto_1' => 19,
                'salto_2' => 20,
                'itu_1' => 21,
                'itu_2' => 22,
                'created_at' => '2022-06-04 15:35:25',
                'updated_at' => '2022-06-07 17:27:45',
                'status' => 1,
                'user_id' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'inicio' => '2022-06-13',
                'fim' => '2022-06-19',
                'indaiatuba_1' => 1,
                'indaiatuba_2' => 18,
                'salto_1' => 19,
                'salto_2' => 19,
                'itu_1' => 3,
                'itu_2' => 23,
                'created_at' => '2022-06-07 16:51:10',
                'updated_at' => '2022-06-07 16:51:10',
                'status' => 1,
                'user_id' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'inicio' => '2022-06-20',
                'fim' => '2022-06-26',
                'indaiatuba_1' => 1,
                'indaiatuba_2' => 18,
                'salto_1' => 19,
                'salto_2' => 19,
                'itu_1' => 23,
                'itu_2' => 3,
                'created_at' => '2022-06-21 19:26:31',
                'updated_at' => '2022-06-21 19:26:31',
                'status' => 1,
                'user_id' => 1,
            ),
        ));
        
        
    }
}