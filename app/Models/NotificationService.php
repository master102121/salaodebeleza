<?php

namespace App\Services;

use App\Models\Notification;
use App\Models\User;
use Auth;
use Notifications\OneSignal as OneSignalPush;

class NotificationService
{
    /**
     * Envia um Push via OneSignal e registra no banco local.
     */
    public function sendPush(User $recipient, string $message, array $extraData = [])
    {
        if (!$recipient->Onesignal_device_id) {
            return ['success' => false, 'error' => 'Usuário sem Device ID'];
        }

        try {
            // 1. Dispara para o OneSignal
            OneSignalPush::sendNotificationToUser(
                $message,
                $recipient->Onesignal_device_id,
                $url = null,
                $extraData
            );

            // 2. Registra no Histórico (tabela notifications)
            Notification::create([
                'player_id' => $recipient->Onesignal_device_id,
                'texto'     => $message,
                'user_id'   => $recipient->id,
                'sended_by' => Auth::id(),
            ]);

            return ['success' => true];
        } catch (\Exception $e) {
            \Log::error("Erro OneSignal: " . $e->getMessage());
            return ['success' => false, 'error' => $e->getMessage()];
        }
    }
}