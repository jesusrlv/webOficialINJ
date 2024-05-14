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