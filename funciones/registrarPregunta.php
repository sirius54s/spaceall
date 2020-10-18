<?php 
 
if ($_SERVER['REQUEST_METHOD'] === 'POST'){
	if (!empty($_POST["nombre"] && $_POST["correo"] && $_POST["titulo"] && $_POST["pregunta"])) {

		require_once 'conexiondb.php';
		$nombre = $con->real_escape_string($_POST["nombre"]);
		$correo = $con->real_escape_string($_POST["correo"]);
		$titulo = $con->real_escape_string($_POST["titulo"]);
		$pregunta = $con->real_escape_string($_POST["pregunta"]);
	
		$query = $con->query("SELECT * FROM preguntas WHERE correo = '$correo'");
		$row = $query->num_rows;
		 if ($row > 0) {
			 echo "0";
		 }else{
			 $con->query("INSERT INTO `preguntas` (`id`, `nombre`, `correo`, `titulo`, `pregunta`) VALUES (NULL, '$nombre', '$correo', '$titulo', '$pregunta');");
			 echo "1";
		 }
		
	 }else{
			echo "2";
		   }
	$query->free();	   
	$con->close();

}else{
  echo "error al procesar su solicitud api";
}

 ?>