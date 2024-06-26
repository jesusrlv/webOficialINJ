<?php
include('qc.php');

    $x = 0;
    $sql = "SELECT * FROM actividades WHERE web = 1 ORDER BY fecha DESC LIMIT 5";
    $resultadosql = $conn->query($sql);
    
    while($row = $resultadosql->fetch_assoc()){
        $vatMun = $row['municipio'];
        $sqlMun = "SELECT * FROM catalogo_municipios WHERE id = '$vatMun'";
        $resultadoMun = $conn->query($sqlMun);
        $rowMun = $resultadoMun->fetch_assoc();
        $municipio = $rowMun['nombreMunicipio'];

        $vatHora = $row['hora_evento'];
        $sqlHora = "SELECT * FROM hora WHERE id = '$vatHora'";
        $resultadoHora = $conn->query($sqlHora);
        $rowHora = $resultadoHora->fetch_assoc();
        $hora = $rowHora['hora'];

        $x++; 
        echo '
            <div class="d-flex text-body-secondary pt-3">
                <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="12" height="18" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#007bff"/><text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg> &nbsp;
                <p class="pb-3 mb-0 small lh-sm border-bottom">
                <strong class="d-block text-light">Actividad: '.$row['nombre'].'</strong>
                <span class="text-light">'.$row['descripcion'].'
                | <i class="bi bi-calendar-check"></i> '.$row['fecha'].'
                | <i class="bi bi-globe-americas"></i> '.$row['lugar'].'
                | <i class="bi bi-map"></i> '.$municipio.'
                | <i class="bi bi-clock"></i> '.$hora.'
                
                </span>
                </p>
            </div>
        ';
    }
?>