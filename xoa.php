<?php

 require 'db.php';
 $id = $_GET['id'];
 $db = new db();
 $db->xoa($id);
?>