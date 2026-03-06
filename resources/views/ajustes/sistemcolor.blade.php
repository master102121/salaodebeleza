@extends('layouts.admin')

@section('main-content')

<?
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




  {{--
                <a class="btn btn-primary mb-4" style="width: 15%;   display: inline-block;" href="{{route('ajustes.create')}}"><i class="fa fa-plus" ></i> Adicionar</a>
--}}


                <div class="row">
                    <div class="col-lg-12">

                       <table class="table table-bordered table-striped datatable">
    <thead>
        <tr>
            <th>Name</th>
            <th>Color</th>
            <th> </th>
        </tr>
    </thead>

    <tbody>
        @if (count($tags) > 0)
            @foreach ($tags as $tag)
                <tr data-entry-id="{{ $tag->id }}">
                    <td field-key='name'>{{ $tag->name }}</td>
                    <td field-key='color'>{{ $tag->color }}</td>
                    <td>
                        <a href="{{ route('admin.tags.edit',[$tag->id]) }}" class="btn btn-xs btn-info">Editar</a>

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



<script type="text/javascript" src="{{asset('/')}}js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="{{asset('/')}}js/plugins/dataTables.bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>
<script type="text/javascript">
    function deleteTag(id) {

        swal({
            title: 'Tem certeza?',
            text: "Esse procedimento não poderá ser revertido!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Sim, pode apagar!',
            cancelButtonText: 'Não, cancele!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: true,
            reverseButtons: true
        }).then((result) => {
            if (result.value) {
                event.preventDefault();
                document.getElementById('delete-form-'+id).submit();
            } else if (
            // Read more about handling dismissals
            result.dismiss === swal.DismissReason.cancel
            ) {
                swal(
                'Cancelado',
                'Os dados foram preservados :)',
                'error'
                )
            }
        })
    }

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

        $('#changeallfor').change(function() {
            if($(this).val()==0){
                $('.btnlabel').removeClass("btn-reverse");
                $('.btnlabel').text("Mudar todos para");

            }else{
                $('.btnlabel').addClass("btn-reverse");
                $('.btnlabel').text("Validar");

            }


        });




        $('.btnlabel').click(function(){
            if($(this).text()=="Validar"){

                mostraloader();
                $.ajax({
                    url:"{{ route('change.all.banks') }}",
                    type:"GET",
                    data:{
                        'banco':$('#changeallfor').val()


                    },
                    success:function (data) {
                        hideloader(100);
                        alert(data);

                        setTimeout(
                        function() {
                            location.reload();
                        },
                        300);
                    }
                })

            }
        });
    });


</script>
@endsection
