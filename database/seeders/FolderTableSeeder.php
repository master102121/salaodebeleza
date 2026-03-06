<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class FolderTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('folder')->delete();
        
        \DB::table('folder')->insert(array (
            0 => 
            array (
                'id' => 1,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'root',
                'folder_id' => NULL,
                'resource' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'resource',
                'folder_id' => 1,
                'resource' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'documents',
                'folder_id' => 1,
                'resource' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'graphics',
                'folder_id' => 1,
                'resource' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'name' => 'other',
                'folder_id' => 1,
                'resource' => NULL,
            ),
        ));
        
        
    }
}