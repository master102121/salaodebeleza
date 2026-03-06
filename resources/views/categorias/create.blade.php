@extends('layouts.admin')

@section('main-content')
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Nova Categoria</h1>
        <a href="{{ route('categorias.index') }}" class="btn btn-sm btn-secondary shadow-sm">
            <i class="fas fa-chevron-left fa-sm"></i> Voltar
        </a>
    </div>

    <div class="row">
        <div class="col-lg-8 offset-lg-2">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Preencha os dados abaixo</h6>
                </div>
                <div class="card-body">
                    <form method="POST" action="{{ route('categorias.store') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group mb-4">
                            <label class="font-weight-bold">Nome da Categoria</label>
                            <input type="text" name="name" class="form-control" placeholder="Informe o nome da categoria" required>
                        </div>

                        <div class="form-group mb-4">
                            <label class="font-weight-bold">Status</label>
                            <select name="status" class="form-control">
                                <option value="1">Ativo</option>
                                <option value="0">Inativo</option>
                            </select>
                        </div>

                        <div class="form-group mb-4">
                            <label class="font-weight-bold">Imagem da Categoria</label>
                            <div class="custom-file">
                                <input type="file" name="image" class="custom-file-input" id="customFile">
                                <label class="custom-file-label" for="customFile">Escolher arquivo...</label>
                            </div>
                        </div>

                        <hr>

                        <div class="text-right">
                            <button class="btn btn-primary px-5 shadow" type="submit">
                                <i class="fas fa-save mr-2"></i> Salvar Categoria
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
<script>
    // Script para mostrar o nome do arquivo selecionado no input customizado
    $(".custom-file-input").on("change", function() {
      var fileName = $(this).val().split("\\").pop();
      $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
@endpush