<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ListadeespecialidadesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('listadeespecialidades')->delete();
        
        \DB::table('listadeespecialidades')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Especialidade 1',
                'valor' => 'Cabeleireiros',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:18:38',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'deleted_at' => NULL,
                'alias' => 'cab',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Especialidade 2',
                'valor' => 'Barbeiros',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:18:38',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'deleted_at' => NULL,
                'alias' => 'barb',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'Especialidade 3',
                'valor' => 'Dermatologista',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:18:38',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'deleted_at' => NULL,
                'alias' => 'derm',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'Especialidade 4',
                'valor' => 'Manicure',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:18:38',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'deleted_at' => NULL,
                'alias' => 'man',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'Especialidade 5',
                'valor' => 'Não Especificado',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:18:38',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 0,
                'deleted_at' => NULL,
                'alias' => 'nesp1',
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'Especialidade 6',
                'valor' => 'Não Especificado 2',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:18:38',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 0,
                'deleted_at' => NULL,
                'alias' => 'nesp2',
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'Especialidade 7',
                'valor' => 'Não Especificado 3',
                'created_by' => 1,
                'created_at' => '2023-05-23 10:18:38',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 0,
                'deleted_at' => NULL,
                'alias' => 'nesp3',
            ),
        ));
        
        
    }
}