<?php
class Quotation{
    public $quo_id,$date,$conditon_pay,$emp_id,$emp_name,$cus_id,$cus_name; //var of table quotation
public function Quotation($quo_id,$date,$conditon_pay,$emp_id,$emp_name,$cus_id,$cus_name)
{
    $this->quo_id =$quo_id ;
    $this->date =$date ;
    $this->conditon_pay =$conditon_pay ;
    $this->emp_id =$emp_id ;
    $this->emp_name =$emp_name ;
    $this->cus_id =$cus_id ;
    $this->cus_name =$cus_name ;
}
public static function getAll()
{
    $quotationList = [];
    require("connection_connect.php");
    $sql = "SELECT quo_id,quoDate,condition_pay,quotation.emp_id,employee.empName,quotation.cus_id,customer.cusName  
            FROM customer INNER JOIN quotation ON customer.cus_id = quotation.cus_id
            INNER JOIN employee ON quotation.emp_id = employee.emp_id";
    $result = $conn->query($sql);
    while($my_data = $result->fetch_assoc())
    {
        $quo_id = $my_data['quo_id'];
        $date = $my_data['quoDate'];
        $conditon_pay = $my_data['condition_pay'];
        $emp_id = $my_data['emp_id'];
        $emp_name = $my_data['empName'];
        $cus_id = $my_data['cus_id'];
        $cus_name = $my_data['cusName'];
        $quotationList[] = new Quotation($quo_id,$date,$conditon_pay,$emp_id,$emp_name,$cus_id,$cus_name);
    }
    require("connection_close.php");
    return $quotationList;
}
}
?>