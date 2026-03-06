@extends('layouts.admin')

@section('main-content')
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Editar Categoria: {{ $categoria->alias_name }}</h1>
        <a href="{{ route('categorias.index') }}" class="btn btn-sm btn-secondary shadow-sm">
            <i class="fas fa-arrow-left fa-sm"></i> Voltar
        </a>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Dados da Categoria</h6>
                </div>
                <div class="card-body">
                    <form method="POST" action="{{ route('categorias.update', $categoria->id) }}" enctype="multipart/form-data">
                        @csrf
                        @method('POST') {{-- Mantenha POST se o seu Controller/Rota estiver assim, ou troque por PUT se mudou no web.php --}}

                        <div class="form-group">
                            <label class="form-control-label">Nome da Categoria</label>
                            <input type="text" name="name" class="form-control" value="{{ $categoria->alias_name }}" required>
                        </div>

                        <div class="form-group">
                            <label>Status</label>
                            <select name="status" class="form-control">
                                <option value="1" {{ $categoria->status == 1 ? 'selected' : '' }}>Ativo</option>
                                <option value="0" {{ $categoria->status == 0 ? 'selected' : '' }}>Inativo</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Imagem Atual</label><br>
                            <img src="{{ $categoria->imagem_url }}" class="img-thumbnail mb-2" width="150">
                            <input type="file" name="image" class="form-control-file">
                        </div>

                        <button type="submit" class="btn btn-primary mt-3">Atualizar Categoria</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection