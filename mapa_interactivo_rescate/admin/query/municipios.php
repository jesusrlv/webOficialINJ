<?php
    require('qc.php');

    $sql = "SELECT * FROM municipio ORDER BY id ASC";
    $resultadoSql = $conn->query($sql);
    if (!$resultadoSql) {
        die("Error en la consulta SQL: " . $conn->error);
    }
    while($rowSQL = $resultadoSql->fetch_assoc()){

        echo'
        <h2 class="accordion-header">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse'.$rowSQL['id'].'" aria-expanded="true" aria-controls="collapse'.$rowSQL['id'].'">
              '.$rowSQL['municipio'].'
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
              <strong>This is the first items accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. Its also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
            </div>
          </div>
        ';

    }

?>