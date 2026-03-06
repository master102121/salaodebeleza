@extends('layouts.admin')

@section('main-content')
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">
            <i class="fas fa-th text-primary"></i> Tabela de Categorias
        </h1>
        <a href="{{ route('categorias.create') }}" class="btn btn-primary btn-icon-split shadow-sm">
            <span class="icon text-white-50"><i class="fas fa-plus"></i></span>
            <span class="text">Nova Categoria</span>
        </a>
    </div>

    @if(session('message'))
        <div class="alert alert-{{ session('alerta') ?? 'success' }} alert-dismissible fade show" role="alert">
            {{ session('message') }}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover table-bordered" id="sampleTable" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th>#</th>
                            <th>Nome do Categoria</th>
                            <th>Status</th>
                            <th class="text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($categorias as $categoria)
                            @if($categoria->id == 1) @continue @endif
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $categoria->alias_name }}</td>
                                <td>
                                    <span class="badge badge-{{ $categoria->status == 0 ? 'danger' : 'success' }}">
                                        {{ $categoria->status == 0 ? "Inativa" : "Ativa" }}
                                    </span>
                                </td>
                                <td class="text-center">
                                    <a href="{{ route('categorias.edit', $categoria->id) }}" class="btn btn-info btn-circle btn-sm shadow-sm" title="Editar">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <form action="{{ route('categorias.destroy', $categoria->id) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-circle btn-sm shadow-sm" onclick="return confirm('Tem certeza?')" title="Excluir">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection