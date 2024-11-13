<?php
    require('qc.php');

    $nombre_espacio = $_POST['espacio'];
    $municipio = $_POST['municipio'];
    $fecha_intervencion = $_POST['fechaIntervencion'];
    $ubicacion = $_POST['ubicacion'];
    $beneficiarios = $_POST['beneficiarios'];

    $sql ="INSERT INTO espacio(
    nombre_espacio,
    municipio,
    fecha_intervencion,
    ubicacion,
    beneficiarios)
    VALUES(
    '$nombre_espacio',
    '$municipio',
    '$fecha_intervencion',
    '$ubicacion',
    '$beneficiarios')";

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