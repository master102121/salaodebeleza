<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DisponibleDaysTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('disponible_days')->delete();
        
        \DB::table('disponible_days')->insert(array (
            0 => 
            array (
                'id' => 1,
                'sunday' => '5-n,6-n,7-n,8-s,9-s,10-s,11-s,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n',
                'monday' => '5-n,6-n,7-n,8-n,9-n,10-n,11-n,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n',
                'tuesday' => '5-n,6-n,7-n,8-s,9-s,10-s,11-s,12-s,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n',
                'wednesday' => '5-n,6-n,7-n,8-n,9-n,10-n,11-n,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n',
                'thursday' => '5-n,6-n,7-n,8-s,9-s,10-s,11-n,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n',
                'friday' => '5-n,6-n,7-n,8-n,9-s,10-s,11-s,12-s,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n',
                'saturday' => '5-n,6-n,7-n,8-n,9-n,10-n,11-n,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n',
                'isHoliday' => 0,
                'profissional_id' => 25,
                'hours_period' => NULL,
                'created_at' => '2025-06-21 13:56:17',
                'updated_at' => '2025-06-21 13:56:17',
                'status' => 1,
                'updated_by' => NULL,
            ),
        ));
        
        
    }
}