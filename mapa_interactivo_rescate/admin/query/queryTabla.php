<?php
    require('qc.php');

    $id = $_POST['id'];
    $x = 0;
    $sql = "SELECT * FROM espacio WHERE municipio = '$id'";
    $resultado = $conn->query($sql);
    while($row = $resultado->fetch_assoc()){
        $x++;
        echo'
        <tr>
            <td>'.$x.'</td>
            <td>'.$row['nombre_espacio'].'</td>
            <td>'.$row['beneficiarios'].'</td>
            <td>'.$row['fecha_intervencion'].'</td>
            <td>'.$row['ubicacion'].'</td>
            <td>Antes</td>
            <td>Después</td>
        </tr>
        ';
    }

?>