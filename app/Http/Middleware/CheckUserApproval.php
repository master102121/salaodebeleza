<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckUserApproval
{
    public function handle(Request $request, Closure $next): Response
    {
        $user = auth()->user();

        // Se logou pelo Gmail, mas NÃO está aprovado pelo admin
        // E não está tentando acessar logout ou perfil (para não dar loop)
        if ($user && $user->by_gmail && !$user->is_approved) {
            if (!$request->is('profile*', 'logout')) {
                return redirect()->route('profile')
                    ->with('error', 'Sua conta via Gmail aguarda liberação do administrador.');
            }
        }

        return $next($request);
    }
}