<?php
    require('qc.php');

    $id = $_POST['idMun'];
    $tipo = $_POST['valor'];

    $sql = "SELECT * FROM fotos WHERE id_ext = '$id' AND tipo_foto = '$tipo' ORDER BY complemento DESC";
    $resultadoSql = $conn->query($sql);
    while ($row = $resultadoSql->fetch_assoc()){
        echo '
        <div class="col-sm-12 col-md-3">
            
            <img src="../docs/'.$row['ruta'].'" class="img-thumbnail" alt="" onclick="inside()">
      
          </div>
        ';
    }

?>