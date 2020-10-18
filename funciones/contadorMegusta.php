<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST'){
  require_once 'conexiondb.php';
  $id = $_POST['id'];
  $megustaid = $_POST['megusta'];

 $query = $con->query("SELECT * FROM respuestas WHERE id = '$id'");
 $row = $query->fetch_array();
  $megusta = $row['megusta'];
  $nomegusta = $row['nomegusta'];

   $megusta ++;
   $nomegusta++;

   switch ($megustaid) {
       case 1:
        $con->query("UPDATE `respuestas` SET `megusta` = '$megusta' WHERE `respuestas`.`id` = '$id'; ");
           break;
       
       case 0:
        $con->query("UPDATE `respuestas` SET `nomegusta` = '$nomegusta' WHERE `respuestas`.`id` = '$id'; ");
           break;
   }

 $query->free();
 $con->close();
 
}else{
  echo "error al procesar su solicitud api";
}

?> 