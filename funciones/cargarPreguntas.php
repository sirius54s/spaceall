<?php 
if ($_SERVER['REQUEST_METHOD'] === 'GET'){

	require_once 'conexiondb.php';
$query = $con->query("SELECT * FROM preguntas");
 $contador =  $query->num_rows;
  if($contador > 0){
	while ($row = $query->fetch_assoc()) {
  	 $datos['preguntas'][] = $row;
        	}
    echo json_encode($datos);
  }else{
	  echo 0;
  }	

 $query->free();
 $con->close();

}else{
	echo "error al procesar su solicitud api";
}


	?>

