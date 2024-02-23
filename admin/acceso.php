<?php
session_start();
require('qc.php');
if (isset($_POST['usr']) & isset($_POST['pwd'])) {
   
    $id = $_POST['usr'];
    $pwd = $_POST['pwd'];
    $sql = "SELECT * FROM usr WHERE usr = '$id' AND pwd ='$pwd'";
    $resultado_sql = $conn->query($sql);
    $fila = $resultado_sql->num_rows;
    if($fila == 1){
            echo json_encode(array(
                'success' => 1,
                'filas' => $fila
            ));
    } 
    else{
            echo json_encode(array(
                'success' => 0,
                'filas' => $fila
            ));
        }

    }
else{
    echo json_encode(array('success' => 0));

}
?>