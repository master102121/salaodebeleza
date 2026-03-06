

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
  //  var base_url = $("#ajustes").attr('data-url');

    var rota1 = $("#ajusteespecialidade").attr('data-rota1');
    var rotastatus = $("#ajusteespecialidade").attr('data-status-rota');
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });







    $('.changestat').on('click',function() {


        var id = $(this).attr("data-id");




        $.ajax({
            url:rota1,
            type:"GET",
            data:{'id':id},
            success:function (data) {
swal(data)
               // $("#resultadofor" ).html(data);
            }
        })

    });





        $('.btnlabel').click(function(){
            if($(this).text()=="Validar"){

                mostraloader();
                $.ajax({
                    url:rotastatus,
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



