<?php
    require('qc.php');

    $id = $_POST['id'];

    $sqlEvidencia = "SELECT * FROM espacio WHERE id_ext = '$id'";
    $resultadoEvidencia = $conn->query($sqlEvidencia);
    $filasEvidencia = $resultadoEvidencia->num_rows;
    if($filasEvidencia = 1){
        $rowEvidencia = $resultadoEvidencia->fetch_assoc();
        $idEvidencia = $rowEvidencia['id'];
        $sqlDeleteEvidencia = "DELETE * FROM espacio WHERE id_ext = '$idEvidencia'";
        $resultadoDeleteEvidencia = $conn->query($sqlDeleteEvidencia);
        $sqlPhotos = "SELECT * FROM fotos WHERE id_ext = '$idEvidencia'";
        $resultadoPhotos = $conn->query($sqlPhotos);
        while($rowPhotos = $resultadoPhotos->fetch_assoc()){
            $idPhotos = $rowPhotos['id'];
            $file = $rowPhotos['ruta'];
            $sqlDeletePhoto = "DELETE * FROM fotos WHERE id "
        }
        if($sqlDeleteEvidencia){
            echo json_encode(array(
                "success" => 1
            ));
        }else{
            echo json_encode(array(
                "success" => 0
            ));
        }
    }
    ?>