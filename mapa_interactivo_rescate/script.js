// Selecciona todos los elementos path dentro del SVG (municipios)
const municipios = document.querySelectorAll('#mapa path');
const nombreDisplay = document.getElementById('municipioTl');

// Función para mostrar el nombre del municipio
function mostrarNombre(event) {
    const nombreMunicipio = event.target.getAttribute('data-name');
    const idMunicipio = event.target.getAttribute('id');

    nombreDisplay.innerHTML = nombreMunicipio;

    document.getElementById("datosNombre").innerHTML = nombreMunicipio;

    $.ajax({
      type: "POST",
        url: "admin/query/queryDatosMunicipio.php",
        data: {
            idMunicipio: idMunicipio
            },
        dataType: "json",
        success: function(data){
          var jsonData = JSON.parse(JSON.stringify(data));
            var success = jsonData.success;
            if(success == 1){
              var info = jsonData.info;
              var poblacion = jsonData.poblacion;
              var idMun = jsonData.idMun;
              var contar = jsonData.contar;
              var sumaBeneficiarios = jsonData.sumaBeneficiarios;

              document.getElementById('datosMunicipio').innerHTML = info;
              document.getElementById('contadorMunicipio').innerHTML = contar;
              document.getElementById('poblacionMunicipio').innerHTML = poblacion;
              document.getElementById('poblacionMunicipio').innerHTML = poblacion;
              document.getElementById('beneficioriosMunicipio').innerHTML = sumaBeneficiarios;

              espaciosIntervenidos(idMun);
            }
        }

    });

}

function espaciosIntervenidos(idMun){
  var id = idMun;
  $.ajax({
    type: "POST",
      url: "admin/query/queryTabla.php",
      data: {
          id: id
          },
      dataType: "html",
      success: function(data){
        $('#resultadoTable').fadeIn(1000).html(data);
      }
  });
}

// Agregar eventos a cada municipio
municipios.forEach(municipio => {
    // Evento para mostrar el nombre al pasar el mouse
    municipio.addEventListener('mouseover', mostrarNombre);

    // Evento para mostrar el nombre al hacer clic (para dispositivos táctiles)
    municipio.addEventListener('click', mostrarNombre);
    municipio.addEventListener('click', abrirOffcanvas);
    
});

// offcanvas
function abrirOffcanvas() {
    // Seleccionar el elemento del offcanvas
    const offcanvasElement = document.getElementById('offcanvasTop');
    
    // Crear una instancia de Offcanvas de Bootstrap
    const bsOffcanvas = new bootstrap.Offcanvas(offcanvasElement);
  
    // Mostrar el offcanvas
    bsOffcanvas.show();
  }

  function inside(){
    $("#modalInside").modal("show");
  }

  // datos de consulta
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
        url: "admin/query/modalAntesFront.php",
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
        url: "admin/query/modalDespuesFront.php",
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
    document.getElementById("inside").setAttribute("src", "docs/"+imagen+"");
  }

  function datosGenerales(){
    $.ajax({
      type: "POST",
      url: "admin/query/datosGenerales.php", // Cambia esto por la ruta de tu script PHP
      dataType: "json",
      success: function(data) {
        // var jsonData = JSON.parse(data);
        var jsonData = JSON.parse(JSON.stringify(data));
        console.log('Respuesta JSON:', jsonData);
        // var total_espacios = jsonData.total_espacios;
        // console.log('Totalespacios:', total_espacios);
        
        if (Array.isArray(jsonData)) {
          console.log('Número de elementos en el array:', jsonData.length);
  
          // Iterar sobre cada elemento en el array
          // for (var i = 0; i < jsonData.length; i++) {
          //   console.log("Si llegada el elemento");
          //     var municipios = jsonData[i];
          //     var mun = municipios.municipio;
          //     var espacios = municipios.cantidad_espacios_intervenidos;
              
          //     console.log('municipio:', mun);
          //     console.log('Número de espacios:', espacios);
  
          //     if(espacios > 0 || espacios != null){
          //       document.getElementById(''+mun+'').setAttribute('class', 'bg-danger');
          //     }
          //     else{
          //       document.getElementById(mun).setAttribute('class', 'bg-success');
          //     }
          // }
          for (var i = 0; i < jsonData.length; i++) {
            var municipios = jsonData[i];
            var mun = municipios.municipio; // El id del elemento
            var espaciosIntervenidos;
            if (municipios.cantidad_espacios_intervenidos == null){
              espaciosIntervenidos = 0;
            }
            else{
              espacios = municipios.cantidad_espacios_intervenidos; // Otra información asociada
            }
            
            console.log('Municipio:', mun);
            console.log('Número de espacios:', espacios);
        
            // Busca el elemento en el DOM
            var elemento = document.getElementById(mun);
        
            // Verifica si el elemento existe antes de modificarlo
            if (elemento) {
                // Cambia el color según la condición
                if (espacios > 0 ) {
                    elemento.style.fill = "red"; // Color para más de 0 espacios
                } else {
                    elemento.style.fill = "#004f67"; // Color para 0 espacios
                }
            } else {
                console.error(`Elemento con ID "${mun}" no encontrado en el DOM.`);
            }
        }
        
        } 
      },
      error: function(xhr, status, error) {
          console.error('Error en AJAX:', error);
          console.log('Estado:', status);
          console.log('Respuesta del servidor:', xhr.responseText);
      }
  });

  }