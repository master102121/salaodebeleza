<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Artisan;

class GerarTodasAsSeeds extends Command
{
    protected $signature = 'db:generate-all-seeds';
    protected $description = 'Gera seeders para todas as tabelas do banco beautymanager';

    public function handle()
    {
        // Lista de tabelas para ignorar
        $ignore = ['migrations', 'failed_jobs', 'password_resets', 'personal_access_tokens', 'cache', 'sessions'];

        // Pega todas as tabelas do banco
        $tables = collect(DB::select('SHOW TABLES FROM beautymanager'))
            ->map(fn($t) => current((array)$t))
            ->reject(fn($n) => in_array($n, $ignore));

        $this->info("Iniciando geração de seeds para " . $tables->count() . " tabelas...");

        foreach ($tables as $table) {
            $this->line("Gerando para: $table");
            
            try {
                // Chama o iseed passando o nome da tabela como argumento
                Artisan::call('iseed', [
                    'tables' => $table, 
                    '--force' => true
                ]);
            } catch (\Exception $e) {
                $this->error("Erro na tabela $table: " . $e->getMessage());
            }
        }

        $this->info("Finalizado! Verifique a pasta database/seeders.");
    }

    /*
    php artisan db:generate-all-seeds
    	administradores
	agendamentos
	ajustes
	Android
	appointments
	areas
	bookings
	categories
	clients
	convenios
	coresdosistemas
	dadoslinks
	daysons
	disponible_days
	email_template
	especialidades
	failed_jobs
	features
	files
	financeiros
	folder
	form
	form_field
	listadeespecialidades
	logotipoeimagems
	meals
	media
	medicos
	menulist
	menus
	menu_role
	migrations
	model_has_permissions
	model_has_roles
	notes
	notifications
	oauth_access_tokens
	oauth_auth_codes
	oauth_clients
	oauth_personal_access_clients
	oauth_refresh_tokens
	password_resets
	periodos
	permissions
	personal_access_tokens
	plantonistas
	product_items	
	roles
	role_has_permissions
	role_hierarchy	
	semanais
	servicos
	status
	subcategory
	subscribers
	subscriptions
	subscription_items
	times
	users
	valoreseservicos
    */
}