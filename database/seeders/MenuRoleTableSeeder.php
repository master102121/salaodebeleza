<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class MenuRoleTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('menu_role')->delete();
        
        \DB::table('menu_role')->insert(array (
            0 => 
            array (
                'id' => 1,
                'role_name' => 'guest',
                'menus_id' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'role_name' => 'user',
                'menus_id' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'role_name' => 'admin',
                'menus_id' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'role_name' => 'admin',
                'menus_id' => 2,
            ),
            4 => 
            array (
                'id' => 5,
                'role_name' => 'admin',
                'menus_id' => 3,
            ),
            5 => 
            array (
                'id' => 6,
                'role_name' => 'admin',
                'menus_id' => 4,
            ),
            6 => 
            array (
                'id' => 7,
                'role_name' => 'admin',
                'menus_id' => 5,
            ),
            7 => 
            array (
                'id' => 8,
                'role_name' => 'admin',
                'menus_id' => 6,
            ),
            8 => 
            array (
                'id' => 9,
                'role_name' => 'admin',
                'menus_id' => 7,
            ),
            9 => 
            array (
                'id' => 10,
                'role_name' => 'admin',
                'menus_id' => 8,
            ),
            10 => 
            array (
                'id' => 11,
                'role_name' => 'admin',
                'menus_id' => 9,
            ),
            11 => 
            array (
                'id' => 12,
                'role_name' => 'admin',
                'menus_id' => 10,
            ),
            12 => 
            array (
                'id' => 13,
                'role_name' => 'guest',
                'menus_id' => 11,
            ),
            13 => 
            array (
                'id' => 14,
                'role_name' => 'guest',
                'menus_id' => 12,
            ),
            14 => 
            array (
                'id' => 15,
                'role_name' => 'user',
                'menus_id' => 13,
            ),
            15 => 
            array (
                'id' => 16,
                'role_name' => 'admin',
                'menus_id' => 13,
            ),
            16 => 
            array (
                'id' => 17,
                'role_name' => 'user',
                'menus_id' => 14,
            ),
            17 => 
            array (
                'id' => 18,
                'role_name' => 'admin',
                'menus_id' => 14,
            ),
            18 => 
            array (
                'id' => 19,
                'role_name' => 'user',
                'menus_id' => 15,
            ),
            19 => 
            array (
                'id' => 20,
                'role_name' => 'admin',
                'menus_id' => 15,
            ),
            20 => 
            array (
                'id' => 21,
                'role_name' => 'user',
                'menus_id' => 16,
            ),
            21 => 
            array (
                'id' => 22,
                'role_name' => 'admin',
                'menus_id' => 16,
            ),
            22 => 
            array (
                'id' => 23,
                'role_name' => 'user',
                'menus_id' => 17,
            ),
            23 => 
            array (
                'id' => 24,
                'role_name' => 'admin',
                'menus_id' => 17,
            ),
            24 => 
            array (
                'id' => 25,
                'role_name' => 'user',
                'menus_id' => 18,
            ),
            25 => 
            array (
                'id' => 26,
                'role_name' => 'admin',
                'menus_id' => 18,
            ),
            26 => 
            array (
                'id' => 27,
                'role_name' => 'user',
                'menus_id' => 19,
            ),
            27 => 
            array (
                'id' => 28,
                'role_name' => 'admin',
                'menus_id' => 19,
            ),
            28 => 
            array (
                'id' => 29,
                'role_name' => 'user',
                'menus_id' => 20,
            ),
            29 => 
            array (
                'id' => 30,
                'role_name' => 'admin',
                'menus_id' => 20,
            ),
            30 => 
            array (
                'id' => 31,
                'role_name' => 'user',
                'menus_id' => 21,
            ),
            31 => 
            array (
                'id' => 32,
                'role_name' => 'admin',
                'menus_id' => 21,
            ),
            32 => 
            array (
                'id' => 33,
                'role_name' => 'user',
                'menus_id' => 22,
            ),
            33 => 
            array (
                'id' => 34,
                'role_name' => 'admin',
                'menus_id' => 22,
            ),
            34 => 
            array (
                'id' => 35,
                'role_name' => 'user',
                'menus_id' => 23,
            ),
            35 => 
            array (
                'id' => 36,
                'role_name' => 'admin',
                'menus_id' => 23,
            ),
            36 => 
            array (
                'id' => 37,
                'role_name' => 'user',
                'menus_id' => 24,
            ),
            37 => 
            array (
                'id' => 38,
                'role_name' => 'admin',
                'menus_id' => 24,
            ),
            38 => 
            array (
                'id' => 39,
                'role_name' => 'user',
                'menus_id' => 25,
            ),
            39 => 
            array (
                'id' => 40,
                'role_name' => 'admin',
                'menus_id' => 25,
            ),
            40 => 
            array (
                'id' => 41,
                'role_name' => 'user',
                'menus_id' => 26,
            ),
            41 => 
            array (
                'id' => 42,
                'role_name' => 'admin',
                'menus_id' => 26,
            ),
            42 => 
            array (
                'id' => 43,
                'role_name' => 'user',
                'menus_id' => 27,
            ),
            43 => 
            array (
                'id' => 44,
                'role_name' => 'admin',
                'menus_id' => 27,
            ),
            44 => 
            array (
                'id' => 45,
                'role_name' => 'user',
                'menus_id' => 28,
            ),
            45 => 
            array (
                'id' => 46,
                'role_name' => 'admin',
                'menus_id' => 28,
            ),
            46 => 
            array (
                'id' => 47,
                'role_name' => 'user',
                'menus_id' => 29,
            ),
            47 => 
            array (
                'id' => 48,
                'role_name' => 'admin',
                'menus_id' => 29,
            ),
            48 => 
            array (
                'id' => 49,
                'role_name' => 'user',
                'menus_id' => 30,
            ),
            49 => 
            array (
                'id' => 50,
                'role_name' => 'admin',
                'menus_id' => 30,
            ),
            50 => 
            array (
                'id' => 51,
                'role_name' => 'user',
                'menus_id' => 31,
            ),
            51 => 
            array (
                'id' => 52,
                'role_name' => 'admin',
                'menus_id' => 31,
            ),
            52 => 
            array (
                'id' => 53,
                'role_name' => 'user',
                'menus_id' => 32,
            ),
            53 => 
            array (
                'id' => 54,
                'role_name' => 'admin',
                'menus_id' => 32,
            ),
            54 => 
            array (
                'id' => 55,
                'role_name' => 'user',
                'menus_id' => 33,
            ),
            55 => 
            array (
                'id' => 56,
                'role_name' => 'admin',
                'menus_id' => 33,
            ),
            56 => 
            array (
                'id' => 57,
                'role_name' => 'user',
                'menus_id' => 34,
            ),
            57 => 
            array (
                'id' => 58,
                'role_name' => 'admin',
                'menus_id' => 34,
            ),
            58 => 
            array (
                'id' => 59,
                'role_name' => 'user',
                'menus_id' => 35,
            ),
            59 => 
            array (
                'id' => 60,
                'role_name' => 'admin',
                'menus_id' => 35,
            ),
            60 => 
            array (
                'id' => 61,
                'role_name' => 'user',
                'menus_id' => 36,
            ),
            61 => 
            array (
                'id' => 62,
                'role_name' => 'admin',
                'menus_id' => 36,
            ),
            62 => 
            array (
                'id' => 63,
                'role_name' => 'user',
                'menus_id' => 37,
            ),
            63 => 
            array (
                'id' => 64,
                'role_name' => 'admin',
                'menus_id' => 37,
            ),
            64 => 
            array (
                'id' => 65,
                'role_name' => 'user',
                'menus_id' => 38,
            ),
            65 => 
            array (
                'id' => 66,
                'role_name' => 'admin',
                'menus_id' => 38,
            ),
            66 => 
            array (
                'id' => 67,
                'role_name' => 'user',
                'menus_id' => 39,
            ),
            67 => 
            array (
                'id' => 68,
                'role_name' => 'admin',
                'menus_id' => 39,
            ),
            68 => 
            array (
                'id' => 69,
                'role_name' => 'user',
                'menus_id' => 40,
            ),
            69 => 
            array (
                'id' => 70,
                'role_name' => 'admin',
                'menus_id' => 40,
            ),
            70 => 
            array (
                'id' => 71,
                'role_name' => 'user',
                'menus_id' => 41,
            ),
            71 => 
            array (
                'id' => 72,
                'role_name' => 'admin',
                'menus_id' => 41,
            ),
            72 => 
            array (
                'id' => 73,
                'role_name' => 'user',
                'menus_id' => 42,
            ),
            73 => 
            array (
                'id' => 74,
                'role_name' => 'admin',
                'menus_id' => 42,
            ),
            74 => 
            array (
                'id' => 75,
                'role_name' => 'user',
                'menus_id' => 43,
            ),
            75 => 
            array (
                'id' => 76,
                'role_name' => 'admin',
                'menus_id' => 43,
            ),
            76 => 
            array (
                'id' => 77,
                'role_name' => 'user',
                'menus_id' => 44,
            ),
            77 => 
            array (
                'id' => 78,
                'role_name' => 'admin',
                'menus_id' => 44,
            ),
            78 => 
            array (
                'id' => 79,
                'role_name' => 'user',
                'menus_id' => 45,
            ),
            79 => 
            array (
                'id' => 80,
                'role_name' => 'admin',
                'menus_id' => 45,
            ),
            80 => 
            array (
                'id' => 81,
                'role_name' => 'user',
                'menus_id' => 46,
            ),
            81 => 
            array (
                'id' => 82,
                'role_name' => 'admin',
                'menus_id' => 46,
            ),
            82 => 
            array (
                'id' => 83,
                'role_name' => 'user',
                'menus_id' => 47,
            ),
            83 => 
            array (
                'id' => 84,
                'role_name' => 'admin',
                'menus_id' => 47,
            ),
            84 => 
            array (
                'id' => 85,
                'role_name' => 'user',
                'menus_id' => 48,
            ),
            85 => 
            array (
                'id' => 86,
                'role_name' => 'admin',
                'menus_id' => 48,
            ),
            86 => 
            array (
                'id' => 87,
                'role_name' => 'user',
                'menus_id' => 49,
            ),
            87 => 
            array (
                'id' => 88,
                'role_name' => 'admin',
                'menus_id' => 49,
            ),
            88 => 
            array (
                'id' => 89,
                'role_name' => 'user',
                'menus_id' => 50,
            ),
            89 => 
            array (
                'id' => 90,
                'role_name' => 'admin',
                'menus_id' => 50,
            ),
            90 => 
            array (
                'id' => 91,
                'role_name' => 'user',
                'menus_id' => 51,
            ),
            91 => 
            array (
                'id' => 92,
                'role_name' => 'admin',
                'menus_id' => 51,
            ),
            92 => 
            array (
                'id' => 93,
                'role_name' => 'user',
                'menus_id' => 52,
            ),
            93 => 
            array (
                'id' => 94,
                'role_name' => 'admin',
                'menus_id' => 52,
            ),
            94 => 
            array (
                'id' => 95,
                'role_name' => 'user',
                'menus_id' => 53,
            ),
            95 => 
            array (
                'id' => 96,
                'role_name' => 'admin',
                'menus_id' => 53,
            ),
            96 => 
            array (
                'id' => 97,
                'role_name' => 'guest',
                'menus_id' => 54,
            ),
            97 => 
            array (
                'id' => 98,
                'role_name' => 'user',
                'menus_id' => 54,
            ),
            98 => 
            array (
                'id' => 99,
                'role_name' => 'admin',
                'menus_id' => 54,
            ),
            99 => 
            array (
                'id' => 100,
                'role_name' => 'guest',
                'menus_id' => 55,
            ),
            100 => 
            array (
                'id' => 101,
                'role_name' => 'user',
                'menus_id' => 55,
            ),
            101 => 
            array (
                'id' => 102,
                'role_name' => 'admin',
                'menus_id' => 55,
            ),
            102 => 
            array (
                'id' => 103,
                'role_name' => 'guest',
                'menus_id' => 56,
            ),
            103 => 
            array (
                'id' => 104,
                'role_name' => 'user',
                'menus_id' => 56,
            ),
            104 => 
            array (
                'id' => 105,
                'role_name' => 'admin',
                'menus_id' => 56,
            ),
            105 => 
            array (
                'id' => 106,
                'role_name' => 'guest',
                'menus_id' => 57,
            ),
            106 => 
            array (
                'id' => 107,
                'role_name' => 'user',
                'menus_id' => 57,
            ),
            107 => 
            array (
                'id' => 108,
                'role_name' => 'admin',
                'menus_id' => 57,
            ),
            108 => 
            array (
                'id' => 109,
                'role_name' => 'user',
                'menus_id' => 58,
            ),
            109 => 
            array (
                'id' => 110,
                'role_name' => 'admin',
                'menus_id' => 58,
            ),
            110 => 
            array (
                'id' => 111,
                'role_name' => 'admin',
                'menus_id' => 59,
            ),
            111 => 
            array (
                'id' => 112,
                'role_name' => 'admin',
                'menus_id' => 60,
            ),
            112 => 
            array (
                'id' => 113,
                'role_name' => 'admin',
                'menus_id' => 61,
            ),
            113 => 
            array (
                'id' => 114,
                'role_name' => 'admin',
                'menus_id' => 62,
            ),
            114 => 
            array (
                'id' => 115,
                'role_name' => 'admin',
                'menus_id' => 63,
            ),
            115 => 
            array (
                'id' => 116,
                'role_name' => 'admin',
                'menus_id' => 64,
            ),
            116 => 
            array (
                'id' => 117,
                'role_name' => 'admin',
                'menus_id' => 65,
            ),
        ));
        
        
    }
}