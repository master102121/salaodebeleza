<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RoleHierarchyTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('role_hierarchy')->delete();
        
        \DB::table('role_hierarchy')->insert(array (
            0 => 
            array (
                'id' => 1,
                'role_id' => 1,
                'hierarchy' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'role_id' => 2,
                'hierarchy' => 2,
            ),
            2 => 
            array (
                'id' => 3,
                'role_id' => 3,
                'hierarchy' => 3,
            ),
        ));
        
        
    }
}