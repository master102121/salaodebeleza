<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\User;
use App\Facades\Vault; // Certifique-se de que o Facade está correto
use Illuminate\Support\Facades\DB;

class MigrarUsers extends Command
{
    // O comando que você digitará no terminal
    protected $signature = 'vault:migrar-users';
    protected $description = 'Criptografa os dados dos utilizadores que ainda estão em texto limpo';

    public function handle()
    {
        $this->info("🚀 Iniciando Migração de Utilizadores...");

        // Forçamos a chave na sessão para o Vault funcionar no console
        $chaveDesejada = "NOVAPARAISO";
        session(['user_vault_key' => $chaveDesejada]);

        $users = User::all();
        $convertidos = 0;

        foreach ($users as $user) {
            $emailOriginal = $user->getRawOriginal('email');
            $nomeOriginal = $user->getRawOriginal('name');

            // Verifica se o email já está encriptado (presença do separador ::)
            if (!str_contains($emailOriginal, '::')) {

                // Encripta os dados usando o Vault
                $user->name = $nomeOriginal;   // O Mutator do Model fará o encode
                $user->email = $emailOriginal; // O Mutator do Model fará o encode
                $user->save();

                $this->line("✅ ID {$user->id}: {$emailOriginal} ➡️ Encriptado");
                $convertidos++;
            } else {
                $this->line("⏭️ ID {$user->id}: Já estava encriptado.");
            }
        }

        $this->info("---------------------------------------");
        $this->info("Total de utilizadores convertidos: {$convertidos}");

        return Command::SUCCESS;
    }
}
