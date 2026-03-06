<?php

use Illuminate\Support\Facades\Schedule;

// ============================================================
// Moraes Editais — Tarefas Agendadas
// ============================================================
// Para ativar o scheduler, adicione ao crontab do servidor:
//   * * * * * cd /caminho/do/projeto && php artisan schedule:run >> /dev/null 2>&1
// ============================================================

// 7 dias antes: aviso antecipado
Schedule::command('editais:notificar-expirando --dias=7')
    ->dailyAt('08:00')
    ->withoutOverlapping()
    ->appendOutputTo(storage_path('logs/notificacoes.log'));

// 3 dias antes: alerta
Schedule::command('editais:notificar-expirando --dias=3')
    ->dailyAt('08:05')
    ->withoutOverlapping()
    ->appendOutputTo(storage_path('logs/notificacoes.log'));

// 1 dia antes: urgente
Schedule::command('editais:notificar-expirando --dias=1')
    ->dailyAt('08:10')
    ->withoutOverlapping()
    ->appendOutputTo(storage_path('logs/notificacoes.log'));
