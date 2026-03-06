@extends('layouts.app')

@push('cssimport')
<link rel="stylesheet" href="{{ asset('assets/css/cropper/croppie.min.css') }}">
@endpush


@section('content')
<div class="container-fluid">
    <div class="row align-items-center justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header card-header-icon card-header-secondary">
                    <div class="card-icon">
                        <i class="far fa-hospital"></i>
                    </div>
                    <h4 class="card-title">Hospital
                        <small class="category">Cadastrar Novo</small>
                    </h4>
                </div>
                <form method="post" action="{{ route('hospitais.store') }}">
                    @csrf
                    @method('POST')
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="col-12 m-0 p-0" id="image">
                                    <img src="{{ asset('images/hosptal.png') }}" id="imagemImage" class="rounded mx-auto d-block img-fluid" alt="...">
                                    <div class="row pl-3 pr-3 d-none">
                                        <button type="button" id="remove" class="btn btn-danger col">Remover</button>
                                        <button type="button" id="change" class="btn btn-info col">Alterar</button>
                                    </div>
                                </div>

                                <div class="col-12 m-0 p-0 d-none" id="crop">
                                    <div class="col-md-12 m-0 p-0 text-center">
                                        <div id="upload-demo"></div>
                                    </div>
                                    <div class="row pl-3 pr-3">
                                        <button type="button" id="cancel" class="btn btn-danger col">Cancelar</button>
                                        <button type="button" id="save" class="btn btn-success col">Salvar</button>
                                    </div>
                                </div>
                                <input type="file" class="col-12 mt-5 d-none" accept="image/*" id="strPhoto">
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label class="bmd-label-static">Nome</label>
                                            <input type="text" class="form-control" name="nome" value="" required>
                                        </div>
                                    </div>
                                       <div class="col-md-4">
                                        <div class="form-group" data-toggle="tooltip" data-placement="top" title="Programa de Tratamento Médico e Cirurgia sem Sangue">
                                            <label class="bmd-label-static" >BMSP</label>


                                              <select class="selectpicker" name="bmsp" data-live-search="true" data-style="btn-primary select-with-transition form-control col-12" data-size="7" required>
                                                <option value="" >Selecione</option>
                                                <option value="1" >Sim</option>
                                                <option value="0" >Não</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="bmd-label-static">Telefone 1</label>
                                        <input type="text" class="form-control" name="telefone1" id="tel1" required/>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="bmd-label-static">Telefone 2</label>
                                        <input type="text" class="form-control" name="telefone2" id="tel2" />
                                    </div>

                                    <div class="col-md-4">
                                        <label class="bmd-label-static">Cidade</label>
                                        <input type="text" class="form-control" name="cidade" id="cidade" required/>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <label class="bmd-label-static">Endereço</label>
                                        <input type="text" class="form-control" name="endereco" id="endereco" />
                                    </div>
                                </div>

                                <div class="row my-5">
                                    <div class="col-md-12">
                                        <label class="bmd-label-static">Obs</label>
                                        <textarea class="form-control col-md-12" rows="5" name="obs" id="obs"></textarea>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="{{ route('especialidades.index') }}" class="btn btn-warning pull-left">Cancelar</a>
                        <button type="submit" class="btn btn-success pull-right">Salvar Alterações</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@push('jsimport')
<script src="{{ asset('assets/js/cropper/croppie.js') }}"></script>
<script type="text/javascript">

    $(document).ready(function () {
$('[data-toggle="tooltip"]').tooltip()
        let toolbarOptions = {
            container: [
            [{ 'font': [] }],
            [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
            ['bold', 'italic', 'underline', 'strike'],
            ['blockquote', 'code-block'],
            [{ 'list': 'ordered' }, { 'list': 'bullet' }],
            [{ 'script': 'sub' }, { 'script': 'super' }],
            [{ 'indent': '-1' }, { 'indent': '+1' }],
            [{ 'color': [] }, { 'background': [] }],
            [{ 'align': [] }],
            // ['link', 'image', 'video'],
            ['emoji'],
            ['clean'],
            ],
            handlers: {
                'emoji': function () {}
            }
        };
        let quill = new Quill('#quill-editor', {
            modules: {
                "toolbar": toolbarOptions,
                "emoji-toolbar": true,
                "emoji-shortname": true,
                "emoji-textarea": false,
                history: {
                    delay: 2000,
                    maxStack: 500,
                    userOnly: true
                }
            },
            placeholder: 'Descrição',
            theme: 'snow',
        });


        quill.root.innerHTML = $('#descricao').val();

        quill.on('text-change', function(delta, oldDelta, source) {
            $('#descricao').val(quill.root.innerHTML);
            // $(this).height(self.editor.root.ownerDocument.body.scrollHeight);
        });

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('input[name="_token"]').attr('value')
            }
        });

        let resize = $('#upload-demo').croppie({
            enableExif: true,
            enableOrientation: true,
            viewport: {
                width: 200,
                height: 200,
                type: 'circle'
            },
            boundary: {
                width: 319,
                height: 240
            }
        });

        $('#remove').on('click', function () {
            $('#imagemImage').attr('src', '{{ asset('/assets/img/default-imagem.png') }}');
            $('#imagem').val('assets/img/round-default.png');
        });

        $('#change').on('click', function(){
            $("#strPhoto").trigger("click");
        });

        $('#save').on('click', function(){
            $('#upload-demo').croppie(
            'result', {
                type: 'canvas',
                size: { width: 200, height: 200 },
            }
            ).then(function (canvas) {
                $.ajax({
                    url: "{{route('image.upload')}}",
                    type: "POST",
                    data: { image : canvas},
                    beforeSend: function() {
                        swal('Aguarde', 'Enviando...', 'warning').catch(swal.noop);
                    },
                    error: function(jqXHR, exception) {
                        swal('Ops...', 'Não foi possivel salvar.', 'error').catch(swal.noop);
                    },
                    success: function (response) {
                        swal.close();
                        $('#imagemImage').attr('src', '{{ url('/') }}' + response);
                        $('#imagem').attr('value', response);
                        $('#crop').addClass('d-none');
                        $('#image').removeClass('d-none');
                    }
                });

                // $('#imagem').val(canvas);
            });
        });

        $('#cancel').on('click', function(){
            $('#crop').addClass('d-none');
            $('#image').removeClass('d-none');

        });

        $('#strPhoto').on('change', function () {
            if ($("#strPhoto")[0].files.length > 0){
                $('#image').addClass('d-none');
                $('#crop').removeClass('d-none');

                let reader = new FileReader();
                reader.onload = function (e) {
                    resize.croppie('bind',{
                        url: e.target.result
                    }).then(function(){
                        // console.log('jQuery bind complete');
                    });
                };
                reader.readAsDataURL(this.files[0]);
            }
        });
    });
</script>
@endpush
