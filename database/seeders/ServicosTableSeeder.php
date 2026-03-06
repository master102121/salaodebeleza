<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ServicosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('servicos')->delete();
        
        \DB::table('servicos')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Corte',
                'changed_by_id' => 25,
                'created_at' => '2023-05-18 13:56:06',
                'updated_at' => '2023-06-18 20:21:12',
                'status' => 1,
                'std_price' => '25,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Franja',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:56:06',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '25,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'Corte Feminino',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'Escova',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'Prancha',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'Aplicação',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'Reflexo',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            7 => 
            array (
                'id' => 8,
                'name' => 'Mechas',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            8 => 
            array (
                'id' => 9,
                'name' => 'Tintura',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            9 => 
            array (
                'id' => 10,
                'name' => 'Balayage',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            10 => 
            array (
                'id' => 11,
                'name' => 'Relaxamento',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            11 => 
            array (
                'id' => 12,
                'name' => 'Cauterização',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 13:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            12 => 
            array (
                'id' => 13,
                'name' => 'Florzinha',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:56:06',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '25,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            13 => 
            array (
                'id' => 14,
                'name' => 'Axila',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:56:06',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '25,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            14 => 
            array (
                'id' => 15,
                'name' => 'Virilha',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            15 => 
            array (
                'id' => 16,
                'name' => 'Buço',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            16 => 
            array (
                'id' => 17,
                'name' => 'Dep.Íntima',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            17 => 
            array (
                'id' => 18,
                'name' => 'Meia Perna',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            18 => 
            array (
                'id' => 19,
                'name' => 'Perna Inteira',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            19 => 
            array (
                'id' => 20,
                'name' => 'Banho de Lua',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            20 => 
            array (
                'id' => 21,
                'name' => 'Depilação',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            21 => 
            array (
                'id' => 22,
                'name' => 'Esfoliação de pé',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            22 => 
            array (
                'id' => 23,
                'name' => 'Esfoliação de mão',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '35,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
            23 => 
            array (
                'id' => 24,
                'name' => 'Colocação de unha',
                'changed_by_id' => 1,
                'created_at' => '2023-05-18 16:58:46',
                'updated_at' => '2026-03-04 09:34:43',
                'status' => 1,
                'std_price' => '15,00',
                'expire_at' => '',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}