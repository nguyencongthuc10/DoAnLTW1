<?php 
define ('DB_HOST','localhost');
define ('DB_USER','root');
define ('DB_PASS','');
define ('DB_NAME','mobile');


class db {
public static $conn;
public function __construct()
{
	self::$conn	= new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);
	self::$conn->set_charset('utf8');
}
public function __destruct()
{
	self::$conn->close();	
}
// dua du lieu vao chuyen tjhanh mang
public function getData($obj)
{
	$arr = array();
	while ($row = $obj->fetch_assoc()){
		$arr[] = $row;
	}
	return $arr;
}

//public function product1()
//{
	//Viet cau SQL
	//$sql = "SELECT `name`,`price` FROM `products`,`manufactures` 
	//WHERE `products`.`manu_ID` = `manufactures`.`manu_ID`
	//AND `manufactures`.`manu_name` = 'Apple'";
	////Thuc thi cau truy van
	//$result = self::$conn->query($sql);
	//return $this->getData($result);	
//}

//public function product2()
//{
//Viet cau SQL
	//$sql = "SELECT `price`,`name`,`ID` FROM `products` WHERE `price` > 1000000";
	//Thuc thi cau truy van
	//$result = self::$conn->query($sql);
	//return $this->getData($result);	
//}
public function product1()
{
	$sql =" SELECT * FROM `protypes`,`manufactures`,`products` WHERE `products`.`manu_ID` = `manufactures`.`manu_ID` AND `products`.`type_ID` = `protypes`.`type_ID` ORDER BY `ID` DESC";
	$result = self::$conn->query($sql);
	return $this->getData($result);
}
public function xoa($id)
{
	$sql = "DELETE FROM `products` WHERE `ID` =$id";
	$result = self::$conn->query($sql);
	header('location:index.php');
}

public function getmanufactures() {
	$sql = "SELECT * FROM `manufactures`";
	$result = self::$conn->query($sql);
	return $this->getData($result);
}

public function timkiem($key) {
	$key1 = "%".$key."%";
	$sql = "SELECT * FROM `products`,`protypes`,`manufactures` WHERE `products`.`manu_ID` = `manufactures`.`manu_ID` AND `products`.`type_ID` = `protypes`.`type_ID` AND `description` LIKE '$key1' ORDER BY `ID` DESC";
	$result = self::$conn->query($sql);
	return $this->getData($result);
}

public function getAllProducts($page, $per_page)
{
 
	// Tính số thứ tự trang bắt đầu  
	   
	$first_link = ($page - 1) * $per_page; 
	  
	$sql = " SELECT * FROM `protypes`,`manufactures`,`products` WHERE `products`.`manu_ID` = `manufactures`.`manu_ID` AND `products`.`type_ID` = `protypes`.`type_ID` ORDER BY `ID` DESC LIMIT $first_link, $per_page"; 
	     
	$result = self::$conn->query($sql);        
	  
	return $this->getData($result);     
} 

public function paginate($url, $total, $page, $per_page)
{
	$total_links = ceil($total/$per_page);
	  
	$link =""; 
	     
	for($j=1; $j <= $total_links ; $j++) 
	      {
	       $link = $link."<a href='$url?page=$j'> $j </a>";
	      }       
	return $link; 
} 

public function getAllpd()
{
	$sql = "SELECT * FROM `products`";
	$result = self::$conn->query($sql);
	$soluong = mysqli_num_rows($result);
	return $soluong;
}



}
