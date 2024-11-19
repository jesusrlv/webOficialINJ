<?php
    require('qc.php');

    $id = $_POST['id'];

    $sqlEvidencia = "SELECT * FROM espacio WHERE id = '$id'";
    $resultadoEvidencia = $conn->query($sqlEvidencia);
    $filasEvidencia = $resultadoEvidencia->num_rows;

    if($filasEvidencia == 1){
        $rowEvidencia = $resultadoEvidencia->fetch_assoc();
        $idEvidencia = $rowEvidencia['id'];

        $sqlDeleteEvidencia = "DELETE FROM espacio WHERE id = '$idEvidencia'";
        $resultadoDeleteEvidencia = $conn->query($sqlDeleteEvidencia);

        $sqlPhotos = "SELECT * FROM fotos WHERE id_ext = '$idEvidencia'";
        $resultadoPhotos = $conn->query($sqlPhotos);

        while($rowPhotos = $resultadoPhotos->fetch_assoc()){
            $idPhotos = $rowPhotos['id'];
            $file = '../../docs/'.$rowPhotos['ruta'];

            $sqlPhotoIndividual = "DELETE FROM fotos WHERE id = '$idPhotos'";
            $resultadoPhotoIndividual = $conn->query($sqlPhotoIndividual);

            if (file_exists($file)) {

                unlink($file);
            }
        }

        $error = $conn->error;

        if($sqlDeleteEvidencia){
            echo json_encode(array(
                "success" => 1,
                "message" => $error
            ));
        }else{
            echo json_encode(array(
                "success" => 0
            ));
        }
    }
    ?>