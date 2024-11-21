<?php
require('qc.php');

    $id = $_POST['idMunicipio'];

    $sqlContarMunicipios = "SELECT m.id_db AS municipio, COUNT(e.id) AS cantidad_espacios_intervenidos FROM municipio m LEFT JOIN espacio e ON m.id = e.municipio GROUP BY m.municipio";
    $resultado = $conn->query($sqlContarMunicipios);
    while ($row = $resultado ->fetch_assoc()) {
        echo json_encode(array(

        ))

    echo json_encode(array(
        'success' => 1,
        'info'=>$info,
        'poblacion'=>$poblacion,
        'idMun'=>$idMun,
        'contar'=>$contar,
        'sumaBeneficiarios'=>$sumaBeneficiarios
    ));
?>