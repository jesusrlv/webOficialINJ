<?php
require('qc.php');

    $id = $_POST['idMunicipio'];

    $sqlMunicipio = "SELECT * FROM municipio WHERE id_db = '$id'";
    $resultadoMunicipio = $conn->query($sqlMunicipio);
    $rowMunicipio = $resultadoMunicipio->fetch_assoc();
    $info = $rowMunicipio['info'];
    $poblacion = $rowMunicipio['poblacion'];
    $idMun = $rowMunicipio['id'];

    $sqlContar = "SELECT COUNT(*) AS contarM FROM espacio WHERE municipio = '$idMun'";
    $resultadoContar = $conn->query($sqlContar);
    $rowContar = $resultadoContar->fetch_assoc();
    $contar = $rowContar['contarM'];

    $sqlSumar = "SELECT SUM(beneficiarios) as suma FROM espacio WHERE municipio = '$idMun'";
    $resultadoSumar = $conn->query($sqlSumar);
    $rowSumar = $resultadoSumar->fetch_assoc();
    $sumaBeneficiarios = $rowSumar['suma'];

    if($contar == NULL || $contar == ""){
        $contar = 0;
    }
    if($sumaBeneficiarios == NULL || $sumaBeneficiarios == ""){
        $sumaBeneficiarios = 0;
    }
    if($poblacion == NULL || $poblacion == ""){
        $poblacion = 0;
    }

    // $sql = "SELECT * FROM espacio WHERE id = '$id'";
    // $resultadoSql = $conn->query($sql);
    // $row = $resultadoSql->fetch_assoc();

    echo json_encode(array(
        'success' => 1,
        'info'=>$info,
        'poblacion'=>$poblacion,
        'idMun'=>$idMun,
        'contar'=>$contar,
        'sumaBeneficiarios'=>$sumaBeneficiarios
    ));
?>