@extends('layouts.admin')

@section('main-content')
<main class="app-content">
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">{{ $method == 'put' ? 'Editar Agendamento' : 'Novo Agendamento' }}</h1>
            <a href="{{ url('/agendamentos') }}" class="btn btn-sm btn-secondary shadow-sm">
                <i class="fas fa-arrow-left fa-sm"></i> Voltar
            </a>
        </div>

        @if (session('success') || session('warning'))
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="alert {{ session('success') ? 'alert-success' : 'alert-danger' }} alert-dismissible fade show" role="alert">
                        {{ session('success') ?? session('warning') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
        @endif

        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="card shadow mb-4 border-0">
                    <div class="card-body p-5">
                        <div class="text-center mb-4">
                            @include("logo")
                        </div>

                        <form action="{{ $method == 'put' ? route('agendamentos.atualiza', $agendamento->id) : route('agendamentos.store') }}" method="post">
                            @csrf
                            @if($method == 'put') @method('POST') @endif

                            <div class="row">
                                <div class="col-md-6">
                                    <h6 class="heading-small text-muted mb-4">Informações do Serviço</h6>
                                    
                                    <div class="form-group">
                                        <label class="form-control-label" for="servico_id">Serviço <span class="text-danger">*</span></label>
                                        <select name="servico_id" id="servico_id" class="form-control busca select2">
                                            @foreach($servicos as $servico)
                                                <option value="{{ $servico->id }}" {{ $servico->id == $agendamento->servico_id ? 'selected' : '' }}>
                                                    {{ $servico->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-control-label" for="valor">Valor (R$)</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">R$</span>
                                            </div>
                                            <input id="valor" type="text" name="valor" class="form-control money" 
                                                   value="{{ number_format((float)$agendamento->valor, 2, ',', '.') }}">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-control-label" for="descricao">Descrição / Observações</label>
                                        <textarea id="descricao" name="descricao" rows="3" class="form-control" placeholder="Ex: Cliente prefere corte degradê...">{{ $agendamento->descricao }}</textarea>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <h6 class="heading-small text-muted mb-4">Data, Hora e Responsáveis</h6>

                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="form-group">
                                                <label class="form-control-label" for="start_date">Início</label>
                                                <input id="start_date" type="datetime-local" name="start_date" class="form-control" 
                                                       value="{{ $agendamento->start_date ? \Carbon\Carbon::parse($agendamento->start_date)->format('Y-m-d\TH:i') : date('Y-m-d\TH:i') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label class="form-control-label" for="end_date">Hora Fim</label>
                                                <input id="end_date" type="time" name="end_date" class="form-control" 
                                                       value="{{ $agendamento->end_date ? \Carbon\Carbon::parse($agendamento->end_date)->format('H:i') : date('H:i', strtotime('+1 hour')) }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-control-label" for="cliente_id">Cliente</label>
                                        <select name="cliente_id" id="cliente_id" class="form-control select2">
                                            @foreach($clientes as $cliente)
                                                <option value="{{ $cliente->id }}" {{ $cliente->id == $agendamento->id_cliente ? 'selected' : '' }}>
                                                    {{ $cliente->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-control-label" for="profissional_id">Profissional</label>
                                        <select name="profissional_id" id="profissional_id" class="form-control select2">
                                            @foreach($profissionals as $profissional)
                                                <option value="{{ $profissional->id }}" {{ $profissional->id == $agendamento->id_profissional ? 'selected' : '' }}>
                                                    {{ $profissional->name }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <hr class="my-4">
                            
                            <div class="text-right">
                                <button type="submit" class="btn btn-primary btn-lg px-5 shadow-sm">
                                    <i class="fas fa-check mr-2"></i> Salvar Agendamento
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>

<script>
$(document).ready(function() {
    // Máscara para o campo de valor
    $('.money').mask('#.##0,00', {reverse: true});

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    // Busca automática de valor ao trocar serviço
    $('.busca').on('change', function() {
        var query = $(this).val();
        if(query) {
            $.ajax({
                url: "{{ route('busca.valor') }}",
                type: "GET",
                data: {'id': query},
                success: function(data) {
                    // Formata o retorno para o padrão brasileiro
                    let valorFormatado = parseFloat(data).toLocaleString('pt-BR', { minimumFractionDigits: 2 });
                    $("#valor").val(valorFormatado);
                }
            });
        }
    });
});
</script>

<style>
    .form-control { border-radius: 8px; border: 1px solid #d1d3e2; padding: 10px 15px; height: auto; }
    .form-control:focus { border-color: #4e73df; box-shadow: 0 0 0 0.2rem rgba(78, 115, 223, 0.1); }
    .form-control-label { font-weight: 600; color: #4e73df; font-size: 0.85rem; text-transform: uppercase; margin-bottom: 5px; }
    .input-group-text { background-color: #f8f9fc; border: 1px solid #d1d3e2; border-radius: 8px 0 0 8px; color: #4e73df; font-weight: bold; }
    .money { border-radius: 0 8px 8px 0 !important; }
</style>
@endsection