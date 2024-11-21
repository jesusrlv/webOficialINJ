<?php
    require('qc.php');

    $id = $_POST['idMun'];
    $tipo = $_POST['valor'];

    $sql = "SELECT * FROM fotos WHERE id_ext = '$id' AND tipo_foto = '$tipo' ORDER BY complemento DESC";
    $resultadoSql = $conn->query($sql);
    while ($row = $resultadoSql->fetch_assoc()){
        $imagen = $row['ruta'];
        echo '
         <div class="col-sm-12 col-md-3 text-center position-relative">
            <img src="docs/'.$row['ruta'].'" class="img-thumbnail h-100" alt="" onclick="inside(\''.$imagen.'\')">

        </div>
        ';
    }

?>