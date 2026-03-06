<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('permissions')->delete();
        
        \DB::table('permissions')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'browse bread 1',
                'guard_name' => 'web',
                'created_at' => '2022-05-27 14:31:49',
                'updated_at' => '2022-05-27 14:31:49',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'read bread 1',
                'guard_name' => 'web',
                'created_at' => '2022-05-27 14:31:49',
                'updated_at' => '2022-05-27 14:31:49',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'edit bread 1',
                'guard_name' => 'web',
                'created_at' => '2022-05-27 14:31:49',
                'updated_at' => '2022-05-27 14:31:49',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'add bread 1',
                'guard_name' => 'web',
                'created_at' => '2022-05-27 14:31:49',
                'updated_at' => '2022-05-27 14:31:49',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'delete bread 1',
                'guard_name' => 'web',
                'created_at' => '2022-05-27 14:31:49',
                'updated_at' => '2022-05-27 14:31:49',
            ),
        ));
        
        
    }
}