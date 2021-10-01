<?php
class Customer{
    public $cus_id,$cus_name,$cus_address,$cus_tel;
public function Customer($cus_id,$cus_name,$cus_address,$cus_tel)
{
    $this->cus_id =$cus_id ;
    $this->cus_name =$cus_name ;
    $this->cus_address =$cus_address ;
    $this->cus_tel =$cus_tel ;
}
public static function getAll()
{
    $customerList=[];
    require("connection_connect.php");
    $sql = "SELECT * FROM customer";
    $result = $conn->query($sql);
    while($my_data = $result->fetch_assoc())
    {
        $cus_id = $my_data['cus_id'];
        $cus_name = $my_data['cusName'];
        $cus_address = $my_data['cusAddress'];
        $cus_tel = $my_data['cusTel'];
        $customerList[] = new Customer($cus_id,$cus_name,$cus_address,$cus_tel);
        
    }
    require("connection_close.php");
    return $customerList;
}
}