<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST'){
require_once 'conexiondb.php';
$solicitud = $con->real_escape_string($_POST['solicitud']);

  switch($solicitud){
      
    case 'agregarImagen': // agregar Imagen
        $nombre = $con->real_escape_string($_POST['nombre']).'.'; 
        $nombreImg=$_FILES['img']['tmp_name'];
        $info = new SplFileInfo($_FILES['img']['name']);
        $directorio='../img/reales/'.$nombre.$info->getExtension();
        $mensaje  =  new stdClass();
        if ( move_uploaded_file($nombreImg,$directorio)) {
            $mensaje->codigo = 0;
            $mensaje->mensaje = "subida con exito";
        }else{
            $mensaje->codigo = 1;
            $mensaje->mensaje = "algo salio mal";
        }
     echo json_encode($mensaje);   
     break;

   case 'cargarImagenes': // cargar imagenes
    $dir = opendir('../img/reales/');
        while ($file = readdir($dir)) {
            if ($file == '.' || $file == '..') {continue;}
            $datos['url'][] = 'img/reales/'.$file;  
        }
        echo json_encode($datos);
        closedir($dir);
   break;

   case 'eliminarImagenes': //eliminar Imagenes
        $nombreimg = $con->real_escape_string($_POST['img']); 
         unlink("../$nombreimg");
   break;

   case 'cargarListaUsuarios': //cargar Lista Usuarios
    $boleano = $con->query("SELECT * FROM usuarios");
        while($row = $boleano->fetch_array()){
            $usuarios['usuarios'][] = $row; 
        }
        echo json_encode($usuarios);
   break;

   case 'buscarEnListaUsuarios': //buscar en Lista Usuarios
    $busqueda = $con->real_escape_string($_POST['busqueda']);
    $boleano = $con->query("SELECT * FROM usuarios WHERE usuario LIKE '%$busqueda%' OR correo LIKE '%$busqueda%' ");
        while($row = $boleano->fetch_array()){
            $usuarios['usuarios'][] = $row; 
             }
        if(!empty($usuarios)){
         echo json_encode($usuarios);  
        }else{
          echo 0;  
        }         
   break;

   case 'eliminarUsuario': //eliminar Usuario
    $id = $con->real_escape_string($_POST["id"]);
    $boleano = $con->query("DELETE FROM usuarios WHERE id = '$id'");
    $boleano->free(); 
   break;

   case 'cargarListaLicencia': //cargar Lista  Licencia
    $boleano = $con->query("SELECT * FROM licencias");
    while($row = $boleano->fetch_assoc()){
        $licencias['licencias'][] = $row; 
    }
    echo json_encode($licencias);
    $boleano->free(); 
   break;
 
   case 'eliminarLicencia': //eliminar Licencia
    $id = $con->real_escape_string($_POST['id']);
    $boleano = $con->query("DELETE FROM licencias WHERE id = '$id'");
    $boleano->free(); 
   break;

   case 'agregarLicencia': //agregar Licencia
    $clave = $con->real_escape_string($_POST['clave']);
    $boleano = $con->query("INSERT INTO `licencias` (`id`, `clave`) VALUES (NULL, '$clave');");
    $boleano->free(); 
   break;
  
   case 'actualizarPerfil': //actualizar Perfil
    $contrasena = $con->real_escape_string($_POST['contrasena']);
    $contrasena2 = $con->real_escape_string($_POST['contrasena2']);
    $mensaje = new stdClass();
        if ($contrasena === $contrasena2) {
            $contrasenaCifrada = hash('sha512', $contrasena);
            $id = $con->real_escape_string($_POST['id']);
            $correo = $con->real_escape_string($_POST['correo']);
            $usuario = $con->real_escape_string($_POST['usuario']);
            $rango = $con->real_escape_string($_POST['rango']);
            $boleano = $con->query("UPDATE `usuarios` SET `correo` = '$correo', `usuario` = '$usuario' ,`contrasena` = '$contrasenaCifrada', `rango` = '$rango' WHERE `usuarios`.`id` = '$id';");
            if ($boleano) {
                $mensaje->codigo = 1;
                $mensaje->mensaje = "actualizado con exito";
            }else{
                $mensaje->codigo = 2;
                $mensaje->mensaje = "usuario ya registrado";
                 }
             $boleano->free();                    
        }else{
            $mensaje->codigo = 0;
            $mensaje->mensaje = "las contraseñas no coinciden";
         }          
            echo json_encode($mensaje);
   break;
  }
$con->close();
}else{
  echo "error al procesar su solicitud api";
}




?>