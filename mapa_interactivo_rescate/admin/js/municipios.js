function municipios(){
    $.ajax({
        type: "POST",
        url: "query/municipios.php",
        dataType: "html",
        success: function(data){
            $('#listadoMunicipios').fadeIn(1000).html(data);
        }
    });
}