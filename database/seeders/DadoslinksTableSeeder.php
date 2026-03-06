<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DadoslinksTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('dadoslinks')->delete();
        
        \DB::table('dadoslinks')->insert(array (
            0 => 
            array (
                'id' => 1,
                'lnkfacitadores' => 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/',
                'linkplantonistas' => 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/',
                'lnkmedicoscooper' => 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/',
                'lnkcampanha' => 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/',
                'lnkrelatoriocamp' => 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/',
                'versao' => '3.56',
                'newlink' => 'https://drive.google.com/file/d/1lzCldiQ0cifSPsbFYXlz1xL5lRuNTU0t/view?usp=sharing',
                'created_at' => '2022-05-27 14:05:10',
                'updated_at' => '2026-03-04 09:34:07',
            ),
        ));
        
        
    }
}