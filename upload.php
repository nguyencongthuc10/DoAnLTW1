<?php

require "db.php";



/* 
var_dump($name);
var_dump($price);
var_dump($image);
var_dump($description);
var_dump($manu_id);
var_dump($type_id);
*/


$targetDir = "public/images/";
$targetFile = $targetDir.basename($_FILES['fileUpload']['name']);
$uploadOK = 1;
$imageFileType = pathinfo($targetFile,PATHINFO_EXTENSION);
//kiem tra file upload co dung la file hinh khong
if (isset($_POST['submit'])) {
	$check = getimagesize($_FILES['fileUpload']['tmp_name']);
	if($check != false){
		echo "File is an name - ".$check['mime'].".";
		$uploadOK = 1;
	}else{
		echo "File is not an images.<br>";
		$uploadOK = 0;
	}
}

//kiem tra file co ton tai tren sever hay khong 
if (file_exists($targetFile)){
	echo "Xin loi, file da ton tai.<br>";
	$uploadOK = 0;
}


//gioi han kich thuoc file
if ($_FILES['fileUpload']['size'] > 100000 ){
	echo "Xin loi, file cua ban vuot qua 100kb.<br>";
	$uploadOK = 0;
}

//gioi han loai file 
if ($imageFileType != "jpg") {
	echo "Xin loi, chi ho tro file JPG.<br>";
	$uploadOK = 0;
}

//kiem tra upload 
//neu uploadOK  = 0 thong bao loi 
if ($uploadOK == 0){
	echo "Xin loi, file cua ban khong the upload.";
}else {
//nguoc lai thi di chuyen file moi den vi tri moi
	if (move_uploaded_file($_FILES['fileUpload']['tmp_name'], $targetFile)){
		echo "File ".basename($_FILES['fileUpload']['name']). " da duoc uploaded.";
	} else{
		echo "Xin loi, khong the upload file.";
	}
}


$db = new Db();
$name = $_POST['name'];
$type_id = $_POST['type_id'];
$manu_id = $_POST['manu_id'];
$image = basename($_FILES['fileUpload']['name']);
$description = $_POST['description'];
$price = $_POST['price'];
if ($uploadOK != 0) {
$db->themProduct($name, $price, $image, $description, $manu_id, $type_id);
}