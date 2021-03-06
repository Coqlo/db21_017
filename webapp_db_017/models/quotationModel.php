<?php
class Quotation{
public $quo_id,$date,$condition_pay,$emp_name,$emp_id,$cus_name,$cus_id; //var of table quotation
public function Quotation($quo_id,$date,$condition_pay,$emp_name,$emp_id,$cus_name,$cus_id)
{
    $this->quo_id =$quo_id ;
    $this->date =$date ;
    $this->condition_pay =$condition_pay ;
    $this->emp_name =$emp_name ;
    $this->emp_id =$emp_id ;
    $this->cus_name =$cus_name ;
    $this->cus_id =$cus_id ;
    
}
public static function getAll()
{
    $quotationList = [];
    require("connection_connect.php");
    $sql = "SELECT quo_id,quoDate,condition_pay,employee.empName,quotation.emp_id,customer.cusName,quotation.cus_id 
            FROM customer INNER JOIN quotation ON customer.cus_id = quotation.cus_id
            INNER JOIN employee ON quotation.emp_id = employee.emp_id 
            ORDER BY quotation.quo_id ASC";
    $result = $conn->query($sql);
    while($my_data = $result->fetch_assoc())
    {
        $quo_id = $my_data['quo_id'];
        $date = $my_data['quoDate'];
        $condition_pay = $my_data['condition_pay'];
        $emp_name = $my_data['empName'];
        $emp_id = $my_data['emp_id'];
        $cus_name = $my_data['cusName'];
        $cus_id = $my_data['cus_id'];
        $quotationList[] = new Quotation($quo_id,$date,$condition_pay,$emp_name,$emp_id,$cus_name,$cus_id);
        
    }
    require("connection_close.php");
    return $quotationList;
}
public static function add($quo_id,$date,$condition,$emp_id,$cus_id)
{
    require("connection_connect.php");
    $sql="insert into quotation(quo_id,quoDate,condition_pay,emp_id,cus_id)values
    ('$quo_id','$date','$condition','$emp_id','$cus_id')";
    $result=$conn->query($sql);
    require("connection_close.php");
    return "add success $result rows";
}
public static function get($id)
{
    require("connection_connect.php");
    $sql = "SELECT quo_id,quoDate,condition_pay,employee.empName,quotation.emp_id,customer.cusName,quotation.cus_id 
    FROM customer INNER JOIN quotation ON customer.cus_id = quotation.cus_id
    INNER JOIN employee ON quotation.emp_id = employee.emp_id
    WHERE quo_id='$id'
    ORDER BY quotation.quo_id ASC";
    $result = $conn->query($sql);
    $my_data=$result->fetch_assoc();
    $quo_id = $my_data['quo_id'];
    $date = $my_data['quoDate'];
    $condition_pay = $my_data['condition_pay'];
    $emp_name = $my_data['empName'];
    $emp_id = $my_data['emp_id'];
    $cus_name = $my_data['cusName'];
    $cus_id = $my_data['cus_id'];
    require("connection_close.php");
    return new Quotation($quo_id,$date,$condition_pay,$emp_name,$emp_id,$cus_name,$cus_id);
}
public static function update($quo_id,$date,$condition,$emp_id,$cus_id)
{
    require("connection_connect.php");
    $sql = "UPDATE quotation 
    SET quo_id='$quo_id',quoDate='$date',condition_pay='$condition',emp_id='$emp_id',cus_id='$cus_id'
    WHERE quotation.quo_id='$quo_id'";
    $result = $conn->query($sql);
    require("connection_close.php");
    return "update success $result row";
}
public static function delete($quo_id)
{
    require("connection_connect.php");
    $sql = "DELETE FROM quotation WHERE quotation.quo_id = '$quo_id'";
    $result=$conn->query($sql);
    require("connection_close.php");
    return "delete success $result row";
}
}
?>