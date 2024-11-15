<?php
    require('qc.php');

    $id = $_POST['id'];

    $sqlDelete = "DELETE FROM fotos WHERE id = '$id'";
    $resultadoDelete = $conn->query($sqlDelete);
    if($resultadoDelete){
        $row = $resultadoDelete->fetch_assoc();
        echo json_encode(array(
            "success" => 1
        ));
    }else{
        echo json_encode(array(
            "success" => 0
        ));
    }
    ?>