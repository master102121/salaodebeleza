@extends('layouts.admin')

@section('main-content')
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">{{ isset($user->id) ? 'Editar Usuário' : 'Cadastrar Usuário' }}</h1>
        <a href="{{ route('usuarios.index') }}" class="btn btn-sm btn-secondary shadow-sm">Voltar</a>
    </div>

    <div class="card shadow mb-4 border-0">
        <div class="card-body p-lg-5">
            <form action="{{ isset($user->id) ? route('usuarios.update', $user->id) : route('usuarios.store') }}" method="POST">
                @csrf
                @if(isset($user->id)) @method('PUT') @endif

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">Nome Completo</label>
                            <input type="text" name="name" class="form-control" value="{{ $user->name ?? '' }}" required>
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">E-mail</label>
                            <input type="email" name="email" class="form-control" value="{{ $user->email ?? '' }}" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">Cidade</label>
                            <input type="text" name="city" class="form-control" value="{{ $user->city ?? '' }}">
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">Área de Atuação</label>
                            <select name="area_id" class="form-control selectarea">
                                <option value="">Selecione...</option>
                                {{-- @foreach($areas as $area) --}}
                                {{-- <option value="{{ $area->id }}" {{ ($user->area_id ?? '') == $area->id ? 'selected' : '' }}>{{ $area->nome }}</option> --}}
                                {{-- @endforeach --}}
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">Senha {{ isset($user->id) ? '(Deixe em branco para não alterar)' : '' }}</label>
                            <input type="password" name="password" class="form-control" {{ isset($user->id) ? '' : 'required' }}>
                        </div>
                    </div>
                </div>

                <hr class="my-4">
                <div class="text-right">
                    <button type="submit" class="btn btn-primary btn-lg px-5 shadow-sm">
                        <i class="fas fa-save mr-2"></i> {{ isset($user->id) ? 'Atualizar Dados' : 'Criar Usuário' }}
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection