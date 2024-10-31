// Selecciona todos los elementos path dentro del SVG (municipios)
const municipios = document.querySelectorAll('#mapa path');
const nombreDisplay = document.getElementById('municipioTl');

// Función para mostrar el nombre del municipio
function mostrarNombre(event) {
    const nombreMunicipio = event.target.getAttribute('data-name');
    nombreDisplay.innerHTML = nombreMunicipio;

    document.getElementById("datosNombre").innerHTML = nombreMunicipio;
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