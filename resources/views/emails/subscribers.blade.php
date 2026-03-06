@component('mail::message')
# Você solicitou mudar a senha?
Olá {{$email}},
Seu número de recuperação é. {{ $codigo}}
@component('mail::button', ['url' => 'https://marcospaulo.shop'])
Gerente da Beleza
@endcomponent
Somos muito gratos,<br>
{{ config('app.name') }}
@endcomponent
