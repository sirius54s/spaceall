<?php 

if ($_SERVER['REQUEST_METHOD'] === 'GET'){
	require_once 'conexiondb.php';
$query = $con->query("SELECT * FROM preguntas");
 $contador =  $query->num_rows;
  
 echo $contador;

 $con->close();

}else{
	echo "error al procesar su solicitud api";
}
   
?>