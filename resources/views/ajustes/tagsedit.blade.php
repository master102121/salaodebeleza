@extends('layouts.admin')


<? $tabela = "ajustes"; ?>
@section('main-content')
<!-- Page Heading -->
<h1 class="h3 mb-4 text-gray-800">{{ __('Adicionar') }}</h1>
@if (session('success'))
<div class="row p-3">

<div class="col-lg-10 order-lg-1 alert alert-success border-left-success alert-dismissible fade show" role="alert">
    {{ session('success') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
</div>
@endif


@if(session()->has('warning'))
<div class="row p-3">

<div class="col-lg-10 order-lg-1 alert alert-danger border-left-danger alert-dismissible fade show" role="alert">
    {{ session('warning') }}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
</div>
@endif



@if ($errors->any())
<div class="row p-3">
<div class="col-lg-10 order-lg-1 alert alert-danger border-left-danger" role="alert">
    <ul class="pl-4 my-2">
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
</div>
@endif


<div class="row">

    <div class="col-lg-10 order-lg-1">

        <div class="card shadow mb-4">

            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Editar {{ $tag->nome }} </h6>
            </div>

            <div class="card-body">


            <table class="table table-bordered table-striped datatable">
    <thead>
        <tr>
            <th>Nome da cor</th>
            <th>Cor</th>
            <th>Padrão</th>
            <th> </th>
        </tr>
    </thead>

    <tbody>


                <tr data-entry-id="{{ $tag->id }}">
                    <td field-key='name'>{{ $tag->name }}</td>
                    <td>

                    <input class="form-control" type="text" id="color" value="{{ $tag->color }}"/>
                    <input  type="hidden" id="idcell" value="{{ $tag->id }}"/>
                    </td>
                    <td field-key='name'>{{ $tag->default }}</td>
                    <td>
                        <a href="#" class="btn btn-xs btn-info altcolor">Alterar</a>
                        {!! Form::open(array(
                            'style' => 'display: inline-block;',
                            'method' => 'GET',
                            'onsubmit' => "return confirm('Tem certeza?');",
                            'route' => ['admin.tags.padrao', $tag->id])) !!}
                        {!! Form::submit('Padrão', array('class' => 'btn btn-xs btn-warning')) !!}
                        {!! Form::close() !!}
                        <button class="btn btn-xs btn-success" onclick="history.back()">Voltar</button>
                    </td>
                </tr>


    </tbody>
</table>






            </div>

        </div>

    </div>

</div>



   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.3/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.3/js/bootstrap-colorpicker.min.js"></script>

<script id="ajustes" data-rota1="{{route('admin.tags.altera')}}" data-url="{{asset('/')}}" src="{{asset('/')}}js/ajustes.js"></script>
@endsection
