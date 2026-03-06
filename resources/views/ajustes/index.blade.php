@extends('layouts.admin')
@section('main-content')
<?
$i=1;
$tabela = "ajustes";
?>
<!-- Page Heading -->
<h1 class="h3 mb-4 text-gray-800">{{ __('Ajustes') }}</h1>

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
                            <h5 class="font-weight-bold">Ajustes</h5>
                        </div>
                    </div>
                </div>




                <div class="row">
                    <div class="col-lg-12">

                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                                <tr>
                                    <th># </th>
                                    <th>Nome</th>
                                    <th>Atualizado</th>
                                    <th>Ação</th>
                                </tr>
                            </thead>
                            <tbody>

                                @forelse($ajustes as $ajuste)

                                <tr>
                                    <td>{{ $i }}</td>
                                    <td>{{$ajuste->name}}</td>


                                    <td>
            {{date("d/m/Y H:i:s", strtotime($ajuste->updated_at??date("d-m-Y H:i:s")))}}

                                    </td>
                                    <td >

                                        <a class="btn btn-info" style="width: 45%;" href="{{route($tabela.'.edit', $ajuste->id)}}"><i class="fa fa-edit" ></i></a>


                                        <button class="btn btn-danger waves-effect" style="width: 45%;" type="submit" onclick="deleteTag({{ $ajuste->id }})">
                                            <i class="fas fa-trash-restore"></i>
                                        </button>
                                        <form id="delete-form-{{ $ajuste->id }}" action="{{ route($tabela.'.destroy',$ajuste->id) }}" method="POST" style="display: none;">
                                            @csrf
                                            @method('DELETE')
                                        </form>

                                    </td>
                                </tr>
                                <? $i++; ?>

                                @empty
                                <tr>
                                    <td colspan="5">Nenhum usuário cadastrado</td>
                                </tr>
                                @endforelse
                            </tbody>
                        </table>



                    </div>
                </div>

            </div>
        </div>

    </div>

</div>


<script src="{{ asset('js/jquery.min.js') }}"></script>
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

     $(document).ready(function() {

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });



  $('.chkstatus').change(function() {

var liberado =0;
var query = $(this).attr("data-id");


     if($(this).is(":checked")) {
           liberado = 1;


            }

    $.ajax({
                        url:"{{ route('libera.usuario') }}",
                        type:"GET",
                        data:{'id':query, "liberado":liberado},
                        success:function (data) {
                            swal(data);
                        }
                    })




        //$('#textbox1').val($(this).is(':checked'));
    });




    });


</script>
@endsection
