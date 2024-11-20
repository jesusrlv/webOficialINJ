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
