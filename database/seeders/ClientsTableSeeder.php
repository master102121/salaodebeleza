<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class ClientsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('clients')->delete();
        
        \DB::table('clients')->insert(array (
            0 => 
            array (
                'id' => 1,
                'file_id' => NULL,
                'name' => 'Mr. Maxwell Fahey MD',
                'city' => 'East Mauriceside',
                'company' => 'Walter-Stracke',
                'progress' => 26,
                'created_at' => '2025-01-28 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            1 => 
            array (
                'id' => 2,
                'file_id' => NULL,
                'name' => 'Kara Schoen',
                'city' => 'Lake Braxton',
                'company' => 'Schmitt-Emmerich',
                'progress' => 89,
                'created_at' => '2025-02-09 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            2 => 
            array (
                'id' => 3,
                'file_id' => NULL,
                'name' => 'Katrina Metz',
                'city' => 'Gerlachland',
                'company' => 'Marquardt-Rempel',
                'progress' => 55,
                'created_at' => '2025-04-15 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            3 => 
            array (
                'id' => 4,
                'file_id' => NULL,
                'name' => 'Kathryn Kemmer III',
                'city' => 'Port Audreyton',
                'company' => 'Brekke LLC',
                'progress' => 90,
                'created_at' => '2025-03-28 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            4 => 
            array (
                'id' => 5,
                'file_id' => NULL,
                'name' => 'Michele Douglas',
                'city' => 'North Carrieville',
                'company' => 'Kautzer, Fritsch and Nader',
                'progress' => 80,
                'created_at' => '2025-02-26 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            5 => 
            array (
                'id' => 6,
                'file_id' => NULL,
                'name' => 'Dixie Hintz',
                'city' => 'Murphyfort',
                'company' => 'Boyer Group',
                'progress' => 32,
                'created_at' => '2025-03-29 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            6 => 
            array (
                'id' => 7,
                'file_id' => NULL,
                'name' => 'Adeline Schowalter',
                'city' => 'Myastad',
                'company' => 'Emmerich, Vandervort and Koss',
                'progress' => 53,
                'created_at' => '2025-03-19 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            7 => 
            array (
                'id' => 8,
                'file_id' => NULL,
                'name' => 'Jeramie Cremin',
                'city' => 'Devanview',
                'company' => 'Bode, Wolff and Barrows',
                'progress' => 79,
                'created_at' => '2025-05-07 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            8 => 
            array (
                'id' => 9,
                'file_id' => NULL,
                'name' => 'Terrell Powlowski',
                'city' => 'Conniebury',
                'company' => 'Kerluke and Sons',
                'progress' => 39,
                'created_at' => '2025-04-02 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            9 => 
            array (
                'id' => 10,
                'file_id' => NULL,
                'name' => 'Brielle Rosenbaum',
                'city' => 'North Harley',
                'company' => 'Kilback Ltd',
                'progress' => 78,
                'created_at' => '2025-05-13 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            10 => 
            array (
                'id' => 11,
                'file_id' => NULL,
                'name' => 'Meggie Smith',
                'city' => 'Kaleymouth',
                'company' => 'Treutel, Turner and Willms',
                'progress' => 47,
                'created_at' => '2025-02-04 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            11 => 
            array (
                'id' => 12,
                'file_id' => NULL,
                'name' => 'Dr. Thurman Schneider MD',
                'city' => 'West Aidenborough',
                'company' => 'Cronin, Lang and Daniel',
                'progress' => 56,
                'created_at' => '2025-01-20 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            12 => 
            array (
                'id' => 13,
                'file_id' => NULL,
                'name' => 'Alysson Bins',
                'city' => 'East Johnnie',
                'company' => 'Quitzon PLC',
                'progress' => 44,
                'created_at' => '2025-05-21 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            13 => 
            array (
                'id' => 14,
                'file_id' => NULL,
                'name' => 'Brian Bernhard',
                'city' => 'Port Brandi',
                'company' => 'Kohler, Hickle and O\'Reilly',
                'progress' => 45,
                'created_at' => '2025-05-24 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            14 => 
            array (
                'id' => 15,
                'file_id' => NULL,
                'name' => 'Zena Corwin Sr.',
                'city' => 'Kacieland',
                'company' => 'Weissnat-Kshlerin',
                'progress' => 46,
                'created_at' => '2025-03-11 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            15 => 
            array (
                'id' => 16,
                'file_id' => NULL,
                'name' => 'Prof. Jeromy VonRueden',
                'city' => 'Simonisville',
                'company' => 'Hamill, Balistreri and Braun',
                'progress' => 43,
                'created_at' => '2025-03-15 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            16 => 
            array (
                'id' => 17,
                'file_id' => NULL,
                'name' => 'Prof. Maria Ritchie Jr.',
                'city' => 'Port Mckennahaven',
                'company' => 'Beier, Corkery and Turner',
                'progress' => 66,
                'created_at' => '2025-12-23 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            17 => 
            array (
                'id' => 18,
                'file_id' => NULL,
                'name' => 'Dr. Leland Bernhard',
                'city' => 'Kacieborough',
                'company' => 'Miller and Sons',
                'progress' => 51,
                'created_at' => '2025-02-13 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            18 => 
            array (
                'id' => 19,
                'file_id' => NULL,
                'name' => 'Dario Hudson',
                'city' => 'Adrientown',
                'company' => 'Weissnat-Carroll',
                'progress' => 53,
                'created_at' => '2025-12-07 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            19 => 
            array (
                'id' => 20,
                'file_id' => NULL,
                'name' => 'Agnes Kerluke I',
                'city' => 'Port Claudehaven',
                'company' => 'Block and Sons',
                'progress' => 28,
                'created_at' => '2025-04-10 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            20 => 
            array (
                'id' => 21,
                'file_id' => NULL,
                'name' => 'Randall Hauck',
                'city' => 'East Robbchester',
                'company' => 'Stokes-Yost',
                'progress' => 95,
                'created_at' => '2025-05-02 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            21 => 
            array (
                'id' => 22,
                'file_id' => NULL,
                'name' => 'Ms. Janessa Schaden DDS',
                'city' => 'New Bettiefurt',
                'company' => 'Oberbrunner Inc',
                'progress' => 63,
                'created_at' => '2025-05-15 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            22 => 
            array (
                'id' => 23,
                'file_id' => NULL,
                'name' => 'Mr. Florencio Borer DDS',
                'city' => 'Karleefort',
                'company' => 'Paucek LLC',
                'progress' => 70,
                'created_at' => '2025-05-08 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            23 => 
            array (
                'id' => 24,
                'file_id' => NULL,
                'name' => 'Guiseppe Labadie',
                'city' => 'Port Christiana',
                'company' => 'White LLC',
                'progress' => 93,
                'created_at' => '2025-12-14 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            24 => 
            array (
                'id' => 25,
                'file_id' => NULL,
                'name' => 'Dr. Araceli Mueller',
                'city' => 'Port Arelymouth',
                'company' => 'Padberg Ltd',
                'progress' => 38,
                'created_at' => '2025-12-06 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            25 => 
            array (
                'id' => 26,
                'file_id' => NULL,
                'name' => 'Ashlee Williamson II',
                'city' => 'Cloydtown',
                'company' => 'Heathcote, Lemke and Rodriguez',
                'progress' => 85,
                'created_at' => '2025-01-31 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            26 => 
            array (
                'id' => 27,
                'file_id' => NULL,
                'name' => 'Mozell Rempel DVM',
                'city' => 'Santiagoside',
                'company' => 'Kerluke-Koss',
                'progress' => 33,
                'created_at' => '2025-03-30 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            27 => 
            array (
                'id' => 28,
                'file_id' => NULL,
                'name' => 'Miss Carlee Wiegand PhD',
                'city' => 'Ethashire',
                'company' => 'Lehner, Satterfield and Kutch',
                'progress' => 73,
                'created_at' => '2025-04-13 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            28 => 
            array (
                'id' => 29,
                'file_id' => NULL,
                'name' => 'Rylan Wehner',
                'city' => 'West Bradyport',
                'company' => 'Eichmann, Zemlak and O\'Reilly',
                'progress' => 84,
                'created_at' => '2025-03-26 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            29 => 
            array (
                'id' => 30,
                'file_id' => NULL,
                'name' => 'Dr. Lawson Bednar',
                'city' => 'Estefanialand',
                'company' => 'Rice, Runolfsdottir and King',
                'progress' => 78,
                'created_at' => '2025-04-14 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            30 => 
            array (
                'id' => 31,
                'file_id' => NULL,
                'name' => 'Rico Leannon',
                'city' => 'Grahammouth',
                'company' => 'Boyle-King',
                'progress' => 48,
                'created_at' => '2025-03-08 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            31 => 
            array (
                'id' => 32,
                'file_id' => NULL,
                'name' => 'Cristobal Kohler',
                'city' => 'Kasandraland',
                'company' => 'Paucek Group',
                'progress' => 70,
                'created_at' => '2025-03-24 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            32 => 
            array (
                'id' => 33,
                'file_id' => NULL,
                'name' => 'Leann Carter',
                'city' => 'New Elliothaven',
                'company' => 'Dooley and Sons',
                'progress' => 55,
                'created_at' => '2025-04-08 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            33 => 
            array (
                'id' => 34,
                'file_id' => NULL,
                'name' => 'Murphy Homenick',
                'city' => 'Millerview',
                'company' => 'Hegmann, Murazik and Kozey',
                'progress' => 27,
                'created_at' => '2025-04-22 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            34 => 
            array (
                'id' => 35,
                'file_id' => NULL,
                'name' => 'Kaleb Schroeder',
                'city' => 'East Danikaview',
                'company' => 'Hamill and Sons',
                'progress' => 63,
                'created_at' => '2025-02-23 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            35 => 
            array (
                'id' => 36,
                'file_id' => NULL,
                'name' => 'Mr. Raymond Fritsch',
                'city' => 'New Idahaven',
                'company' => 'Dickinson-Auer',
                'progress' => 41,
                'created_at' => '2025-01-25 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            36 => 
            array (
                'id' => 37,
                'file_id' => NULL,
                'name' => 'Nyasia Walker',
                'city' => 'Dockshire',
                'company' => 'Hagenes Inc',
                'progress' => 39,
                'created_at' => '2025-01-29 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            37 => 
            array (
                'id' => 38,
                'file_id' => NULL,
                'name' => 'Xander Block',
                'city' => 'Lake Lincolnchester',
                'company' => 'Wolff-Collier',
                'progress' => 83,
                'created_at' => '2025-03-21 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            38 => 
            array (
                'id' => 39,
                'file_id' => NULL,
                'name' => 'Yoshiko Becker MD',
                'city' => 'Brandtchester',
                'company' => 'Nienow-Schimmel',
                'progress' => 58,
                'created_at' => '2025-02-27 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            39 => 
            array (
                'id' => 40,
                'file_id' => NULL,
                'name' => 'Dr. Yoshiko Reichert',
                'city' => 'Ashlyborough',
                'company' => 'Fisher PLC',
                'progress' => 45,
                'created_at' => '2025-04-05 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            40 => 
            array (
                'id' => 41,
                'file_id' => NULL,
                'name' => 'Sophia Wunsch',
                'city' => 'East Dusty',
                'company' => 'Fadel and Sons',
                'progress' => 77,
                'created_at' => '2025-02-23 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            41 => 
            array (
                'id' => 42,
                'file_id' => NULL,
                'name' => 'Rosa Sanford DVM',
                'city' => 'Mrazberg',
                'company' => 'Little, Prohaska and Kessler',
                'progress' => 63,
                'created_at' => '2025-01-25 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            42 => 
            array (
                'id' => 43,
                'file_id' => NULL,
                'name' => 'Melody Marvin',
                'city' => 'West Jadenstad',
                'company' => 'O\'Hara-Larson',
                'progress' => 33,
                'created_at' => '2025-03-17 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            43 => 
            array (
                'id' => 44,
                'file_id' => NULL,
                'name' => 'Carley Gorczany',
                'city' => 'Rashawnview',
                'company' => 'Gislason-Larson',
                'progress' => 67,
                'created_at' => '2025-03-19 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            44 => 
            array (
                'id' => 45,
                'file_id' => NULL,
                'name' => 'Ewald Wisoky',
                'city' => 'Rippinbury',
                'company' => 'Kohler, Kuvalis and Keebler',
                'progress' => 85,
                'created_at' => '2025-03-22 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            45 => 
            array (
                'id' => 46,
                'file_id' => NULL,
                'name' => 'Wilton Turner Jr.',
                'city' => 'Thompsonview',
                'company' => 'Spinka, Mohr and Purdy',
                'progress' => 94,
                'created_at' => '2025-03-25 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            46 => 
            array (
                'id' => 47,
                'file_id' => NULL,
                'name' => 'Agustin White Jr.',
                'city' => 'South Rafaela',
                'company' => 'McClure, Feeney and Hodkiewicz',
                'progress' => 72,
                'created_at' => '2025-03-30 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            47 => 
            array (
                'id' => 48,
                'file_id' => NULL,
                'name' => 'Stephon Hilpert',
                'city' => 'North Amaraton',
                'company' => 'Waelchi, Jacobson and Hill',
                'progress' => 74,
                'created_at' => '2025-03-30 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            48 => 
            array (
                'id' => 49,
                'file_id' => NULL,
                'name' => 'Mike Lueilwitz Jr.',
                'city' => 'Schinnermouth',
                'company' => 'Cronin, O\'Connell and Kessler',
                'progress' => 30,
                'created_at' => '2025-04-03 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
            49 => 
            array (
                'id' => 50,
                'file_id' => NULL,
                'name' => 'Dominique Dietrich',
                'city' => 'Marksborough',
                'company' => 'Goldner Ltd',
                'progress' => 37,
                'created_at' => '2025-12-13 14:12:22',
                'updated_at' => '2025-06-01 14:12:22',
            ),
        ));
        
        
    }
}