<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AndroidTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('Android')->delete();
        
        \DB::table('Android')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'appname',
                'alias_name' => 'Nome do App',
                'created_at' => '2023-06-23 09:12:50',
                'updated_at' => '2023-06-23 17:44:55',
                'status' => 1,
                'valor' => 'Gerenciador da Beleza',
                'updated_by' => 25,
                'tipodevalor' => 'text',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'versionname',
                'alias_name' => 'Versão do App',
                'created_at' => '2023-06-23 09:12:50',
                'updated_at' => NULL,
                'status' => 1,
                'valor' => '1.25',
                'updated_by' => 25,
                'tipodevalor' => 'text',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'naoselecionado',
            'alias_name' => 'Cor - Item não selecionado (Loja)',
                'created_at' => '2023-06-23 09:12:50',
                'updated_at' => NULL,
                'status' => 1,
                'valor' => '#69182e',
                'updated_by' => 25,
                'tipodevalor' => 'color',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'selecionado',
            'alias_name' => 'Cor - Item não selecionado (Loja)',
                'created_at' => '2023-06-23 09:12:50',
                'updated_at' => NULL,
                'status' => 1,
                'valor' => '#f2edef',
                'updated_by' => 25,
                'tipodevalor' => 'color',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'firebasekey',
                'alias_name' => 'Chave Firebase Clloud',
                'created_at' => '2023-06-23 09:12:50',
                'updated_at' => NULL,
                'status' => 1,
                'valor' => 'AAAAJqAcuRc:APA91bHnjNlq4B66nuhUyn7Gm6l4OqLP-NXInWaU0J7CzJooZ_zP3eYt9x7O8S2WgNixIkafSHTZct4OTwpOMTkARE3Q9c5kfaemd8URrnDec7bfxAu2R-zR9yvamw2FlYV-GD0_CaZS',
                'updated_by' => 25,
                'tipodevalor' => 'text',
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'firebaseid',
                'alias_name' => 'ID Firebase Clloud',
                'created_at' => '2023-06-23 09:12:50',
                'updated_at' => NULL,
                'status' => 1,
                'valor' => '165894994199',
                'updated_by' => 25,
                'tipodevalor' => 'text',
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'onesignalkey',
                'alias_name' => 'OneSignal Key',
                'created_at' => '2023-06-23 09:12:50',
                'updated_at' => NULL,
                'status' => 1,
                'valor' => 'd36d1dcb-89ef-4810-b1a9-0d13c69889ad',
                'updated_by' => 25,
                'tipodevalor' => 'text',
            ),
        ));
        
        
    }
}