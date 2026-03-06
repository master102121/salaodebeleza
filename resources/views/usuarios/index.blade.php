@extends('layouts.admin')

@section('main-content')
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Gestão de Usuários</h1>
        <a href="{{ route('usuarios.create') }}" class="btn btn-primary btn-sm shadow-sm">
            <i class="fas fa-plus fa-sm"></i> Novo Usuário
        </a>
    </div>

    <div class="card shadow mb-4 border-0">
        <div class="card-body">
            <div class="text-center mb-4">
                @include('logo')
            </div>

            <div class="table-responsive">
                <table class="table table-hover align-items-center" id="sampleTable">
                    <thead class="thead-light">
                        <tr>
                            <th>#</th>
                            <th>Nome</th>
                            <th>Cidade</th>
                            <th class="text-center">Status</th>
                            <th class="text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $user)
                        <tr>
                            <td>{{ $user->id }}</td>
                            <td class="font-weight-bold text-dark">{{ $user->name }}</td>
                            <td>{{ $user->city ?? 'N/A' }}</td>
                            <td class="text-center">
                                <div class="custom-control custom-switch">
                                    <input type="checkbox" class="custom-control-input chkstatus" 
                                           id="status_{{ $user->id }}" data-id="{{ $user->id }}"
                                           {{ $user->liberado ? 'checked' : '' }}>
                                    <label class="custom-control-label" for="status_{{ $user->id }}"></label>
                                </div>
                            </td>
                            <td class="text-center">
                                <div class="btn-group">
                                    <a href="{{ route('usuarios.edit', $user->id) }}" class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <button class="btn btn-sm btn-outline-danger" onclick="deleteUser({{ $user->id }})">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                                <form id="delete-form-{{$user->id}}" action="{{ route('usuarios.destroy', $user->id) }}" method="POST" style="display: none;">
                                    @csrf @method('DELETE')
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

@push('js')
<script>
    // Mesma lógica de confirmação que usamos na lista de agendamentos
    function deleteUser(id) {
        Swal.fire({
            title: 'Excluir Usuário?',
            text: "Esta ação não pode ser desfeita!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#4e73df',
            confirmButtonText: 'Sim, excluir!'
        }).then((result) => {
            if (result.isConfirmed) document.getElementById('delete-form-' + id).submit();
        });
    }
</script>
@endpush