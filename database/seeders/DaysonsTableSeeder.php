<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DaysonsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('daysons')->delete();
        
        \DB::table('daysons')->insert(array (
            0 => 
            array (
                'id' => 1,
                'sunday' => '59,69,25',
                'monday' => NULL,
                'tuesday' => '25',
                'wednesday' => '30,25',
                'thursday' => '59,69,25',
                'friday' => '25',
                'saturday' => '25,26,30',
                'holiday' => NULL,
                'created_at' => '2023-06-21 09:27:42',
                'updated_at' => '2023-06-21 13:56:17',
                'status' => 1,
                'updated_by' => NULL,
            ),
        ));
        
        
    }
}