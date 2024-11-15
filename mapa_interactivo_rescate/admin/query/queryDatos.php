<?php
    require('qc.php');

    $id = $_POST['id'];

    $sql = "SELECT * FROM espacio WHERE id = '$id'";
    $resultadoSql = $conn->query($sql);
    $row = $resultadoSql->fetch_assoc();

    echo json_encode(array(
        'success' => 1,
        'nombre_espacio'=>$row['nombre_espacio'],
        'municipio'=>$row['municipio'],
        'fecha_intervencion'=>$row['fecha_intervencion'],
        'ubicacion'=>$row['ubicacion'],
        'beneficiarios'=>$row['beneficiarios'],
        'id'=>$row['id']
    ));