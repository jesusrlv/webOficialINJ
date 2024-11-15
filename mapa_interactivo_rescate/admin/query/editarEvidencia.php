<?php
    require('qc.php');

    $id = $_POST['id'];
    $nombre_espacio = $_POST['espacio'];
    $municipio = $_POST['municipio'];
    $fecha_intervencion = $_POST['fechaIntervencion'];
    $ubicacion = $_POST['ubicacion'];
    $beneficiarios = $_POST['beneficiarios'];

    $sqlUpdate = "UPDATE espacio SET 
    nombre_espacio = '$nombre_espacio', 
    fecha_intervencion = '$fecha_intervencion', 
    ubicacion = '$ubicacion',
    municipio = '$municipio',
    beneficiarios = '$beneficiarios' 
    WHERE id = '$id'
    ";

    $resultado = $conn->query($sqlUpdate);

    if($resultado){
        echo json_encode(array(
            "success" => 1
        ));
    }else{
        echo json_encode(array(
            "success" => 0
        ));
    }