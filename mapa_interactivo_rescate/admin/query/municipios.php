<?php
    require('qc.php');

    $sql = "SELECT * FROM municipio ORDER BY id ASC";
    $resultadoSql = $conn->query($sql);
    if (!$resultadoSql) {
        die("Error en la consulta SQL: " . $conn->error);
    }
    while($rowSQL = $resultadoSql->fetch_assoc()){
      $municipio = $rowSQL['id'];

      $sqlMunicipio = "SELECT * FROM espacio WHERE municipio = '$municipio'";
      $resultadoMunicipio = $conn->query($sqlMunicipio);
      
      $sqlContar = "SELECT COUNT(*) AS total_espacios FROM espacio WHERE municipio = '$municipio'";
      $resultadoContar = $conn->query($sqlContar);
      $rowContar = $resultadoContar->fetch_assoc();
      $contar = $rowContar['total_espacios'];

        echo'
        <h2 class="accordion-header">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse'.$rowSQL['id'].'" aria-expanded="true" aria-controls="collapse'.$rowSQL['id'].'">
              <span class="badge text-bg-primary text-end ms-3 ps-5 pe-5">'.$rowSQL['municipio'].'</span> <span class="badge text-bg-danger text-end ms-1 ps-3 pe-3">
'.$contar.'</span>
            </button>
          </h2>';
          if ($rowSQL['id'] == 1){
            echo'
              <div id="collapse'.$rowSQL['id'].'" class="accordion-collapse collapse show" data-bs-parent="#accordion1">
              ';
          }
          else{
            echo'
              <div id="collapse'.$rowSQL['id'].'" class="accordion-collapse collapse" data-bs-parent="#accordion1">
              ';
          }
          echo'
            <div class="accordion-body">
            
              <div class="container">

                <table class="table table-sm text-center">
                  <thead class="table-dark">
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Espacio</th>
                      <th scope="col">Municipio</th>
                      <th scope="col">Ubicación</th>
                      <th scope="col">Fecha interveción</th>
                      <th scope="col">Beneficiarios</th>
                      <th scope="col">Antes</th>
                      <th scope="col">Después</th>
                    </tr>
                  </thead>
                  <tbody>';
                    $x=0;
                  while ($rowMunicipio = $resultadoMunicipio->fetch_assoc()){
                    $x++;
                    echo '
                  
                    <tr>
                      <th scope="row">
                      '.$x.'</th>
                      <td>'.$rowMunicipio['nombre_espacio'].'</td>
                      <td>'.$rowSQL['municipio'].'</td>
                      <td>'.$rowMunicipio['ubicacion'].'</td>
                      <td>'.$rowMunicipio['fecha_intervencion'].'</td>
                      <td>'.$rowMunicipio['beneficiarios'].'</td>
                      <td><a href="" onclick=""><span class="badge text-bg-warning"><i class="bi bi-sign-turn-left-fill"></i> Antes</span></a></td>
                      <td><a href="#" onclick="inside()"><span class="badge text-bg-primary">Después <i class="bi bi-sign-turn-right-fill"></i></span></a></td>
                    </tr>

                    ';
                  }
                  echo'
                  </tbody>
                </table>

              </div>
            
            </div>
          </div>
        ';

    }

?>