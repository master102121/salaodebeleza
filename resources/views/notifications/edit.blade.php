@extends('layouts.admin')

@section('main-content')
<div class="container-fluid">
    
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Editar Registro</h1>
        <a href="{{ route('especialidades.index') }}" class="btn btn-sm btn-secondary shadow-sm">
            <i class="fas fa-arrow-left fa-sm mr-1"></i> Voltar
        </a>
    </div>

    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card shadow mb-4">
                <div class="card-body">
                    <div class="text-center mb-4">
                        <img src="{{ asset('img/favicon.png') }}" class="rounded-circle shadow-sm" style="width: 60px;">
                        <h5 class="font-weight-bold mt-2">Ajustar Especialidade</h5>
                    </div>

                    <form method="POST" action="{{ route($tabela.'.update') }}" autocomplete="off">
                        @csrf
                        <input type="hidden" name="id" value="{{ $user->id }}">

                        <div class="row">
                            <div class="col-lg-8">
                                <div class="form-group focused">
                                    <label class="form-control-label font-weight-bold" for="name text-dark">Nome da Especialidade<span class="small text-danger">*</span></label>
                                    <input type="text" id="name" class="form-control shadow-sm" name="name" value="{{ $user->nome }}">
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="form-group focused">
                                    <label class="form-control-label font-weight-bold text-dark" for="status">Status Atual</label>
                                    <select id="status" class="form-control shadow-sm" name="status">
                                        <option value="1" {{ $user->status == 1 ? 'selected' : '' }}>🟢 Ativo</option>
                                        <option value="0" {{ $user->status == 0 ? 'selected' : '' }}>🔴 Inativo</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <div class="row">
                            <div class="col text-center">
                                <button type="submit" class="btn btn-primary btn-lg px-5 shadow">
                                    <i class="fas fa-save mr-2"></i> Salvar Alterações
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection