<?php

namespace App\Console\Commands;

use App\Mail\EditalVencendoMail;
use App\Models\Edital;
use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class NotificarEditaisVencendo extends Command
{
    protected $signature = 'editais:notificar-vencimento
                            {--dias=7 : Notificar editais que vencem nos próximos X dias}
                            {--force : Enviar mesmo que já notificado hoje}';

    protected $description = 'Envia e-mail para admins sobre editais próximos do vencimento';

    public function handle(): int
    {
        $dias = (int) $this->option('dias');

        $this->info("🔍 Verificando editais que vencem nos próximos {$dias} dias...");

        // Busca editais ativos que vencem no período configurado
        $editais = Edital::where('status', 'active')
            ->whereNotNull('expires_at')
            ->whereBetween('expires_at', [
                now()->startOfDay(),
                now()->addDays($dias)->endOfDay(),
            ])
            ->with('category')
            ->orderBy('expires_at')
            ->get();

        if ($editais->isEmpty()) {
            $this->info('✅ Nenhum edital vencendo no período.');
            return self::SUCCESS;
        }

        $this->info("⚠️  {$editais->count()} edital(is) encontrado(s):");

        // Busca todos os admins
        $admins = User::where('is_admin', true)->get();

        if ($admins->isEmpty()) {
            $this->error('❌ Nenhum administrador cadastrado para receber notificações.');
            return self::FAILURE;
        }

        foreach ($editais as $edital) {
            $diasRestantes = (int) now()->startOfDay()->diffInDays($edital->expires_at->startOfDay());

            $this->line("  📄 {$edital->title} — vence em {$diasRestantes} dia(s)");

            foreach ($admins as $admin) {
                try {
                    Mail::to($admin->email)
                        ->send(new EditalVencendoMail($edital, $diasRestantes));

                    $this->line("     ✉️  Enviado para {$admin->email}");
                } catch (\Exception $e) {
                    $this->error("     ❌ Falha ao enviar para {$admin->email}: {$e->getMessage()}");
                }
            }
        }

        $this->newLine();
        $this->info("✅ Notificações enviadas com sucesso!");

        return self::SUCCESS;
    }
}
