@extends('layouts.admin')

@section('main-content')
    <div class="container-fluid">

        <x-page-header :title="isset($servico->id) ? 'Editar Serviço' : 'Novo Serviço'" />

        <x-card>
            <form action="{{ isset($servico->id) ? route('servicos.update', $servico->id) : route('servicos.store') }}"
                method="POST">
                @csrf
                @if (isset($servico->id))
                    @method('PUT')
                @endif

                <div class="row">
                    <div class="col-md-7">
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">NOME DO SERVIÇO <span
                                    class="text-danger">*</span></label>
                            <input type="text" name="name" class="form-control" value="{{ $servico->name ?? '' }}"
                                placeholder="Ex: Corte de Cabelo Masculino" required>
                        </div>

                        <div class="form-group">
                            <label class="font-weight-bold text-primary">DESCRIÇÃO (OPCIONAL)</label>
                            <textarea name="description" class="form-control" rows="4" placeholder="Detalhes sobre o serviço...">{{ $servico->description ?? '' }}</textarea>
                        </div>
                    </div>

                    <div class="col-md-5">
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">PREÇO PADRÃO (R$)</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">R$</span>
                                </div>
                                {{-- Adicionado (float) antes da variável para converter a string do banco em número --}}
                                <input type="text" name="std_price" class="form-control money"
                                    value="{{ isset($servico->std_price) ? number_format((float) $servico->std_price, 2, ',', '.') : '' }}"
                                    required>
                            </div>
                            @error('std_price')
                                <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="form-group mt-4">
                            <label class="font-weight-bold text-primary d-block">DISPONIBILIDADE</label>
                            <div class="custom-control custom-checkbox custom-control-inline">
                                <input type="checkbox" name="liberado" class="custom-control-input" id="liberado"
                                    value="1" {{ $servico->liberado ?? true ? 'checked' : '' }}>
                                <label class="custom-control-label" for="liberado">Serviço Ativo para Agendamento</label>
                            </div>
                        </div>
                    </div>
                </div>

                <hr class="my-4">

                <div class="d-flex justify-content-between align-items-center">
                    <a href="{{ route('servicos.index') }}" class="btn btn-link text-muted">Cancelar e Voltar</a>
                    <button type="submit" class="btn btn-primary btn-lg px-5 shadow-sm font-weight-bold">
                        <i class="fas fa-save mr-2"></i>
                        {{ isset($servico->id) ? 'Salvar Alterações' : 'Cadastrar Serviço' }}
                    </button>
                </div>
            </form>
        </x-card>
    </div>
@endsection

@push('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.money').mask('#.##0,00', {
                reverse: true
            });
        });
    </script>
@endpush
