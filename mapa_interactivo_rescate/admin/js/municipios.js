function municipios(){
    $.ajax({
        type: "POST",
        url: "query/municipios.php",
        dataType: "html",
        success: function(data){
            $('#accordion1').fadeIn(1000).html(data);
        }
    });
}

function datosMunicipio(municipio){
    $.ajax({
        type: "POST",
        url: "query/datosMunicipio.php",
        data: {
            municipio: municipios
        },
        dataType: "html",
        success: function(data){
            $('#datosMunicipio'+municipio).fadeIn(1000).html(data);
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
    var beneficiarios = $("#beneficiarios").val();

    $.ajax({
        type: "POST",
        url: "query/guardarEvidencia.php",
        data: {
            espacio: espacio,
            municipio: municipio,
            ubicacion: ubicacion,
            fechaIntervencion: fechaIntervencion,
            beneficiarios: beneficiarios
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
                    document.getElementById("beneficiarios").value = "";
                    
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

function modalAntes(id,val){
    $("#modalAntes").modal("show");
    var idMun = id;
    var valor = val;

    document.getElementById("idAntes").value = idMun;
    document.getElementById("evAntes").value = valor;

    photosAntes();
  }

function photosAntes(){

    var idMun = document.getElementById("idAntes").value;
    var valor = document.getElementById("evAntes").value;

    $.ajax({
        type: "POST",
        url: "query/modalAntes.php",
        data: {
            idMun: idMun,
            valor: valor
            },
        dataType: "html",
        success: function(data){
            $('#cargaPhotosAntes').fadeIn(1000).html(data);
      
        }
    });  
}
function modalDespues(id,val){
    $("#modalDespues").modal("show");
    var idMun = id;
    var valor = val;

    document.getElementById("idDespues").value = idMun;
    document.getElementById("evDespues").value = valor;

    photosDespues();
  }

  function photosDespues(){

    var idMun = document.getElementById("idDespues").value;
    var valor = document.getElementById("evDespues").value;

    $.ajax({
        type: "POST",
        url: "query/modalDespues.php",
        data: {
            idMun: idMun,
            valor: valor
            },
        dataType: "html",
        success: function(data){
            $('#cargaPhotosDespues').fadeIn(1000).html(data);
      
        }
    });  
}
function inside(imagen){
    $("#modalInside").modal("show");
    document.getElementById("inside").setAttribute("src", "../docs/"+imagen+"");
  }

// function localizacion(ubicacion){
//     $("#modalLocalizacion").modal("show");
//     document.getElementById("mapa").innerHTML = ubicacion;
// }