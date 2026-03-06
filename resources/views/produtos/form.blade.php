@extends('layouts.admin')

@section('main-content')
<div class="container-fluid">

    <x-page-header :title="isset($produto->id) ? 'Editar Produto' : 'Novo Produto'" />

    <form action="{{ isset($produto->id) ? route('produtos.update', $produto->id) : route('produtos.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @if(isset($produto->id)) @method('PUT') @endif

        <div class="row">
            <div class="col-md-8">
                <x-card title="Dados do Produto">
                    <div class="form-group">
                        <label class="text-xs font-weight-bold text-primary text-uppercase">Nome do Produto</label>
                        <input type="text" name="name" class="form-control form-control-lg border-left-primary shadow-sm" 
                               value="{{ old('name') ?? $produto->name ?? '' }}" required>
                    </div>

                    <div class="row mt-3">
                        <div class="col-md-6">
                            <label class="text-xs font-weight-bold text-primary text-uppercase">Categoria</label>
                            <select name="categoria_id" class="form-control selectarea">
                                @foreach($categorias as $categoria)
                                    <option value="{{ $categoria->id }}" {{ ($produto->category_id ?? '') == $categoria->id ? 'selected' : '' }}>
                                        {{ $categoria->alias_name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label class="text-xs font-weight-bold text-primary text-uppercase">Preço de Venda (R$)</label>
                            <input type="text" name="unitprice" class="form-control money font-weight-bold text-dark" 
                                   value="{{ isset($produto->unitprice) ? number_format((float)$produto->unitprice, 2, ',', '.') : '' }}">
                        </div>
                    </div>

                    <div class="form-group mt-3">
                        <label class="text-xs font-weight-bold text-primary text-uppercase">URL da Imagem</label>
                        <textarea name="imgurl" class="form-control" rows="2">{{ $produto->imgurl ?? '' }}</textarea>
                    </div>
                </x-card>
            </div>

            <div class="col-md-4">
                <x-card title="Status e Imagem">
                    <div class="text-center mb-4">
                        <img src="{{ $produto->imgurl ?? asset('img/no-image.png') }}" 
                             class="img-fluid rounded shadow-sm border p-2" style="max-height: 150px;">
                        <div class="mt-2">
                            <input type="file" name="image" class="form-control-file small">
                        </div>
                    </div>

                    <hr>

                    <div class="form-group text-center">
                        <label class="text-xs font-weight-bold text-gray-600 text-uppercase d-block mb-3">Opções</label>
                        <div class="custom-control custom-switch custom-switch-lg mb-2">
                            <input type="checkbox" name="promocional" class="custom-control-input" id="promocional" 
                                   value="1" {{ ($produto->promotional ?? 0) == 1 ? 'checked' : '' }}>
                            <label class="custom-control-label" for="promocional">Preço Promocional</label>
                        </div>
                    </div>
                </x-card>

                <div class="mt-4">
                    <button type="submit" class="btn btn-primary btn-block btn-lg shadow font-weight-bold py-3">
                        <i class="fas fa-save mr-2"></i> {{ isset($produto->id) ? 'Salvar Alterações' : 'Cadastrar Produto' }}
                    </button>
                    <a href="{{ route('produtos.index') }}" class="btn btn-link btn-block text-muted">Cancelar</a>
                </div>
            </div>
        </div>
    </form>
</div>
@endsection