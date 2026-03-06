<?php

namespace App\Console\Commands;

use App\Mail\EditalExpirandoMail;
use App\Models\Edital;
use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class NotificarEditaisExpirando extends Command
{
    protected $signature   = 'editais:notificar-expirando {--dias=7 : Quantos dias antes de notificar}';
    protected $description = 'Envia e-mail para admins sobre editais próximos do vencimento';

    public function handle(): int
    {
        $dias = (int) $this->option('dias');

        // Busca editais ativos que vencem nos próximos X dias
        $editais = Edital::with('category')
            ->where('status', 'active')
            ->whereNotNull('expires_at')
            ->whereDate('expires_at', '>=', now()->toDateString())
            ->whereDate('expires_at', '<=', now()->addDays($dias)->toDateString())
            ->get();

        if ($editais->isEmpty()) {
            $this->info("Nenhum edital expirando nos próximos {$dias} dias.");
            return self::SUCCESS;
        }

        // Destinatários: todos os admins
        $admins = User::where('is_admin', true)->get();

        if ($admins->isEmpty()) {
            $this->warn('Nenhum administrador cadastrado para receber notificações.');
            return self::SUCCESS;
        }

        $this->info("Encontrados {$editais->count()} edital(is) expirando. Notificando {$admins->count()} admin(s)...");

        $enviados = 0;

        foreach ($editais as $edital) {
            $diasRestantes = (int) now()->diffInDays($edital->expires_at, false);
            $diasRestantes = max(0, $diasRestantes);

            foreach ($admins as $admin) {
                try {
                    Mail::to($admin->email)->send(
                        new EditalExpirandoMail($edital, $diasRestantes)
                    );
                    $enviados++;
                    $this->line("  ✅ [{$admin->email}] {$edital->title} — {$diasRestantes} dia(s)");
                } catch (\Exception $e) {
                    $this->error("  ❌ Erro ao enviar para {$admin->email}: {$e->getMessage()}");
                }
            }
        }

        $this->info("\n{$enviados} e-mail(s) enviado(s) com sucesso!");
        return self::SUCCESS;
    }
}
