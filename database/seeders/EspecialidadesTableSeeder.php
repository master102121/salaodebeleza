<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class EspecialidadesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('especialidades')->delete();
        
        \DB::table('especialidades')->insert(array (
            0 => 
            array (
                'id' => 1,
                'user_id' => 3,
                'nome' => 'Anestesiologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'user_id' => 3,
                'nome' => 'Cardiologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'user_id' => 3,
            'nome' => 'Cirurgia de Cabeça e Pescoço (Otorrino)',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'user_id' => 3,
                'nome' => 'Cirurgia Geral',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            4 => 
            array (
                'id' => 5,
                'user_id' => 1,
                'nome' => 'Cirurgião Bucal',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            5 => 
            array (
                'id' => 6,
                'user_id' => 1,
                'nome' => 'Infectologia Hospitalar',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            6 => 
            array (
                'id' => 7,
                'user_id' => 3,
                'nome' => 'Cirurgia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            7 => 
            array (
                'id' => 8,
                'user_id' => 3,
                'nome' => 'Cirurgia Plástica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            8 => 
            array (
                'id' => 9,
                'user_id' => 3,
                'nome' => 'Cirurgia Vascular',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            9 => 
            array (
                'id' => 10,
                'user_id' => 3,
                'nome' => 'Gastroenterologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            10 => 
            array (
                'id' => 11,
                'user_id' => 3,
                'nome' => 'Ginecologia e Obstetrícia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            11 => 
            array (
                'id' => 12,
                'user_id' => 3,
                'nome' => 'Hematologia e Hemoterapia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            12 => 
            array (
                'id' => 13,
                'user_id' => 3,
                'nome' => 'Infectologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            13 => 
            array (
                'id' => 14,
                'user_id' => 3,
                'nome' => 'Nefrologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            14 => 
            array (
                'id' => 15,
                'user_id' => 3,
                'nome' => 'Ginecologista/Mastologista',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            15 => 
            array (
                'id' => 16,
                'user_id' => 3,
                'nome' => 'Ortopedia e Traumatologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            16 => 
            array (
                'id' => 17,
                'user_id' => 3,
                'nome' => 'Urologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            17 => 
            array (
                'id' => 18,
                'user_id' => 3,
                'nome' => 'Gastroenterologia e Cirurgia de Obesidade',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            18 => 
            array (
                'id' => 19,
                'user_id' => 1,
                'nome' => ' Oncologia Cirurgia da Cabeça e Pescoço',
                'created_at' => '2022-06-11 20:08:44',
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            19 => 
            array (
                'id' => 20,
                'user_id' => 1,
                'nome' => 'Clínico Geral',
                'created_at' => '2022-06-11 20:08:05',
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 1,
            ),
            20 => 
            array (
                'id' => 101,
                'user_id' => 3,
                'nome' => 'Alergia e Imunologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            21 => 
            array (
                'id' => 103,
                'user_id' => 3,
                'nome' => 'Angiologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            22 => 
            array (
                'id' => 104,
                'user_id' => 3,
                'nome' => 'Cancerologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            23 => 
            array (
                'id' => 106,
                'user_id' => 3,
                'nome' => 'Cirurgia Cardiovascular',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            24 => 
            array (
                'id' => 107,
                'user_id' => 3,
                'nome' => 'Cirurgia da Mão',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            25 => 
            array (
                'id' => 109,
                'user_id' => 3,
                'nome' => 'Cirurgia do Aparelho Digestivo',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            26 => 
            array (
                'id' => 113,
                'user_id' => 3,
                'nome' => 'Cirurgia Torácica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            27 => 
            array (
                'id' => 115,
                'user_id' => 3,
                'nome' => 'Clínica Médica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            28 => 
            array (
                'id' => 116,
                'user_id' => 3,
                'nome' => 'Coloproctologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            29 => 
            array (
                'id' => 118,
                'user_id' => 3,
                'nome' => 'Endocrinologia e Metabologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            30 => 
            array (
                'id' => 119,
                'user_id' => 3,
                'nome' => 'Endoscopia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            31 => 
            array (
                'id' => 121,
                'user_id' => 3,
                'nome' => 'Genética Médica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            32 => 
            array (
                'id' => 122,
                'user_id' => 3,
                'nome' => 'Geriatria',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            33 => 
            array (
                'id' => 125,
                'user_id' => 3,
                'nome' => 'Homeopatia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            34 => 
            array (
                'id' => 127,
                'user_id' => 3,
                'nome' => 'Mastologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            35 => 
            array (
                'id' => 128,
                'user_id' => 3,
                'nome' => 'Medicina de Família e Comunidade',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            36 => 
            array (
                'id' => 129,
                'user_id' => 3,
                'nome' => 'Medicina do Trabalho',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            37 => 
            array (
                'id' => 130,
                'user_id' => 3,
                'nome' => 'Medicina de Tráfego',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            38 => 
            array (
                'id' => 132,
                'user_id' => 3,
                'nome' => 'Medicina Física e Reabilitação',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            39 => 
            array (
                'id' => 133,
                'user_id' => 3,
                'nome' => 'Medicina Intensiva',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            40 => 
            array (
                'id' => 134,
                'user_id' => 3,
                'nome' => 'Medicina Legal e Perícia Médica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            41 => 
            array (
                'id' => 135,
                'user_id' => 3,
                'nome' => 'Medicina Nuclear',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            42 => 
            array (
                'id' => 136,
                'user_id' => 3,
                'nome' => 'Medicina Preventiva e Social',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            43 => 
            array (
                'id' => 138,
                'user_id' => 3,
                'nome' => 'Neurocirurgia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            44 => 
            array (
                'id' => 139,
                'user_id' => 3,
                'nome' => 'Neurologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            45 => 
            array (
                'id' => 140,
                'user_id' => 3,
                'nome' => 'Nutrologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            46 => 
            array (
                'id' => 143,
                'user_id' => 3,
                'nome' => 'Otorrinolaringologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            47 => 
            array (
                'id' => 144,
                'user_id' => 3,
                'nome' => 'Patologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            48 => 
            array (
                'id' => 145,
                'user_id' => 3,
                'nome' => 'Patologia Clínica/Medicina Laboratorial',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            49 => 
            array (
                'id' => 146,
                'user_id' => 3,
                'nome' => 'Pediatria',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            50 => 
            array (
                'id' => 147,
                'user_id' => 3,
                'nome' => 'Pneumologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            51 => 
            array (
                'id' => 148,
                'user_id' => 3,
                'nome' => 'Radiologia e Diagnóstico por Imagem',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            52 => 
            array (
                'id' => 149,
                'user_id' => 3,
                'nome' => 'Radioterapia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            53 => 
            array (
                'id' => 150,
                'user_id' => 3,
                'nome' => 'Reumatologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            54 => 
            array (
                'id' => 152,
                'user_id' => 3,
                'nome' => 'Administração em Saúde',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            55 => 
            array (
                'id' => 153,
                'user_id' => 3,
                'nome' => 'Alergia e Imunologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            56 => 
            array (
                'id' => 154,
                'user_id' => 3,
                'nome' => 'Angiorradiologia e Cirurgia Endovascular',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            57 => 
            array (
                'id' => 155,
                'user_id' => 3,
                'nome' => 'Atendimento ao queimado',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            58 => 
            array (
                'id' => 156,
                'user_id' => 3,
                'nome' => 'Cardiologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            59 => 
            array (
                'id' => 157,
                'user_id' => 3,
                'nome' => 'Cirurgia Crânio-Maxilo-Facial',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            60 => 
            array (
                'id' => 158,
                'user_id' => 3,
                'nome' => 'Cirurgia do Trauma',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            61 => 
            array (
                'id' => 159,
                'user_id' => 3,
                'nome' => 'Cirurgia Videolaparoscópica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            62 => 
            array (
                'id' => 160,
                'user_id' => 3,
                'nome' => 'Citopatologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            63 => 
            array (
                'id' => 161,
                'user_id' => 3,
                'nome' => 'Densitometria Óssea',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            64 => 
            array (
                'id' => 162,
                'user_id' => 3,
                'nome' => 'Ecocardiografia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            65 => 
            array (
                'id' => 163,
                'user_id' => 3,
                'nome' => 'Ecografia Vascular com Doppler',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            66 => 
            array (
                'id' => 164,
                'user_id' => 3,
                'nome' => 'Eletrofisiologia Clínica Invasiva',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            67 => 
            array (
                'id' => 165,
                'user_id' => 3,
                'nome' => 'Endocrinologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            68 => 
            array (
                'id' => 166,
                'user_id' => 3,
                'nome' => 'Endoscopia Digestiva',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            69 => 
            array (
                'id' => 167,
                'user_id' => 3,
                'nome' => 'Endoscopia Ginecológica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            70 => 
            array (
                'id' => 168,
                'user_id' => 3,
                'nome' => 'Endoscopia Respiratória',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            71 => 
            array (
                'id' => 169,
                'user_id' => 3,
                'nome' => 'Ergometria',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            72 => 
            array (
                'id' => 170,
                'user_id' => 3,
                'nome' => 'Foniatria',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            73 => 
            array (
                'id' => 171,
                'user_id' => 3,
                'nome' => 'Gastroenterologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            74 => 
            array (
                'id' => 172,
                'user_id' => 3,
                'nome' => 'Hansenologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            75 => 
            array (
                'id' => 173,
                'user_id' => 3,
                'nome' => 'Hematologia e Hemoterapia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            76 => 
            array (
                'id' => 174,
                'user_id' => 3,
                'nome' => 'Hemodinâmica e Cardiologia Intervencionista',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            77 => 
            array (
                'id' => 175,
                'user_id' => 3,
                'nome' => 'Hepatologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            78 => 
            array (
                'id' => 176,
                'user_id' => 3,
                'nome' => 'Infectologia Hospitalar',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            79 => 
            array (
                'id' => 177,
                'user_id' => 3,
                'nome' => 'Infectologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            80 => 
            array (
                'id' => 178,
                'user_id' => 3,
                'nome' => 'Mamografia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            81 => 
            array (
                'id' => 179,
                'user_id' => 3,
                'nome' => 'Medicina de Urgência',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            82 => 
            array (
                'id' => 180,
                'user_id' => 3,
                'nome' => 'Medicina do Adolescente',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            83 => 
            array (
                'id' => 181,
                'user_id' => 3,
                'nome' => 'Medicina do Sono',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            84 => 
            array (
                'id' => 182,
                'user_id' => 3,
                'nome' => 'Medicina Fetal',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            85 => 
            array (
                'id' => 183,
                'user_id' => 3,
                'nome' => 'Medicina Intensiva Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            86 => 
            array (
                'id' => 184,
                'user_id' => 3,
                'nome' => 'Medicina Paliativa',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            87 => 
            array (
                'id' => 185,
                'user_id' => 3,
                'nome' => 'Medicina Tropical',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            88 => 
            array (
                'id' => 186,
                'user_id' => 3,
                'nome' => 'Nefrologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            89 => 
            array (
                'id' => 187,
                'user_id' => 3,
                'nome' => 'Neonatologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            90 => 
            array (
                'id' => 188,
                'user_id' => 3,
                'nome' => 'Neurofisiologia Clínica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            91 => 
            array (
                'id' => 189,
                'user_id' => 3,
                'nome' => 'Neurologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            92 => 
            array (
                'id' => 190,
                'user_id' => 3,
                'nome' => 'Neurorradiologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            93 => 
            array (
                'id' => 192,
                'user_id' => 3,
                'nome' => 'Nutrição Parenteral e Enteral Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            94 => 
            array (
                'id' => 193,
                'user_id' => 3,
                'nome' => 'Nutrologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            95 => 
            array (
                'id' => 194,
                'user_id' => 3,
                'nome' => 'Pneumologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            96 => 
            array (
                'id' => 195,
                'user_id' => 3,
                'nome' => 'Psicogeriatria',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            97 => 
            array (
                'id' => 196,
                'user_id' => 3,
                'nome' => 'Radiologia Intervencionista e Angiorradiologia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            98 => 
            array (
                'id' => 197,
                'user_id' => 3,
                'nome' => 'Reumatologia Pediátrica',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            99 => 
            array (
                'id' => 198,
                'user_id' => 3,
                'nome' => 'Transplante de Medula Óssea',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            100 => 
            array (
                'id' => 199,
                'user_id' => 3,
                'nome' => 'Ultrassonografia em Ginecologia e Obstetrícia',
                'created_at' => NULL,
                'updated_at' => '2026-03-04 09:34:07',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            101 => 
            array (
                'id' => 201,
                'user_id' => 3,
                'nome' => 'Cadeira de rodas',
                'created_at' => '2021-07-12 19:37:55',
                'updated_at' => '2021-07-12 19:37:55',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            102 => 
            array (
                'id' => 202,
                'user_id' => 1,
                'nome' => 'Acupuntura',
                'created_at' => '2022-06-03 20:57:44',
                'updated_at' => '2022-06-03 20:57:44',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
            103 => 
            array (
                'id' => 203,
                'user_id' => 1,
                'nome' => 'Esmeralda',
                'created_at' => '2022-06-03 22:29:04',
                'updated_at' => '2022-06-03 22:29:04',
                'imagem' => '/images/medsci-icon.gif',
                'descricao' => NULL,
                'status' => 0,
            ),
        ));
        
        
    }
}