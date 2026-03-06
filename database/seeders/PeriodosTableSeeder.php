<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class PeriodosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('periodos')->delete();
        
        \DB::table('periodos')->insert(array (
            0 => 
            array (
                'id' => 1,
                'position' => 1,
                'inicio' => '06h00',
                'fim' => '07h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:43:39',
                'updated_at' => NULL,
                'status' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'position' => 2,
                'inicio' => '07h00',
                'fim' => '08h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'position' => 3,
                'inicio' => '08h00',
                'fim' => '09h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'position' => 4,
                'inicio' => '09h00',
                'fim' => '10h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:43:39',
                'updated_at' => NULL,
                'status' => 1,
            ),
            4 => 
            array (
                'id' => 5,
                'position' => 5,
                'inicio' => '10h00',
                'fim' => '11h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            5 => 
            array (
                'id' => 6,
                'position' => 6,
                'inicio' => '11h00',
                'fim' => '12h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            6 => 
            array (
                'id' => 7,
                'position' => 7,
                'inicio' => '12h00',
                'fim' => '13h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            7 => 
            array (
                'id' => 8,
                'position' => 8,
                'inicio' => '13h00',
                'fim' => '14h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            8 => 
            array (
                'id' => 9,
                'position' => 9,
                'inicio' => '14h00',
                'fim' => '15h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            9 => 
            array (
                'id' => 10,
                'position' => 10,
                'inicio' => '15h00',
                'fim' => '16h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            10 => 
            array (
                'id' => 11,
                'position' => 11,
                'inicio' => '16h00',
                'fim' => '17h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            11 => 
            array (
                'id' => 12,
                'position' => 12,
                'inicio' => '17h00',
                'fim' => '18h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            12 => 
            array (
                'id' => 13,
                'position' => 13,
                'inicio' => '18h00',
                'fim' => '19h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            13 => 
            array (
                'id' => 14,
                'position' => 14,
                'inicio' => '19h00',
                'fim' => '20h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            14 => 
            array (
                'id' => 15,
                'position' => 15,
                'inicio' => '20h00',
                'fim' => '21h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
            15 => 
            array (
                'id' => 16,
                'position' => 16,
                'inicio' => '21h00',
                'fim' => '22h00',
                'user_id' => 3,
                'created_at' => '2023-06-02 15:44:08',
                'updated_at' => NULL,
                'status' => 1,
            ),
        ));
        
        
    }
}