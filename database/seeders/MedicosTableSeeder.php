<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class MedicosTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('medicos')->delete();
        
        \DB::table('medicos')->insert(array (
            0 => 
            array (
                'id' => 1,
                'user_id' => 3,
                'especialidade_id' => '4',
                'type' => 1,
                'nome' => 'Dr. Renato Augusto Ramires Judice',
                'value' => '0',
                'created_at' => '2021-07-16 20:35:47',
                'updated_at' => '2021-11-05 23:24:32',
                'hospital_ids' => '2',
                'convenios_ids' => '2',
                'status' => 1,
                'telefone1' => '1939351292',
                'telefone2' => NULL,
                'sus' => 1,
                'gender' => 1,
                'descricao' => NULL,
                'datavisita' => '2021-07-19',
                'user1_id' => 3,
                'user2_id' => NULL,
                'agenda' => 1,
                'cidade' => 'Indaiatuba',
                'rua' => 'Rua Archimedes Prandini',
                'state' => 'SP',
                'bairro' => 'Jardim Moacyr Arruda',
                'numero' => '2121',
                'ibge' => NULL,
                'cep' => '13338-430',
                'dataagenda' => NULL,
                'hora' => '19:02',
            ),
            1 => 
            array (
                'id' => 2,
                'user_id' => 3,
                'especialidade_id' => '9',
                'type' => 1,
                'nome' => 'Dr. Renato Cassani',
                'value' => '0',
                'created_at' => '2021-07-17 18:44:11',
                'updated_at' => '2021-07-17 18:44:11',
                'hospital_ids' => '2',
                'convenios_ids' => '2,4,6',
                'status' => 1,
                'telefone1' => '1939351292',
                'telefone2' => NULL,
                'sus' => 0,
                'gender' => 0,
                'descricao' => NULL,
                'datavisita' => '2021-07-17',
                'user1_id' => NULL,
                'user2_id' => NULL,
                'agenda' => 1,
                'cidade' => 'Indaiatuba',
                'rua' => 'Rua Archimedes Prandini',
                'state' => 'SP',
                'bairro' => 'Jardim Moacyr Arruda',
                'numero' => '1212',
                'ibge' => NULL,
                'cep' => '13338-430',
                'dataagenda' => NULL,
                'hora' => '15:43',
            ),
            2 => 
            array (
                'id' => 3,
                'user_id' => 3,
                'especialidade_id' => '1',
                'type' => 1,
                'nome' => 'Geronimo Andre',
                'value' => '1',
                'created_at' => '2021-11-12 20:26:25',
                'updated_at' => '2021-11-12 20:26:25',
                'hospital_ids' => '2',
                'convenios_ids' => '2',
                'status' => 1,
                'telefone1' => '12121212',
                'telefone2' => NULL,
                'sus' => 1,
                'gender' => 1,
                'descricao' => NULL,
                'datavisita' => '2021-11-12',
                'user1_id' => NULL,
                'user2_id' => NULL,
                'agenda' => 1,
                'cidade' => NULL,
                'rua' => NULL,
                'state' => 'SP',
                'bairro' => NULL,
                'numero' => NULL,
                'ibge' => NULL,
                'cep' => NULL,
                'dataagenda' => NULL,
                'hora' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'user_id' => 1,
                'especialidade_id' => '1',
                'type' => 1,
                'nome' => 'Dr Mario de Almeida',
                'value' => '0',
                'created_at' => '2022-06-18 18:36:01',
                'updated_at' => '2022-06-18 18:36:01',
                'hospital_ids' => NULL,
                'convenios_ids' => '2',
                'status' => 1,
                'telefone1' => '19991891955',
                'telefone2' => '19991871655',
                'sus' => 1,
                'gender' => 1,
                'descricao' => 'Email:mario@maior.com
 Visitado por:Paulo, Douglas
 Onde atende:Coplan
 OBS:',
                'datavisita' => '2022-06-11',
                'user1_id' => NULL,
                'user2_id' => NULL,
                'agenda' => 1,
                'cidade' => 'Indaiatuba',
                'rua' => NULL,
                'state' => 'SP',
                'bairro' => NULL,
                'numero' => NULL,
                'ibge' => NULL,
                'cep' => NULL,
                'dataagenda' => NULL,
                'hora' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'user_id' => 1,
                'especialidade_id' => '17',
                'type' => 1,
                'nome' => 'Dr Mario de Almeida 2',
                'value' => '0',
                'created_at' => '2022-06-18 18:51:46',
                'updated_at' => '2022-06-18 18:51:46',
                'hospital_ids' => NULL,
                'convenios_ids' => '2',
                'status' => 1,
                'telefone1' => '19991891955',
                'telefone2' => '19991871655',
                'sus' => 1,
                'gender' => 1,
                'descricao' => 'Email:mario@maior.com
 Visitado por:Paulo, Douglas
 Onde atende:Coplan
 OBS:',
                'datavisita' => '2022-06-04',
                'user1_id' => NULL,
                'user2_id' => NULL,
                'agenda' => 1,
                'cidade' => 'Indaiatuba',
                'rua' => NULL,
                'state' => 'SP',
                'bairro' => NULL,
                'numero' => NULL,
                'ibge' => NULL,
                'cep' => NULL,
                'dataagenda' => NULL,
                'hora' => NULL,
            ),
        ));
        
        
    }
}