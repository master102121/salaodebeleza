<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class TimesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('times')->delete();
        
        
        
    }
}