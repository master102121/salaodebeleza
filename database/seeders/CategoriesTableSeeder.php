<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('categories')->delete();
        
        \DB::table('categories')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'All',
                'alias_name' => 'Todos',
                'created_at' => '2023-06-09 12:19:05',
                'updated_at' => '2026-03-04 09:34:07',
                'status' => 1,
                'obs' => NULL,
                'drawble' => 2131165272,
                'imagem_url' => 'https://media.istockphoto.com/id/175507292/pt/foto/red-mundo-asi%C3%A1tica-hemisf%C3%A9rio-oriental.jpg?s=612x612&w=0&k=20&c=eHuopZSfVjBGtsV9bQqidTEjB72uhOZp_e8iu-8cWxk=',
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Food',
                'alias_name' => 'Cabelo',
                'created_at' => '2023-06-09 12:19:05',
                'updated_at' => '2023-06-19 14:37:44',
                'status' => 1,
                'obs' => NULL,
                'drawble' => 2131165325,
                'imagem_url' => 'https://static8.depositphotos.com/1004449/957/v/450/depositphotos_9578966-stock-illustration-beautiful-girl-in-lines.jpg',
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'Drinks',
                'alias_name' => 'Pele',
                'created_at' => '2023-06-09 12:19:05',
                'updated_at' => '2023-06-19 14:41:47',
                'status' => 1,
                'obs' => NULL,
                'drawble' => 2131165321,
                'imagem_url' => 'https://w7.pngwing.com/pngs/595/426/png-transparent-businessperson-cartoon-business-suit-s-comics-photography-cartoon.png',
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'Clothing & Accessories',
                'alias_name' => 'Maquiagem',
                'created_at' => '2023-06-09 12:19:05',
                'updated_at' => '2023-06-19 14:42:54',
                'status' => 1,
                'obs' => NULL,
                'drawble' => 2131165290,
                'imagem_url' => 'https://i.pinimg.com/originals/4c/82/58/4c82582f3ba8def7b3967276b862ea82.jpg',
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'Technology',
                'alias_name' => 'Masculino',
                'created_at' => '2023-06-09 12:19:05',
                'updated_at' => '2023-06-19 14:44:35',
                'status' => 1,
                'obs' => NULL,
                'drawble' => 2131165434,
                'imagem_url' => 'https://static.vecteezy.com/system/resources/previews/006/046/341/original/barbershop-logo-vintage-classic-style-salon-fashion-haircut-pomade-badge-icon-simple-minimalist-modern-barber-pole-razor-shave-scissor-razor-blade-retro-symbol-luxury-elegant-design-free-vector.jpg',
            ),
        ));
        
        
    }
}