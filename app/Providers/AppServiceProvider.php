<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Gate;
use Illuminate\Filesystem\FilesystemAdapter;
use League\Flysystem\Filesystem;
use Masbug\Flysystem\GoogleDriveAdapter;
use Google\Client;
use Google\Service\Drive;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\URL;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Forçar HTTPS em produção (Evita o erro de redirect_uri_mismatch no free.nf)
        if (app()->environment('production') || config('app.env') === 'production') {
            URL::forceScheme('https');
        }

        // Gate: somente admins acessam gestão de usuários
        Gate::define('admin', function ($user) {
            return $user->is_admin === true;
        });

        Storage::extend('google', function ($app, $config) {
    $client = new \Google\Client();
    $client->setAuthConfig(storage_path('app/google-drive.json'));
    $client->addScope(\Google\Service\Drive::DRIVE);
    $client->addScope(\Google\Service\Drive::DRIVE_FILE);

    $service = new \Google\Service\Drive($client);
    
    // ID da pasta que o robô criou (o que termina em KXUM)
    $folderId = trim($config['folderId'] ?? env('GOOGLE_DRIVE_FOLDER_ID'));

    $adapter = new \Masbug\Flysystem\GoogleDriveAdapter($service, $folderId);
    
    return new FilesystemAdapter(
        new Filesystem($adapter, $config),
        $adapter,
        $config
    );
});

    }
}
