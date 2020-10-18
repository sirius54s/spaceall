<?php 
if ($_SERVER['REQUEST_METHOD'] === 'GET'){
	require_once 'conexiondb.php';
	$query = $con->query("SELECT * FROM respuestas");
	$datos = array();
	
		while ($row = $query->fetch_assoc()) {
		  
			$datos['respuestas'][] = $row;
				}
	 echo json_encode($datos);
	
	 $query->free();
	 $con->close();	
}else{
	echo "error al procesar su solicitud api";
}
	?>