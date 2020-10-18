<?php 
if ($_SERVER['REQUEST_METHOD'] === 'POST'){
	if (!empty($_POST["correo"] && $_POST["contrasena"])) {
		require_once 'conexiondb.php';

        $correo = $con->real_escape_string($_POST["correo"]);
		$contrasena = $con->real_escape_string($_POST["contrasena"]);
		$contrasena2 = hash('sha512', $contrasena);

		$query = $con->query("SELECT * FROM `usuarios` WHERE correo = '$correo' AND contrasena = '$contrasena2' ");
			$data = $query->num_rows;
			if ($data > 0) {

			 $datos = array();
			  $row = $query->fetch_assoc();
			  $datos['datos'][] = $row['id'];
				$datos['datos'][] = $row['correo'];
				$datos['datos'][] = $row['usuario'];
				$datos['datos'][] = $row['rango'];
	              echo json_encode($datos);
	 
		    }else{
				  echo "1"; 
			 }
	$query->free();		
    $con->close();
	}else{
		  echo "2"; 
	 }	

}else{
  echo "error al procesar su solicitud api";
 }
				 

 ?>