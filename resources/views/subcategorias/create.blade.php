@extends('layouts.admin')

@section('main-content')
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Criar Nova Subcategoria</h6>
                </div>
                <div class="card-body">
                    <form method="POST" action="{{ route('subcategorias.store') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label>Nome da Subcategoria</label>
                            <input type="text" name="name" class="form-control" required placeholder="Ex: Corte Feminino">
                        </div>

                        <div class="form-group">
                            <label>Categoria Principal</label>
                            <select class="form-control" name="category_id" required>
                                <option value="">Selecione uma categoria...</option>
                                @foreach($categorias as $cat)
                                    <option value="{{ $cat->id }}">{{ $cat->alias_name }}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Status</label>
                            <select name="status" class="form-control">
                                <option value="1">Ativa</option>
                                <option value="0">Inativa</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Link da Imagem ou Upload</label>
                            <input type="text" name="imgurl" class="form-control mb-2" placeholder="URL da imagem (opcional)">
                            <input type="file" name="image" class="form-control-file">
                        </div>

                        <button type="submit" class="btn btn-primary btn-block mt-4">Salvar Subcategoria</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection