<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class FormFieldTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('form_field')->delete();
        
        \DB::table('form_field')->insert(array (
            0 => 
            array (
                'id' => 1,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'Title',
                'type' => 'text',
                'browse' => 1,
                'read' => 1,
                'edit' => 1,
                'add' => 1,
                'relation_table' => NULL,
                'relation_column' => NULL,
                'form_id' => 1,
                'column_name' => 'name',
            ),
            1 => 
            array (
                'id' => 2,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'Description',
                'type' => 'text_area',
                'browse' => 1,
                'read' => 1,
                'edit' => 1,
                'add' => 1,
                'relation_table' => NULL,
                'relation_column' => NULL,
                'form_id' => 1,
                'column_name' => 'description',
            ),
            2 => 
            array (
                'id' => 3,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'Status',
                'type' => 'relation_select',
                'browse' => 1,
                'read' => 1,
                'edit' => 1,
                'add' => 1,
                'relation_table' => 'status',
                'relation_column' => 'name',
                'form_id' => 1,
                'column_name' => 'status_id',
            ),
        ));
        
        
    }
}