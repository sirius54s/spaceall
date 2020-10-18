<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST'){
    require_once 'conexiondb.php';
$id = $_POST['id'];
$respuesta = $con->real_escape_string($_POST["respuesta"]);

    $boleano = $con->query("SELECT * FROM preguntas WHERE id = '$id'");
    $row = $boleano->fetch_array();
        $correo =   $row['correo'];
        $nombre =   $row['nombre'];
        $pregunta = $row['pregunta'];
        $titulo =   $row['titulo'];
 
    $con->query("INSERT INTO `respuestas` (`id`, `correo`, `nombre`, `titulo`, `pregunta`, `respuesta`, `megusta`, `nomegusta`) VALUES (NULL, '$correo', '$nombre','$titulo', '$pregunta', '$respuesta', '0', '0'); ");
    $con->query("DELETE FROM `preguntas` WHERE `preguntas`.`id` = '$id'");
echo "1";
$boleano->free();
$con->close();

}else{
  echo "error al procesar su solicitud api";
}

?>  