<?php
require('qc.php');

    $sqlContarMunicipios = "SELECT m.id_db AS municipio, COUNT(e.id) AS cantidad_espacios_intervenidos FROM municipio m LEFT JOIN espacio e ON m.id = e.municipio GROUP BY m.municipio";
    $resultado = $conn->query($sqlContarMunicipios);

    $sqlContaTotal = "SELECT COUNT(*) AS cantidad_espacios_totales FROM espacio";
    $resultadoTotal = $conn->query($sqlContaTotal);

    $rowTotal = $resultadoTotal->fetch_assoc();
    $total_espacios = $rowTotal['cantidad_espacios_totales'];
    
    $data = []; // Array para almacenar los resultados.

    if ($resultado) {
        while ($row = $resultado->fetch_assoc()) {
            $data[] = $row; // Agregar cada fila al array.
        }
        echo json_encode(array('success' => 1, 
        'data' => $data,
        'total_espacios' => $total_espacios
    )); // Devolver los datos en formato JSON.
    
    // Devolver los datos en formato JSON.
    } else {
        echo json_encode(['success' => false, 'error' => $conn->error]); // Devolver error si la consulta falla.
    }
?>