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
            <img src="../docs/'.$row['ruta'].'" class="img-thumbnail preview-img" alt="" onclick="inside(\''.$imagen.'\')">

            <span class="badge rounded-pill text-bg-danger mt-2 position-absolute" style="bottom: 10px; left: 50%; transform: translateX(-50%);" onclick="deleteImage('.$row['id'].')"><i class="bi bi-trash"></i></span>
        </div>
        ';
    }

?>