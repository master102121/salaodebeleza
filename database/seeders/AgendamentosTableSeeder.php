<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AgendamentosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('agendamentos')->delete();
        
        \DB::table('agendamentos')->insert(array (
            0 => 
            array (
                'id' => 1,
                'id_cliente' => 29,
                'id_profissional' => 25,
                'descricao' => 'Agendado pelo App',
                'valor' => '25.00',
                'servico_id' => 1,
                'start_date' => '2026-03-05 04:53:00',
                'end_date' => '09:00',
                'status' => 'confirmado',
                'color' => 'yellow',
                'created_at' => '2025-07-01 17:52:52',
                'updated_at' => '2026-03-04 12:19:30',
            ),
            1 => 
            array (
                'id' => 2,
                'id_cliente' => 25,
                'id_profissional' => 25,
                'descricao' => 'Agendado pelo App',
                'valor' => '15.00',
                'servico_id' => 6,
                'start_date' => '2025-08-07 09:00:00',
                'end_date' => '10:00',
                'status' => 'confirmado',
                'color' => 'yellow',
                'created_at' => '2025-07-01 17:59:22',
                'updated_at' => '2025-07-01 17:59:22',
            ),
            2 => 
            array (
                'id' => 3,
                'id_cliente' => 25,
                'id_profissional' => 25,
                'descricao' => 'Agendado pelo App',
                'valor' => '15.00',
                'servico_id' => 12,
                'start_date' => '2025-08-07 10:00:00',
                'end_date' => '11:00',
                'status' => 'confirmado',
                'color' => 'yellow',
                'created_at' => '2025-07-01 18:07:10',
                'updated_at' => '2025-07-01 18:07:10',
            ),
            3 => 
            array (
                'id' => 4,
                'id_cliente' => 25,
                'id_profissional' => 25,
                'descricao' => 'Agendado pelo App',
                'valor' => '15.00',
                'servico_id' => 6,
                'start_date' => '2025-01-07 12:00:00',
                'end_date' => '13:00',
                'status' => 'confirmado',
                'color' => 'yellow',
                'created_at' => '2025-07-01 18:08:21',
                'updated_at' => '2025-07-01 18:08:21',
            ),
        ));
        
        
    }
}