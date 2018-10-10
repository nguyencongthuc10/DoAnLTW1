<?php
 require 'db.php';
 $manu_id = $_GET['manu_id'];
 $db = new db();
 $db->xoaManufacture($manu_id);
?>