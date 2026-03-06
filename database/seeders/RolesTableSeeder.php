<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('roles')->delete();
        
        \DB::table('roles')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'admin',
                'guard_name' => 'web',
                'created_at' => '2022-05-27 14:31:48',
                'updated_at' => '2022-05-27 14:31:48',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'user',
                'guard_name' => 'web',
                'created_at' => '2022-05-27 14:31:48',
                'updated_at' => '2022-05-27 14:31:48',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'guest',
                'guard_name' => 'web',
                'created_at' => '2022-05-27 14:31:48',
                'updated_at' => '2022-05-27 14:31:48',
            ),
        ));
        
        
    }
}