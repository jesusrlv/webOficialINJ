<?php    
    include('qc.php');

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');
    
    $id = $_POST['id'];
    $tipo = $_POST['tipo'];

    $sql = "SELECT * FROM fotos WHERE id_ext = '$id' AND tipo_foto = '$tipo' ORDER BY complemento DESC LIMIT 1";
    $resultado = $conn->query($sql);
    $filas = $resultado->num_rows;
    if($filas == 0){
        // if(is_null($row['complemento']) || $row['complemento'] === NULL){
        $sumaComplemento = 1;
    }
    else{
        $row = $resultado->fetch_assoc();
        $complemento = $row['complemento'];
        $sumaComplemento = $complemento + 1;
    }

$fileName = $_FILES["file"]["name"]; // The file name
$fileTmpLoc = $_FILES["file"]["tmp_name"]; // File in the PHP tmp folder
$fileType = $_FILES["file"]["type"]; // The type of file it is
$fileSize = $_FILES["file"]["size"]; // File size in bytes
$fileErrorMsg = $_FILES["file"]["error"]; // 0 for false... and 1 for true
if (!$fileTmpLoc) { // if file not chosen
    echo "ERROR: Please browse for a file before clicking the upload button.";
    exit();
}

$archivo_ext=$_FILES['file']['name'];
$extension = pathinfo($archivo_ext, PATHINFO_EXTENSION);
// $namePhoto = uniqid('photoNexus_', true) . '.' . $extension;
$namePhoto = $id.'_'.$tipo.'_'.$sumaComplemento.'.' . $extension;

    if(move_uploaded_file($_FILES["file"]["tmp_name"],"../../docs/". $namePhoto )){
    echo "$fileName carga completa";
    
    $ruta = $namePhoto;
    $sqlInsert= "INSERT INTO fotos(
    ruta,
    id_ext,
    tipo_foto,
    complemento
    ) 
    VALUES(
    '$namePhoto',
    '$id',
    '$tipo',
    '$sumaComplemento
    ')";
    $resultadoInsert= $conn->query($sqlInsert);
    
    
} else {
    echo "move_uploaded_file function failed";
}
    
?>
