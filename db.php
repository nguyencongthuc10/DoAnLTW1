<?php 
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

public function timkiem($key)
{   
	$key1 = "%".$key."%";
	$sql =" SELECT * FROM `protypes`,`manufactures`,`products` WHERE `products`.`manu_ID` = `manufactures`.`manu_ID` AND `products`.`type_ID` = `protypes`.`type_ID` AND name LIKE '$key1'";
	$result = self::$conn->query($sql);
	
	return  $this->getData($result);

}

}
