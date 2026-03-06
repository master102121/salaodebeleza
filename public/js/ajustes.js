$('#color').colorpicker({});
$(function(){
    var base_url = $("#ajustes").attr('data-url');
    var rota1 = $("#ajustes").attr('data-rota1');
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('.altcolor').on('click',function() {


        var cor = $("#color").val();
        var id = $("#idcell").val();

        if(cor==""){
            alert("A cor não pode ser vazia");
            return;
        }

        $.ajax({
            url:rota1,
            type:"GET",
            data:{'id':id, 'cor':cor},
            success:function (data) {
alert(data)
               // $("#resultadofor" ).html(data);
            }
        })

    });

});
