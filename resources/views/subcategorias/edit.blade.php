@extends('layouts.admin')

@section('main-content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Editar Subcategoria</h1>
</div>

<div class="card shadow mb-4">
    <div class="card-body">
        <form method="POST" action="{{ route('subcategorias.update', $subcategoria->id) }}">
            @csrf
            @method('PUT')

            <div class="row">
                <div class="form-group col-md-6">
                    <label>Nome da Subcategoria</label>
                    <input type="text" name="name" value="{{ $subcategoria->name }}" class="form-control" required>
                </div>

                <div class="form-group col-md-6">
                    <label>Categoria Pai</label>
                    <select class="form-control" name="category_id" required>
                        @foreach($categorias as $categoria)
                            <option value="{{ $categoria->id }}" {{ $subcategoria->category_id == $categoria->id ? 'selected' : '' }}>
                                {{ $categoria->alias_name }}
                            </option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-6">
                    <label>Status</label>
                    <select name="status" class="form-control">
                        <option value="1" {{ $subcategoria->status == 1 ? 'selected' : '' }}>Ativo</option>
                        <option value="0" {{ $subcategoria->status == 0 ? 'selected' : '' }}>Inativo</option>
                    </select>
                </div>

                <div class="form-group col-md-6">
                    <label>URL da Imagem</label>
                    <input type="text" name="imgurl" value="{{ $subcategoria->imgurl }}" class="form-control">
                </div>
            </div>

            <button type="submit" class="btn btn-primary mt-3">Atualizar Subcategoria</button>
        </form>
    </div>
</div>
@endsection