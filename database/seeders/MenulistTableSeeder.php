<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class MenulistTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('menulist')->delete();
        
        \DB::table('menulist')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'sidebar menu',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'top menu',
            ),
        ));
        
        
    }
}