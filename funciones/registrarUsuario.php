<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST'){

  if (!empty($_POST["correo"] && $_POST["contrasena"] && $_POST["licencia"])) {
    require_once 'conexiondb.php'; 
    $correo = $con->real_escape_string($_POST["correo"]);
    $contrasena = $con->real_escape_string($_POST["contrasena"]);
    $licencia = $con->real_escape_string($_POST["licencia"]);
     $contrasena2 = hash('sha512', $contrasena);

     $query =  $con->query("SELECT * FROM licencias WHERE clave = '$licencia'");
     $row = $query->num_rows;
     if($row > 0){
        if ($con->query("INSERT INTO `usuarios` (`id`, `correo`, `usuario`, `contrasena`, `rango`) VALUES (NULL, '$correo', 'moderador', '$contrasena2', '0');")) {
             echo "1";
        }else{
            echo "2"; 
        }
    
    }else{
         echo "3";
    }
  $query ->free();
  $con->close();
    }else{
        echo "4";
    }


}else{
  echo "error al procesar su solicitud api";
}
  
?>