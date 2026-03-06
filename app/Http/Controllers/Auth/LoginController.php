<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    /**
     * Caminho para onde redirecionar após o login.
     * No Laravel 11, usamos a string direta.
     */
    protected $redirectTo = '/home'; // Ou o caminho da sua dashboard

    public function __construct()
    {
        // Nota: Middleware 'guest' agora é configurado preferencialmente no bootstrap/app.php
        $this->middleware('guest')->except('logout');
    }

    protected function redirectTo()
    {
        session()->flash('success', 'Você está logado!');
        return $this->redirectTo;
    }
}