<?php
    require('qc.php');

    $nombre_espacio = $_POST['espacio'];
    $municipio = $_POST['municipio'];
    $fecha_intervencion = $_POST['fechaIntervencion'];
    $ubicacion = $_POST['ubicacion'];

    $sql ="INSERT INTO espacio(
    nombre_espacio,
    municipio,
    fecha_intervencion,
    ubicacion)
    VALUES(
    '$nombre_espacio',
    '$municipio',
    '$fecha_intervencion',
    '$ubicacion')";

    $resultado = $conn->query($sql);

    if($resultado){
        echo json_encode(array(
            "success" => 1
        ));
    }else{
        echo json_encode(array(
            "success" => 0
        ));
    }