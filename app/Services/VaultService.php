<?php

namespace App\Services;

use Illuminate\Support\Facades\Session;
use Master102121\Encriptor\SaltCrypt;

class VaultService {
    
    protected function getFinalKey() 
    {
        // O Laravel gerencia sessões de forma muito mais segura
        $userKey = Session::get('user_vault_key');
        
        if (empty($userKey)) {
            return null;
        }

        $srvKey = config('app.vault_key');

        // Mantendo sua lógica de hash para garantir os 16 bytes
        return substr(hash('sha256', $srvKey . $userKey), 0, 16);
    }

    public function decode($value) 
    {
        if (empty($value)) return $value;

        $finalKey = $this->getFinalKey();
        if (!$finalKey) return "[Cofre Trancado]";

        try {
            $scp = new SaltCrypt($finalKey, $value);
            $result = $scp->decrypt($value);
            
            return $result ?: "[Chave Incorreta]";
        } catch (\Exception $e) {
            return "[Erro de Formato]"; 
        }
    }

    public function encode($value) 
    {
        if (empty($value)) return "";
        
        $finalKey = $this->getFinalKey();
        if (!$finalKey) return $value;

        try {
            $scp = new SaltCrypt($finalKey, $value);
            return $scp->encrypt();
        } catch (\Exception $e) {
            return $value;
        }
    }
}