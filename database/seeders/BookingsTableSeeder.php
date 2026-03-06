<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class BookingsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('bookings')->delete();
        
        \DB::table('bookings')->insert(array (
            0 => 
            array (
                'id' => 1,
                'nome' => 'agenda de teste',
                'user_id' => 25,
                'dia' => '13 de julho de 2023',
                'periodo' => '10h00 a 11h00',
                'cliente' => 25,
                'servicos' => 'Corte de cabelo',
                'valor' => '25,00',
                'forma_pag' => 1,
                'obs' => NULL,
                'created_at' => '2023-06-12 16:55:55',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 'agendado',
                'profissional_id' => 25,
            ),
        ));
        
        
    }
}