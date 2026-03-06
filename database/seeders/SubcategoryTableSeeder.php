<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SubcategoryTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('subcategory')->delete();
        
        \DB::table('subcategory')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Shampu',
                'category_id' => 2,
                'updated_at' => '2023-06-19 14:45:10',
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Condicionadores',
                'category_id' => 2,
                'updated_at' => '2023-06-19 14:45:56',
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'Tinturas',
                'category_id' => 2,
                'updated_at' => '2023-06-10 19:54:54',
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'Matizadores',
                'category_id' => 2,
                'updated_at' => '2023-06-11 01:29:05',
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'Máscara',
                'category_id' => 3,
                'updated_at' => '2023-06-19 14:48:39',
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'Soda',
                'category_id' => 3,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'Cha',
                'category_id' => 3,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            7 => 
            array (
                'id' => 8,
                'name' => 'Cafe',
                'category_id' => 3,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            8 => 
            array (
                'id' => 9,
                'name' => 'Suco de Frutas',
                'category_id' => 3,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            9 => 
            array (
                'id' => 10,
                'name' => 'Camiseta',
                'category_id' => 4,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            10 => 
            array (
                'id' => 11,
                'name' => 'Jeans',
                'category_id' => 4,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            11 => 
            array (
                'id' => 12,
                'name' => 'Jaqueta',
                'category_id' => 4,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            12 => 
            array (
                'id' => 13,
                'name' => 'Polo',
                'category_id' => 4,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            13 => 
            array (
                'id' => 14,
                'name' => 'Short',
                'category_id' => 4,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            14 => 
            array (
                'id' => 15,
                'name' => 'Sweatshirt',
                'category_id' => 4,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            15 => 
            array (
                'id' => 16,
                'name' => 'Sapatos',
                'category_id' => 4,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            16 => 
            array (
                'id' => 17,
                'name' => 'Acessórios',
                'category_id' => 4,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            17 => 
            array (
                'id' => 18,
                'name' => 'Computador',
                'category_id' => 5,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            18 => 
            array (
                'id' => 19,
                'name' => 'Tablet',
                'category_id' => 5,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            19 => 
            array (
                'id' => 20,
                'name' => 'Celular',
                'category_id' => 5,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            20 => 
            array (
                'id' => 21,
                'name' => 'Tv e Vídeo',
                'category_id' => 5,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            21 => 
            array (
                'id' => 22,
                'name' => 'Câmera e Foto',
                'category_id' => 5,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            22 => 
            array (
                'id' => 23,
                'name' => 'Vídeo Game',
                'category_id' => 5,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
            23 => 
            array (
                'id' => 24,
                'name' => 'Wearable',
                'category_id' => 5,
                'updated_at' => NULL,
                'created_at' => '2023-06-09 12:18:16',
                'status' => 1,
            ),
        ));
        
        
    }
}