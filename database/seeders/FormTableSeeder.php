<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class FormTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('form')->delete();
        
        \DB::table('form')->insert(array (
            0 => 
            array (
                'id' => 1,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'Example',
                'table_name' => 'example',
                'read' => 1,
                'edit' => 1,
                'add' => 1,
                'delete' => 1,
                'pagination' => 5,
            ),
        ));
        
        
    }
}