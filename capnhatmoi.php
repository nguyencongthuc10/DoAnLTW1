<?php
require "db.php";
$db = new Db();
//kiem tra name khong duoc de trong
$name = $_POST['name'];


$id = $_GET['id'];

$price = $_POST['price'];

$type_id = $_POST['type_id'];
$manu_id = $_POST['manu_id'];
$description = $_POST['description'];


$targetDir = "public/images/";
$targetFile = $targetDir.basename($_FILES['fileUpload']['name']);

$imageFileType = pathinfo($targetFile,PATHINFO_EXTENSION);
//kiem tra file upload co dung la file hinh khong
if (isset($_POST['submit'])) {
	$check = getimagesize($_FILES['fileUpload']['tmp_name']);
	if($check != false){
		echo "File is an name - ".$check['mime'].".";
	
	}else{
		echo "File khong phai la file image.<br>";
		exit();
	}
}
//var_dump($_FILES['fileUpload']);
//	exit();

if ($_FILES['fileUpload']['name'] == ""){
	$image = $_GET['img'];
}else{

//kiem tra co chon file image
if (basename($_FILES['fileUpload']['name']) == "")
{
	echo "Vui long chon file image.<br>";
	exit();
}

//gioi han loai file 
if ($imageFileType != "jpg") {
	echo "Xin loi, chi ho tro upload file JPG.<br>";
	exit();
}

//gioi han kich thuoc file
if ($_FILES['fileUpload']['size'] > 100000 ){
	echo "Xin loi, file cua ban vuot qua 100kb.<br>";
	exit();
}

//kiem tra file co ton tai tren sever hay khong 
if (file_exists($targetFile)){
	echo "Xin loi, file  hinh da ton tai.<br>";
	exit();
}

//kiem tra upload 
//di chuyen file moi den vi tri moi
if (move_uploaded_file($_FILES['fileUpload']['tmp_name'], $targetFile)){
	echo "File ".basename($_FILES['fileUpload']['name']). " da duoc uploaded.<br>";
} else{
	echo "Xin loi, khong the upload file.<br>";
	exit();
}


$image = basename($_FILES['fileUpload']['name']);


}
$db->edit($name, $price, $image, $description, $manu_id,$type_id,$id);
//thong bao cap nhat du lieu thanh cong 
