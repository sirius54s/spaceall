<?php

$dir = opendir('../img/reales/');
while ($file = readdir($dir)) {
      
    if ($file == '.' || $file == '..') {
        continue;
    }
    $datos['url'][] = 'img/reales/'.$file;
    
}
echo json_encode($datos);
closedir($dir);


?>