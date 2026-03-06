<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class FeaturesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('features')->delete();
        
        \DB::table('features')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Produtos capilares',
                'img_url' => 'https://res.cloudinary.com/beleza-na-web/image/upload/w_1500,f_auto,fl_progressive,q_auto:eco,w_210,h_210/v1/imagens/product/78557/59bcf7d7-d6a3-45fb-9cd8-41a3924aa302-kit-kerastase-genesis-antichute-plus-3-produtos.png',
                'created_at' => '2023-06-12 17:19:39',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'expires_at' => NULL,
                'updated_by' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Produtos capilares com desconto',
                'img_url' => 'https://www.walgreens.com/images/adaptive/sp1/3161400_061123_T1_M_HairCare_345x165.jpg',
                'created_at' => '2023-06-12 17:19:39',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'expires_at' => NULL,
                'updated_by' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'shampoo na promoção',
                'img_url' => 'https://cdn3.mydukaan.io/app/image/700x700/?url=https://dukaan-core-file-service.s3.ap-southeast-1.amazonaws.com/upload_file_service/0aaf2f4b-4942-429b-8b0b-2f2fdeeedba4/1024x1024-0127cf98-bb42-404b-af44-d29c10390dec.jpg',
                'created_at' => '2023-06-12 17:19:39',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'expires_at' => NULL,
                'updated_by' => NULL,
            ),
        ));
        
        
    }
}