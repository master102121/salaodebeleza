@extends('layouts.admin')

@section('main-content')
  <style>
   table {border-collapse:collapse; table-layout:fixed; width:auto;}
   </style>
<?
$androids = App\Models\Android::get();
$i=1;
$tabela = "ajustes";
?>
<!-- Page Heading -->
<h1 class="h3 mb-4 text-gray-800">{{ __('Ajustes (Tema)') }}</h1>
@if (session('success'))
<div class="row p-3 justify-content-center">

    <div class="col-lg-10 order-lg-1 alert alert-success border-left-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</div>
@endif


@if(session()->has('warning'))
<div class="row p-3 justify-content-center">

    <div class="col-lg-10 order-lg-1 alert alert-danger border-left-danger alert-dismissible fade show" role="alert">
        {{ session('warning') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</div>
@endif
<div class="row justify-content-center">

    <div class="col-lg-8">

        <div class="card shadow mb-4">

            <div class="card-profile-image mt-4">
                <img src="{{ asset('img/favicon.png') }}" class="rounded-circle" alt="ajuste-image">
            </div>

            <div class="card-body">

                <div class="row">
                    <div class="col-lg-12 mb-1">
                        <div class="text-center">
                            <h5 class="font-weight-bold">Ajustes (Cores do Sistema)</h5>
                        </div>
                    </div>
                </div>





                    <div class="row">
                        <div class="col-lg-12">

                            <table class="table table-bordered table-striped datatable">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th style="width:30%!important;" >Valor</th>
                                        <th> </th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @if (count($androids) > 0)
                                    @foreach ($androids as $android)
                                    <tr data-entry-id="{{ $android->id }}">
                                        <td field-key='alias_name'>{{ $android->alias_name }}</td>

                                        <td field-key='valor' style="width: 30%;" class="changtd meio" data-id="{{$android->id}}">{{ $android->valor }}</td>

                                        <td>
                                            <a href="#"  class="btn btn-xs btn-info enviar float-right" disabled="disabled">Validar</a>

                                        </td>

                                    </tr>
                                    @endforeach
                                    @else
                                    <tr>
                                        <td colspan="3">No entries in table</td>
                                    </tr>
                                    @endif
                                </tbody>
                            </table>

                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <script src="{{asset('/')}}js/multifield/jquery.multifield.min.js"></script>
    <script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>
    <script type="text/javascript">

        $(function(){
            $('#sampleTable').DataTable( {

                stateSave: true,
                "language": {
                    "url": "{{ asset('DataTables/lang/datatable-pt.json') }}"
                },
                "bSort": false
            });

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $(".changtd").on("dblclick", function() {
                var $td2 = $(this);
                var valthis = $(this).html();


                var $editniv = $('<input type="text" class="inputnew form-control border-0" value="'+valthis+'">');
                if (!$td2.find(".inputnew").length) {

                    $td2.html($editniv);

                }
            });




            $(document).on('mouseout', '.inputnew', function(event) {
                //alert($(this).val().length)


                $(this).parent().html($(this).val());


            });

       $('.enviar').click(function(){
      var valor = $(this).parent().parent().find(".changtd");

                if($(this).text()=="Validar"){

                  //  mostraloader();

                    $.ajax({
                        url:"{{ route('change.android') }}",
                        type:"GET",
                        data:{
                            'valor':valor.html(),
                            'id':valor.attr("data-id")


                        },
                        success:function (data) {
                          //  hideloader(100);
                            alert(data);

                           setTimeout(
                            function() { location.reload();},
                            2000);
                        }
                              });

                        }




        });



  });
    </script>
    @endsection
