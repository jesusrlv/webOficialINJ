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
function municipiosInputEditar(){
    $.ajax({
        type: "POST",
        url: "query/municipiosInput.php",
        dataType: "html",
        success: function(data){
            $('#listadoMunicipiosInputEditar').fadeIn(1000).html(data);
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

function editarEvidencia(){
    var espacio = $("#nombreEspacioEditar").val();
    var municipio = $("#listadoMunicipiosInputEditar").val();
    var ubicacion = $("#ubicacionEditar").val();
    var fechaIntervencion = $("#fechaIntervencionEditar").val();
    var beneficiarios = $("#beneficiariosEditar").val();
    var id = $("#idEditar").val();

    $.ajax({
        type: "POST",
        url: "query/editarEvidencia.php",
        data: {
            espacio: espacio,
            municipio: municipio,
            ubicacion: ubicacion,
            fechaIntervencion: fechaIntervencion,
            beneficiarios: beneficiarios,
            id: id
            },
        success: function(data){
            var jsonData = JSON.parse(JSON.stringify(data));
            var success = jsonData.success;
            if(success = 1){
                Swal.fire({
                    icon: "success",
                    title: "Evidencia editada",
                    text: "La evidencia ha sido editada exitosamente",
                    footer: "INJUVENTD"
                }).then(function(){
                    municipios();
                    $("#modalEditarDatos").modal("hide");
                    document.getElementById("nombreEspacioEditar").value = "";
                    document.getElementById("listadoMunicipiosInputEditar").value = "";
                    document.getElementById("ubicacionEditar").value = "";
                    document.getElementById("fechaIntervencionEditar").value = "";
                    document.getElementById("beneficiariosEditar").value = "";
                    document.getElementById("idEditar").value = "";
                    
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

function editarDatos(id){
    $("#modalEditarDatos").modal("show");
    municipiosInputEditar();
    $.ajax({
        type: "POST",
        url: "query/queryDatos.php",
        data: {
            id: id
            },
        dataType: "json",
        success: function(data){
            var jsonData = JSON.parse(JSON.stringify(data));
            var success = jsonData.success;
            if(success = 1){
                var nombre_espacio = jsonData.nombre_espacio;
                var municipio = jsonData.municipio;
                var fecha_intervencion = jsonData.fecha_intervencion;
                var ubicacion = jsonData.ubicacion;
                var beneficiarios = jsonData.beneficiarios;
            
                document.getElementById("nombreEspacioEditar").value = nombre_espacio;
                document.getElementById("listadoMunicipiosInputEditar").value = municipio;
                document.getElementById("fechaIntervencionEditar").value = fecha_intervencion;
                document.getElementById("ubicacionEditar").value = ubicacion;
                document.getElementById("beneficiariosEditar").value = beneficiarios;
                document.getElementById("idEditar").value = id;
            } else {
                Swal.fire({
                    icon: "error",
                    title: "Error al cargar los datos",
                    text: "Hubo un error al cargar los datos",
                    footer: "INJUVENTD"
                });
            }
        }
    });

}

function deleteImage(idImg) {
    var id = idImg;
    $.ajax({
        type: "POST",
        url: "query/deleteImage.php",
        data: {
            id: id
            },
        success: function(data){
            var jsonData = JSON.parse(JSON.stringify(data));
            var success = jsonData.success;
            if(success = 1){
                Swal.fire({
                    icon: "success",
                    title: "Imagen eliminada",
                    text: "La imagen ha sido eliminada exitosamente",
                    footer: "INJUVENTD"
                }).then(function(){
                    photosAntes();
                    photosDespues();
                });
            } else {
                Swal.fire({
                    icon: "error",
                    title: "Error al eliminar la imagen",
                    text: "Hubo un error al eliminar la imagen",
                    footer: "INJUVENTD"
                });
            }
        }
    });
}

function deleteEvidencia(ev){
    var id = ev;

    if (confirm("¿Estás seguro de que deseas eliminar este elemento?")) {
        // Si el usuario hace clic en "Aceptar", ejecuta la función de eliminar
        deleteItem();
   
    $.ajax({
        type: "POST",
        url: "query/deleteEvidencia.php",
        data: {
            id: id
            },
        success: function(data){
            var jsonData = JSON.parse(JSON.stringify(data));
            var success = jsonData.success;
            if(success = 1){
                Swal.fire({
                    icon: "success",
                    title: "Evidencia eliminada",
                    text: "La evidencia ha sido eliminada exitosamente",
                    footer: "INJUVENTD"
                }).then(function(){
                    municipios();
                });
            } else {
                Swal.fire({
                    icon: "error",
                    title: "Error al eliminar la evidencia",
                    text: "Hubo un error al eliminar la evidencia",
                    footer: "INJUVENTD"
                });
            }
        }
    });

} else {
    // Si el usuario hace clic en "Cancelar", no hacer nada
    console.log("Cancelado");
}

}