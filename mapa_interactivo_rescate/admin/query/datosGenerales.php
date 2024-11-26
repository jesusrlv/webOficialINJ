<?php
require('qc.php');

    $sqlContarMunicipios = "SELECT m.id_db AS municipio, COUNT(e.id) AS cantidad_espacios_intervenidos FROM municipio m LEFT JOIN espacio e ON m.id = e.municipio GROUP BY m.municipio";
    $resultado = $conn->query($sqlContarMunicipios);

    // $sqlContaTotal = "SELECT COUNT(*) AS cantidad_espacios_totales FROM espacio";
    // $resultadoTotal = $conn->query($sqlContaTotal);

    // $rowTotal = $resultadoTotal->fetch_assoc();
    // $total_espacios = $rowTotal['cantidad_espacios_totales'];
    
    $data = []; // Array para almacenar los resultados.

    if ($resultado) {
        while ($row = $resultado->fetch_assoc()) {
            $data[] = $row; // Agregar cada fila al array.
    }
     // Convertir el array a JSON
     $json_resultados = json_encode($data);

        echo $json_resultados; // Devolver los datos en formato JSON.
    //     echo json_encode(['success' => 1, 
    //     'data' => $data,
    //     'total_espacios' => $total_espacios]
    // ); // Devolver los datos en formato JSON.
    } else {
        // No se encontraron resultados, puedes devolver un mensaje de error o un JSON vacío
        echo json_encode(array('mensaje' => 'No se encontraron resultados'));
    }
?>