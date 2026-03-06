@extends('layouts.admin')

@section('main-content')
<main class="app-content">
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Minhas Disponibilidades</h1>
            <input type="hidden" id="hiddenid" value="{{$selected->id}}"/>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="card shadow mb-4 border-0">
                    <div class="card-header py-3 bg-white d-flex justify-content-between align-items-center">
                        <h6 class="m-0 font-weight-bold text-primary">Configuração de Horários</h6>
                        <button class="btn btn-success btn-sm shadow-sm cadatu">
                            <i class="fas fa-save fa-sm"></i> Salvar Alterações
                        </button>
                    </div>

                    <div class="card-body">
                        <div class="text-center mb-4">
                            @include("logo")
                            <div class="mt-2">
                                <code class="p-2 bg-light rounded font-weight-bold text-primary">{{ $tema }}</code>
                            </div>
                        </div>

                        <ul class="nav nav-pills nav-fill mb-4" id="pills-tab" role="tablist">
                            @foreach(daysofweek() as $index => $disponibilidade)
                            <li class="nav-item">
                                <a class="nav-link {{ $index == 0 ? 'active' : '' }} font-weight-bold" 
                                   id="tab-{{$disponibilidade}}" 
                                   data-toggle="pill" 
                                   href="#content-{{$disponibilidade}}" 
                                   role="tab">
                                    {{ daysofweektopt($disponibilidade) }}
                                </a>
                            </li>
                            @endforeach
                        </ul>

                        <form id="daysto">
                            <div class="tab-content" id="pills-tabContent">
                                @foreach(daysofweek() as $index => $disp)
                                <div class="tab-pane fade {{ $index == 0 ? 'show active' : '' }}" 
                                     id="content-{{$disp}}" 
                                     role="tabpanel">
                                    
                                    @php
                                        try {
                                            $horarios = explode(",", $disponibilidades->$disp);
                                        } catch (\Exception $e) {
                                            $horarios = [];
                                        }
                                    @endphp

                                    <div class="row mt-3">
                                        @for($ho=5; $ho<23; $ho++)
                                            @php
                                                $subhorarios = [0, "n"];
                                                if(isset($horarios[$ho-5])) {
                                                    $subhorarios = explode("-", $horarios[$ho-5]);
                                                }
                                                $estaAtivo = (@$subhorarios[1] == "s");
                                            @endphp

                                            <div class="col-md-4 col-sm-6 mb-3">
                                                <div class="card h-100 {{ $estaAtivo ? 'border-left-success bg-light' : 'border-left-light' }} shadow-sm">
                                                    <div class="card-body p-3 d-flex justify-content-between align-items-center">
                                                        <div>
                                                            <span class="d-block font-weight-bold">
                                                                {{ ($ho<=9?"0":"").$ho.":00" }} - {{ ($ho+1<10?"0":"").($ho+1).":00" }}
                                                            </span>
                                                        </div>
                                                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-sm {{ $estaAtivo ? 'btn-success active' : 'btn-outline-secondary' }}">
                                                                <input type="radio" class="iradio" data-dia="{{$disp}}" data-hora="{{$ho}}" name="dia_{{$disp}}_{{$ho}}" value="s" {{ $estaAtivo ? 'checked' : '' }}> Sim
                                                            </label>
                                                            <label class="btn btn-sm {{ !$estaAtivo ? 'btn-secondary active' : 'btn-outline-secondary' }}">
                                                                <input type="radio" class="iradio" data-dia="{{$disp}}" data-hora="{{$ho}}" name="dia_{{$disp}}_{{$ho}}" value="n" {{ !$estaAtivo ? 'checked' : '' }}> Não
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endfor
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('.cadatu').click(function(e) {
        e.preventDefault();
        const weeksd = [];
        
        $('.iradio:checked').each(function() {
            weeksd.push($(this).attr("data-dia") + "-" + $(this).attr("data-hora") + "-" + $(this).val());
        });

        const periodoData = weeksd.join(","); // Correção: Atribuindo o join

        // Feedback visual de carregamento
        $(this).html('<i class="fas fa-spinner fa-spin"></i> Salvando...').prop('disabled', true);

        $.ajax({
            url: "{{ route('change.user.disponiveis') }}",
            type: "GET",
            data: {
                'id': $('#hiddenid').val(),
                'periodo': periodoData
            },
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'Sucesso!',
                    text: data,
                    timer: 2000,
                    showConfirmButton: false
                });
                setTimeout(() => { location.reload(); }, 2000);
            },
            error: function() {
                Swal.fire('Erro!', 'Não foi possível salvar.', 'error');
                $('.cadatu').html('<i class="fas fa-save fa-sm"></i> Salvar Alterações').prop('disabled', false);
            }
        });
    });
});
</script>

<style>
    .nav-pills .nav-link { color: #6e707e; background: #fff; border: 1px solid #e3e6f0; margin: 0 2px; }
    .nav-pills .nav-link.active { background-color: #4e73df; color: #fff; }
    .border-left-success { border-left: .25rem solid #1cc88a!important; }
    .btn-group-toggle .btn { font-size: 0.75rem; padding: 0.25rem 0.5rem; }
</style>
@endsection