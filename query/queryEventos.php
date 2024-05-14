<?php
include('qc.php');

    $x = 0;
    $sql = "SELECT * FROM actividades WHERE web = 1 ORDER BY id DESC LIMIT 10";
    $resultadosql = $conn->query($sql);
    
    while($row = $resultadosql->fetch_assoc()){
        $x++; 
        echo '
            <div class="d-flex text-body-secondary pt-3">
                <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#007bff"/><text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg> &nbsp;
                <p class="pb-3 mb-0 small lh-sm border-bottom">
                <strong class="d-block text-gray-dark">Actividad: '.$row['nombre'].'</strong>
                '.$row['descripcion'].'
                </p>
            </div>
        ';
    }
?>