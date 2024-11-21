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
            <td><span class="badge text-bg-secondary"><i class="bi bi-calendar-check-fill"></i> '.$row['fecha_intervencion'].'</span></td>
            <td><a href="'.$row['ubicacion'].'" target="_blank"><span class="badge text-bg-warning"><i class="bi bi-geo"></i></span></a></td>
            <td><a href="#" onclick="modalAntes('.$row['id'].',1)"><span class="badge rounded-pill text-bg-danger"><i class="bi bi-arrow-left"></i></span></a></td>
            <td><a href="#" onclick="modalDespues('.$row['id'].',2)"><span class="badge rounded-pill text-bg-info"><i class="bi bi-arrow-right"></i></span></a>
</td>
        </tr>
        ';
    }

?>