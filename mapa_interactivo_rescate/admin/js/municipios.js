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

function agregarEvidencia(municipio){
    $("#modalEvidencia").modal("show");
    municipiosInput();
}

function municipiosInput(){
    $.ajax({
        type: "POST",
        url: "query/municipiosInput.php",
        dataType: "html",
        success: function(data){
            $('#listadoMunicipiosInput').fadeIn(1000).html(data);
        }
    });
}

function guardarEvidencia(){
    var espacio = $("#nombreEspacio").val();
    var municipio = $("#listadoMunicipiosInput").val();
    var ubicacion = $("#ubicacion").val();
    var fechaIntervencion = $("#fechaIntervencion").val();

    $.ajax({
        type: "POST",
        url: "query/guardarEvidencia.php",
        data: {
            espacio: espacio,
            municipio: municipio,
            ubicacion: ubicacion,
            fechaIntervencion: fechaIntervencion
            },
        success: function(data){
            var jsonData = JSON.parse(JSON.stringify(data));
            var success = jsonData.success;
            if(success = 1){
                Swal.fire({
                    icon: "success",
                    title: "Evidencia guardada",
                    text: "La evidencia ha sido guardada exitosamente",
                    footer: "INJUVENTD"
                }).then(function(){
                    $("#modalEvidencia").modal("hide");
                    document.getElementById("nombreEspacio").value = "";
                    document.getElementById("listadoMunicipiosInput").value = "";
                    document.getElementById("ubicacion").value = "";
                    document.getElementById("fechaIntervencion").value = "";
                    
                    municipios();
                });
            } else {
                Swal.fire({
                    icon: "error",
                    title: "Error al guardar la evidencia",
                    text: "Hubo un error al guardar la evidencia",
                    footer: "INJUVENTD"
                });
            }
        }
    });


}