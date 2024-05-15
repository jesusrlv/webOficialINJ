function queryEventos(){
    $.ajax({
        type: "POST",
        url: "query/queryEventos.php",
        dataType: "html",
        success: function(data){
            $('#actividadesINJU').fadeIn(1000).html(data);
        }
    });
}
function eventosMesActual(){
    $('#modalEventosmes').modal('show'); 
    $.ajax({
        type: "POST",
        url: "query/queryEventosMesActual.php",
        dataType: "html",
        success: function(data){
            $('#eventosMes').fadeIn(1000).html(data);
        }
    });
}

