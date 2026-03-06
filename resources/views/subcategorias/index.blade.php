@extends('layouts.admin')

@section('main-content')
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Tabela de Subcategorias</h1>
        <a href="{{ route('subcategorias.create') }}" class="btn btn-primary shadow-sm">
            <i class="fas fa-plus fa-sm"></i> Nova Subcategoria
        </a>
    </div>

    <div class="card shadow mb-4">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover" id="sampleTable" width="100%" cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <th>#</th>
                            <th>Nome</th>
                            <th>Categoria Pai</th>
                            <th>Status</th>
                            <th class="text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($subcategorias as $subcategoria)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $subcategoria->name }}</td>
                            <td>
                                <span class="badge badge-info">
                                    {{ $subcategoria->categoria->alias_name ?? 'Sem Categoria' }}
                                </span>
                            </td>
                            <td>
                                <span class="badge badge-{{ $subcategoria->status == 0 ? 'danger' : 'success' }}">
                                    {{ $subcategoria->status == 0 ? "Inativa" : "Ativa" }}
                                </span>
                            </td>
                            <td class="text-center">
                                <a href="{{ route('subcategorias.edit', $subcategoria->id) }}" class="btn btn-info btn-sm">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <form action="{{ route('subcategorias.destroy', $subcategoria->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Excluir subcategoria?')">
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