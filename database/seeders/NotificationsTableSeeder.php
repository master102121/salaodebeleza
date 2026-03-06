<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class NotificationsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('notifications')->delete();
        
        \DB::table('notifications')->insert(array (
            0 => 
            array (
                'id' => 1,
                'user_id' => 26,
                'player_id' => '9eca27fe-2f6d-40b8-96fe-4df419a4a3a9',
                'texto' => 'Nova mensagem de teste',
                'sended_by' => 25,
                'created_at' => '2023-06-23 23:12:11',
                'updated_at' => '2023-06-23 23:12:11',
            ),
        ));
        
        
    }
}