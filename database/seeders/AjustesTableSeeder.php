<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AjustesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ajustes')->delete();
        
        \DB::table('ajustes')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Cores do sistema',
                'valor' => NULL,
                'alias_name' => NULL,
                'created_by' => 1,
                'created_at' => '2025-05-23 09:44:56',
                'updated_at' => NULL,
                'status' => 1,
                'deleted_at' => NULL,
                'model' => 'Coresdosistema',
                'arquivo' => 'sistemcolor',
                'onlyadmins' => 1,
            ),
            1 => 
            array (
                'id' => 6,
                'name' => 'Logotipo & Imagens',
                'valor' => NULL,
                'alias_name' => NULL,
                'created_by' => 1,
                'created_at' => '2025-05-23 09:47:42',
                'updated_at' => NULL,
                'status' => 1,
                'deleted_at' => NULL,
                'model' => 'Logotipoeimagem',
                'arquivo' => 'logoeimagens',
                'onlyadmins' => 1,
            ),
            2 => 
            array (
                'id' => 7,
                'name' => 'Aplicativo',
                'valor' => '1.25',
                'alias_name' => 'app.version',
                'created_by' => 1,
                'created_at' => '2025-05-23 09:47:42',
                'updated_at' => NULL,
                'status' => 1,
                'deleted_at' => NULL,
                'model' => 'Android',
                'arquivo' => 'android',
                'onlyadmins' => 1,
            ),
        ));
        
        
    }
}