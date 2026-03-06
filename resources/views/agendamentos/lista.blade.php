@extends('layouts.admin')

@section('main-content')
<main class="app-content">
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Tabela de Agendamentos</h1>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-11">
                <div class="card shadow mb-4 border-0">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between bg-white">
                        <h6 class="m-0 font-weight-bold text-primary">Listagem Geral</h6>
                        <div class="btn-group">
                            <a class="btn btn-primary btn-sm shadow-sm" href="{{ route('agendamentos.create') }}">
                                <i class="fas fa-plus fa-sm text-white-50"></i> Novo Agendamento
                            </a>
                            <a class="btn btn-info btn-sm shadow-sm ml-2" href="{{ route('disponibilidades.index') }}">
                                <i class="fas fa-calendar-alt fa-sm text-white-50"></i> Minhas Disponibilidades
                            </a>
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="text-center mb-4">
                            <img src="{{ asset('img/favicon.png') }}" class="rounded-circle shadow-sm" alt="logo" style="width: 60px;">
                        </div>

                        @if(session('success'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{ session('success') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif

                        @if(count($agendamentos) > 0)
                        <div class="table-responsive">
                            <table id="agendamento_table" class="table table-hover align-items-center" width="100%" cellspacing="0">
                                <thead class="thead-light">
                                    <tr>
                                        <th class="border-0">ID</th>
                                        <th class="border-0">Data e Horário</th>
                                        <th class="border-0">Serviço</th>
                                        <th class="border-0">Cliente / Profissional</th>
                                        <th class="border-0">Valor</th>
                                        <th class="border-0 text-center">Ações</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($agendamentos as $agendamento)
                                    <tr>
                                        <td class="align-middle">#{{ $agendamento->id }}</td>
                                        <td class="align-middle">
                                            <span class="font-weight-bold text-dark">{{ date("d/m/Y", strtotime($agendamento->start_date)) }}</span><br>
                                            <small class="text-muted">
                                                <i class="far fa-clock"></i> 
                                                {{ date("H:i", strtotime($agendamento->start_date)) }} - {{ date("H:i", strtotime($agendamento->end_date)) }}
                                            </small>
                                        </td>
                                        <td class="align-middle">
                                            <span class="badge badge-pill badge-primary-soft text-primary p-2" style="background-color: #eef2f7;">
                                                {{ $agendamento->servico->name }}
                                            </span>
                                            <br><small class="text-truncate d-inline-block" style="max-width: 150px;">{{ $agendamento->descricao }}</small>
                                        </td>
                                        <td class="align-middle">
                                            <div class="d-flex flex-column">
                                                <span><i class="fas fa-user-circle fa-sm text-gray-400"></i> {{ $agendamento->cliente->name }}</span>
                                                <span class="small text-muted"><i class="fas fa-cut fa-sm text-gray-400"></i> {{ $agendamento->profissional->name }}</span>
                                            </div>
                                        </td>
                                        <td class="align-middle font-weight-bold text-success">
                                            R$ {{ number_format($agendamento->valor, 2, ',', '.') }}
                                        </td>
                                        <td class="align-middle text-center">
                                            <div class="btn-group" role="group">
                                                <a href="{{ route('agendamentos.edit', $agendamento->id) }}" class="btn btn-sm btn-outline-primary" title="Editar">
                                                    <i class="fas fa-edit"></i>
                                                </a>
                                                
                                                <form action="{{ route('agendamentos.destroy', $agendamento->id ) }}" method="POST" id="delete-form-{{$agendamento->id}}" style="display:inline">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="button" class="btn btn-sm btn-outline-danger" onclick="deleteTag({{ $agendamento->id }})" title="Excluir">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        @else
                            <div class="text-center py-5">
                                <i class="fas fa-calendar-times fa-3x text-gray-300 mb-3"></i>
                                <p class="text-gray-500">Não há agendamentos cadastrados!</p>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection

@push('js')
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script type="text/javascript">
$(document).ready(function() {
    // Inicialização do DataTable com tradução e estilo
    $('#agendamento_table').DataTable({
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.24/i18n/Portuguese-Brasil.json"
        },
        "order": [[ 0, "desc" ]], // Mostra os mais recentes primeiro
        "pageLength": 10,
        "drawCallback": function() {
            $('.dataTables_paginate > .pagination').addClass('pagination-sm');
        }
    });

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
});

// Função SweetAlert2 atualizada
function deleteTag(id) {
    Swal.fire({
        title: 'Tem certeza?',
        text: "Esta ação não poderá ser revertida!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#4e73df',
        cancelButtonColor: '#e74a3b',
        confirmButtonText: 'Sim, excluir!',
        cancelButtonText: 'Cancelar',
        reverseButtons: true
    }).then((result) => {
        if (result.isConfirmed) {
            document.getElementById('delete-form-' + id).submit();
        }
    })
}
</script>
@endpush