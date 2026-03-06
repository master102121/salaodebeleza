<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class MenusTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('menus')->delete();
        
        \DB::table('menus')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Dashboard',
                'href' => '/',
                'icon' => 'cil-speedometer',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Settings',
                'href' => NULL,
                'icon' => 'cil-calculator',
                'slug' => 'dropdown',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 2,
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'Notes',
                'href' => '/notes',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 2,
                'menu_id' => 1,
                'sequence' => 3,
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'Users',
                'href' => '/users',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 2,
                'menu_id' => 1,
                'sequence' => 4,
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'Edit menu',
                'href' => '/menu/menu',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 2,
                'menu_id' => 1,
                'sequence' => 5,
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'Edit menu elements',
                'href' => '/menu/element',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 2,
                'menu_id' => 1,
                'sequence' => 6,
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'Edit roles',
                'href' => '/roles',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 2,
                'menu_id' => 1,
                'sequence' => 7,
            ),
            7 => 
            array (
                'id' => 8,
                'name' => 'Media',
                'href' => '/media',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 2,
                'menu_id' => 1,
                'sequence' => 8,
            ),
            8 => 
            array (
                'id' => 9,
                'name' => 'BREAD',
                'href' => '/bread',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 2,
                'menu_id' => 1,
                'sequence' => 9,
            ),
            9 => 
            array (
                'id' => 10,
                'name' => 'Email',
                'href' => '/mail',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 2,
                'menu_id' => 1,
                'sequence' => 10,
            ),
            10 => 
            array (
                'id' => 11,
                'name' => 'Login',
                'href' => '/login',
                'icon' => 'cil-account-logout',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 11,
            ),
            11 => 
            array (
                'id' => 12,
                'name' => 'Register',
                'href' => '/register',
                'icon' => 'cil-account-logout',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 12,
            ),
            12 => 
            array (
                'id' => 13,
                'name' => 'Theme',
                'href' => NULL,
                'icon' => NULL,
                'slug' => 'title',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 13,
            ),
            13 => 
            array (
                'id' => 14,
                'name' => 'Colors',
                'href' => '/colors',
                'icon' => 'cil-drop1',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 14,
            ),
            14 => 
            array (
                'id' => 15,
                'name' => 'Typography',
                'href' => '/typography',
                'icon' => 'cil-pencil',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 15,
            ),
            15 => 
            array (
                'id' => 16,
                'name' => 'Base',
                'href' => NULL,
                'icon' => 'cil-puzzle',
                'slug' => 'dropdown',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 16,
            ),
            16 => 
            array (
                'id' => 17,
                'name' => 'Breadcrumb',
                'href' => '/base/breadcrumb',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 17,
            ),
            17 => 
            array (
                'id' => 18,
                'name' => 'Cards',
                'href' => '/base/cards',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 18,
            ),
            18 => 
            array (
                'id' => 19,
                'name' => 'Carousel',
                'href' => '/base/carousel',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 19,
            ),
            19 => 
            array (
                'id' => 20,
                'name' => 'Collapse',
                'href' => '/base/collapse',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 20,
            ),
            20 => 
            array (
                'id' => 21,
                'name' => 'Forms',
                'href' => '/base/forms',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 21,
            ),
            21 => 
            array (
                'id' => 22,
                'name' => 'Jumbotron',
                'href' => '/base/jumbotron',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 22,
            ),
            22 => 
            array (
                'id' => 23,
                'name' => 'List group',
                'href' => '/base/list-group',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 23,
            ),
            23 => 
            array (
                'id' => 24,
                'name' => 'Navs',
                'href' => '/base/navs',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 24,
            ),
            24 => 
            array (
                'id' => 25,
                'name' => 'Pagination',
                'href' => '/base/pagination',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 25,
            ),
            25 => 
            array (
                'id' => 26,
                'name' => 'Popovers',
                'href' => '/base/popovers',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 26,
            ),
            26 => 
            array (
                'id' => 27,
                'name' => 'Progress',
                'href' => '/base/progress',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 27,
            ),
            27 => 
            array (
                'id' => 28,
                'name' => 'Scrollspy',
                'href' => '/base/scrollspy',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 28,
            ),
            28 => 
            array (
                'id' => 29,
                'name' => 'Switches',
                'href' => '/base/switches',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 29,
            ),
            29 => 
            array (
                'id' => 30,
                'name' => 'Tables',
                'href' => '/base/tables',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 30,
            ),
            30 => 
            array (
                'id' => 31,
                'name' => 'Tabs',
                'href' => '/base/tabs',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 31,
            ),
            31 => 
            array (
                'id' => 32,
                'name' => 'Tooltips',
                'href' => '/base/tooltips',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 16,
                'menu_id' => 1,
                'sequence' => 32,
            ),
            32 => 
            array (
                'id' => 33,
                'name' => 'Buttons',
                'href' => NULL,
                'icon' => 'cil-cursor',
                'slug' => 'dropdown',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 33,
            ),
            33 => 
            array (
                'id' => 34,
                'name' => 'Buttons',
                'href' => '/buttons/buttons',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 33,
                'menu_id' => 1,
                'sequence' => 34,
            ),
            34 => 
            array (
                'id' => 35,
                'name' => 'Buttons Group',
                'href' => '/buttons/button-group',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 33,
                'menu_id' => 1,
                'sequence' => 35,
            ),
            35 => 
            array (
                'id' => 36,
                'name' => 'Dropdowns',
                'href' => '/buttons/dropdowns',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 33,
                'menu_id' => 1,
                'sequence' => 36,
            ),
            36 => 
            array (
                'id' => 37,
                'name' => 'Brand Buttons',
                'href' => '/buttons/brand-buttons',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 33,
                'menu_id' => 1,
                'sequence' => 37,
            ),
            37 => 
            array (
                'id' => 38,
                'name' => 'Charts',
                'href' => '/charts',
                'icon' => 'cil-chart-pie',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 38,
            ),
            38 => 
            array (
                'id' => 39,
                'name' => 'Icons',
                'href' => NULL,
                'icon' => 'cil-star',
                'slug' => 'dropdown',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 39,
            ),
            39 => 
            array (
                'id' => 40,
                'name' => 'CoreUI Icons',
                'href' => '/icon/coreui-icons',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 39,
                'menu_id' => 1,
                'sequence' => 40,
            ),
            40 => 
            array (
                'id' => 41,
                'name' => 'Flags',
                'href' => '/icon/flags',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 39,
                'menu_id' => 1,
                'sequence' => 41,
            ),
            41 => 
            array (
                'id' => 42,
                'name' => 'Brands',
                'href' => '/icon/brands',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 39,
                'menu_id' => 1,
                'sequence' => 42,
            ),
            42 => 
            array (
                'id' => 43,
                'name' => 'Notifications',
                'href' => NULL,
                'icon' => 'cil-bell',
                'slug' => 'dropdown',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 43,
            ),
            43 => 
            array (
                'id' => 44,
                'name' => 'Alerts',
                'href' => '/notifications/alerts',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 43,
                'menu_id' => 1,
                'sequence' => 44,
            ),
            44 => 
            array (
                'id' => 45,
                'name' => 'Badge',
                'href' => '/notifications/badge',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 43,
                'menu_id' => 1,
                'sequence' => 45,
            ),
            45 => 
            array (
                'id' => 46,
                'name' => 'Modals',
                'href' => '/notifications/modals',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 43,
                'menu_id' => 1,
                'sequence' => 46,
            ),
            46 => 
            array (
                'id' => 47,
                'name' => 'Widgets',
                'href' => '/widgets',
                'icon' => 'cil-calculator',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 47,
            ),
            47 => 
            array (
                'id' => 48,
                'name' => 'Extras',
                'href' => NULL,
                'icon' => NULL,
                'slug' => 'title',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 48,
            ),
            48 => 
            array (
                'id' => 49,
                'name' => 'Pages',
                'href' => NULL,
                'icon' => 'cil-star',
                'slug' => 'dropdown',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 49,
            ),
            49 => 
            array (
                'id' => 50,
                'name' => 'Login',
                'href' => '/login',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 49,
                'menu_id' => 1,
                'sequence' => 50,
            ),
            50 => 
            array (
                'id' => 51,
                'name' => 'Register',
                'href' => '/register',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 49,
                'menu_id' => 1,
                'sequence' => 51,
            ),
            51 => 
            array (
                'id' => 52,
                'name' => 'Error 404',
                'href' => '/404',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 49,
                'menu_id' => 1,
                'sequence' => 52,
            ),
            52 => 
            array (
                'id' => 53,
                'name' => 'Error 500',
                'href' => '/500',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 49,
                'menu_id' => 1,
                'sequence' => 53,
            ),
            53 => 
            array (
                'id' => 54,
                'name' => 'Download CoreUI',
                'href' => 'https://coreui.io',
                'icon' => 'cil-cloud-download',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 54,
            ),
            54 => 
            array (
                'id' => 55,
                'name' => 'Try CoreUI PRO',
                'href' => 'https://coreui.io/pro/',
                'icon' => 'cil-layers',
                'slug' => 'link',
                'parent_id' => NULL,
                'menu_id' => 1,
                'sequence' => 55,
            ),
            55 => 
            array (
                'id' => 56,
                'name' => 'Pages',
                'href' => NULL,
                'icon' => '',
                'slug' => 'dropdown',
                'parent_id' => NULL,
                'menu_id' => 2,
                'sequence' => 56,
            ),
            56 => 
            array (
                'id' => 57,
                'name' => 'Dashboard',
                'href' => '/',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 56,
                'menu_id' => 2,
                'sequence' => 57,
            ),
            57 => 
            array (
                'id' => 58,
                'name' => 'Notes',
                'href' => '/notes',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 56,
                'menu_id' => 2,
                'sequence' => 58,
            ),
            58 => 
            array (
                'id' => 59,
                'name' => 'Users',
                'href' => '/users',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 56,
                'menu_id' => 2,
                'sequence' => 59,
            ),
            59 => 
            array (
                'id' => 60,
                'name' => 'Settings',
                'href' => NULL,
                'icon' => '',
                'slug' => 'dropdown',
                'parent_id' => NULL,
                'menu_id' => 2,
                'sequence' => 60,
            ),
            60 => 
            array (
                'id' => 61,
                'name' => 'Edit menu',
                'href' => '/menu/menu',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 60,
                'menu_id' => 2,
                'sequence' => 61,
            ),
            61 => 
            array (
                'id' => 62,
                'name' => 'Edit menu elements',
                'href' => '/menu/element',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 60,
                'menu_id' => 2,
                'sequence' => 62,
            ),
            62 => 
            array (
                'id' => 63,
                'name' => 'Edit roles',
                'href' => '/roles',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 60,
                'menu_id' => 2,
                'sequence' => 63,
            ),
            63 => 
            array (
                'id' => 64,
                'name' => 'Media',
                'href' => '/media',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 60,
                'menu_id' => 2,
                'sequence' => 64,
            ),
            64 => 
            array (
                'id' => 65,
                'name' => 'BREAD',
                'href' => '/bread',
                'icon' => NULL,
                'slug' => 'link',
                'parent_id' => 60,
                'menu_id' => 2,
                'sequence' => 65,
            ),
        ));
        
        
    }
}