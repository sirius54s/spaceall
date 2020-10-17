<?php

$con = new mysqli("localhost", "root", "");
//$mysqli->select_db("dog");

  $datab = "space";
  mysqli_select_db($con,$datab);

?>