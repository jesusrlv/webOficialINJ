<?php
require('qc.php');

    $id = $_POST['idMunicipio'];

    $sqlContarMunicipios = "SELECT m.id_db AS municipio, COUNT(e.id) AS cantidad_espacios_intervenidos FROM municipio m LEFT JOIN espacio e ON m.id = e.municipio GROUP BY m.municipio";
    $resultado = $conn->query($sqlContarMunicipios);
    
    $data = []; // Array para almacenar los resultados.

    if ($resultado) {
        while ($row = $resultado->fetch_assoc()) {
            $data[] = $row; // Agregar cada fila al array.
        }
        echo json_encode(['success' => true, 'data' => $data]); // Devolver los datos en formato JSON.
    } else {
        echo json_encode(['success' => false, 'error' => $conn->error]); // Devolver error si la consulta falla.
    }
?>