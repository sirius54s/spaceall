<?php 
if ($_SERVER['REQUEST_METHOD'] === 'POST'){
	$id = $_POST['id'];   
	require_once 'conexiondb.php';
	if ($con->query("DELETE FROM `preguntas` WHERE `id` = '$id'")) {
		echo "1";
	}else{ echo "0";}
	$con->close();
}else{
  echo "error al procesar su solicitud api";
}
 
 ?> 