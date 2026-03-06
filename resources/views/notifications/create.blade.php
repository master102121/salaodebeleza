@extends('layouts.admin')

@section('main-content')
<div class="container-fluid">
    
    {{-- Header seguindo o padrão da sua gestão de serviços --}}
    <x-page-header 
        title="Nova Notificação Push" 
        :buttonLink="null" 
        buttonText="" 
    />

    <x-card>
        {{-- Favicon centralizado como no seu index --}}
        <div class="text-center mb-4">
            <img src="{{ asset('img/favicon.png') }}" class="rounded-circle shadow-sm" style="width: 60px;">
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-10">
                <form method="POST" action="{{ route('sendnotificationstouser') }}" autocomplete="off">
                    @csrf
                    <input type="hidden" name="userId" id="userId" value="{{ old('userId') }}">

                    <div class="row">
                        {{-- Seleção de Usuário --}}
                        <div class="col-lg-12">
                            <div class="form-group focused">
                                <label class="form-control-label font-weight-bold text-dark" for="name">
                                    <i class="fas fa-user-search mr-1"></i> Usuário Destinatário<span class="small text-danger">*</span>
                                </label>
                                <input type="text" id="name" 
                                    class="form-control shadow-sm busca @error('userId') is-invalid @enderror" 
                                    name="name" 
                                    placeholder="Comece a digitar o nome do usuário..." 
                                    value="{{ old('name') }}">
                                
                                @error('userId')
                                    <div class="invalid-feedback font-weight-bold">{{ $message }}</div>
                                @enderror
                                
                                <div class="lscol control-label col-md-12 mt-2 shadow-sm" id="resultadofor"></div>
                            </div>
                        </div>

                        {{-- Mensagem --}}
                        <div class="col-lg-12 mt-3">
                            <div class="form-group focused">
                                <label class="form-control-label font-weight-bold text-dark" for="message">
                                    <i class="fas fa-comment-alt mr-1"></i> Conteúdo da Notificação<span class="small text-danger">*</span>
                                </label>
                                <textarea id="message" 
                                    class="form-control shadow-sm @error('message') is-invalid @enderror" 
                                    name="message" 
                                    rows="3"
                                    placeholder="O que você deseja comunicar?">{{ old('message') }}</textarea>
                                
                                @error('message')
                                    <div class="invalid-feedback font-weight-bold">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                    </div>

                    {{-- Botão de Ação --}}
                    <div class="text-center mt-4">
                        <button type="submit" class="btn btn-primary btn-lg shadow-sm px-5">
                            <i class="fas fa-paper-plane mr-2"></i> Enviar Notificação
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </x-card>
</div>
@endsection

@push('js')
{{-- Mantendo seu script AJAX de busca --}}
<script>
    $(document).ready(function() {
        $.ajaxSetup({
            headers: { 'X-CSRF-TOKEN': $('input[name="_token"]').val() }
        });

        $('.busca').on('keyup', function() {
            var query = $(this).val();
            if (query == "") {
                $("#resultadofor").html("");
            } else {
                $.ajax({
                    url: "{{ route('busca.ajax.lista.home') }}",
                    type: "GET",
                    data: { 'nome': query },
                    success: function(data) {
                        $("#resultadofor").html(data);
                    }
                });
            }
        });

        $(document).on('click', '.lista', function() {
            $('.busca').val($(this).html()).removeClass('is-invalid');
            $('#userId').val($(this).attr('data-id'));
            $("#resultadofor").html('');
        });
    });
</script>
@endpush