<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AreasTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('areas')->delete();
        
        \DB::table('areas')->insert(array (
            0 => 
            array (
                'id' => 1,
            'nome' => 'Cabeleireiro(a)',
                'user_id' => 1,
                'obs' => NULL,
                'created_at' => '2022-06-10 15:59:39',
                'updated_at' => '2022-06-10 15:59:39',
                'status' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'nome' => 'Barbearia',
                'user_id' => 1,
                'obs' => NULL,
                'created_at' => '2022-06-10 15:59:39',
                'updated_at' => '2022-06-10 15:59:39',
                'status' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'nome' => 'Dermatologista',
                'user_id' => 1,
                'obs' => NULL,
                'created_at' => '2022-06-10 15:59:39',
                'updated_at' => '2022-06-10 15:59:39',
                'status' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'nome' => 'Manicure',
                'user_id' => 1,
                'obs' => NULL,
                'created_at' => '2022-06-10 15:59:39',
                'updated_at' => '2022-06-10 15:59:39',
                'status' => 1,
            ),
            4 => 
            array (
                'id' => 5,
                'nome' => 'Loja de Produtos',
                'user_id' => 1,
                'obs' => NULL,
                'created_at' => '2022-06-10 15:59:39',
                'updated_at' => '2022-06-10 15:59:39',
                'status' => 1,
            ),
        ));
        
        
    }
}