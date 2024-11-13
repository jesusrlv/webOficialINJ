<?php
    require('qc.php');

    $sql = "SELECT * FROM municipio ORDER BY id ASC";
    $resultadoSql = $conn->query($sql);
    echo'
    <option value="" selected>Seleccione municipio ...</option>
    ';
    while($rowSQL = $resultadoSql->fetch_assoc()){

        echo'
              <option value="'.$rowSQL['id'].'">'.$rowSQL['municipio'].'</option>
        ';

    }

?>