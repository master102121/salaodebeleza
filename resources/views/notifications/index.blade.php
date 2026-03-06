@extends('layouts.admin')

@section('main-content')
<div class="container-fluid">

    {{-- Cabeçalho seguindo o padrão --}}
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">{{ __('Histórico de Pushs') }}</h1>
        <a href="{{ route('notifications.create') }}" class="btn btn-primary shadow-sm">
            <i class="fas fa-plus fa-sm text-white-50 mr-1"></i> Nova Notificação
        </a>
    </div>

    @if (session('success'))
        <div class="alert alert-success border-left-success alert-dismissible fade show shadow" role="alert">
            {{ session('success') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        </div>
    @endif

    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="text-center mb-4">
                @include("logo")
                <h5 class="font-weight-bold mt-2 text-primary">Log de Envios</h5>
            </div>

            <div class="table-responsive">
                <table class="table table-hover" id="sampleTable" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th class="text-center">#</th>
                            <th>Mensagem</th>
                            <th>Data/Hora</th>
                            <th><i class="fas fa-user-tag"></i> Destinatário</th>
                            <th><i class="fas fa-user-shield"></i> Autor</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php $i = 1; @endphp
                        @forelse($notifications as $notification)
                        <tr>
                            <td class="text-center font-weight-bold">{{ $i++ }}</td>
                            <td><span class="text-dark">{{ $notification->texto }}</span></td>
                            <td><small class="text-muted">{{ date("d/m/Y H:i:s", strtotime($notification->created_at)) }}</small></td>
                            <td><span class="badge badge-info">{{ $notification->user->name }}</span></td>
                            <td><span class="badge badge-light border">{{ $notification->sender->name }}</span></td>
                        </tr>
                        @empty
                        <tr>
                            <td colspan="5" class="text-center py-4 text-muted">Nenhuma notificação encontrada no histórico.</td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection