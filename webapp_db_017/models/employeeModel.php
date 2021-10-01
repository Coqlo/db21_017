<?php
class Employee{
    public $emp_id,$username,$password,$emp_name,$positon;
public function Employee($emp_id,$username,$password,$emp_name,$positon)
{
    $this->emp_id =$emp_id ;
    $this->username =$username ;
    $this->password =$password ;
    $this->emp_name =$emp_name ;
    $this->positon =$positon ;
}
public static function getAll()
{
    $employeeList=[];
    require("connection_connect.php");
    $sql = "SELECT * FROM employee";
    $result = $conn->query($sql);
    while($my_data = $result->fetch_assoc())
    {
        $emp_id = $my_data['emp_id'];
        $username = $my_data['userName'];
        $password = $my_data['password'];
        $emp_name = $my_data['empName'];
        $positon = $my_data['position'];
        $employeeList[] = new Employee($emp_id,$username,$password,$emp_name,$positon);
        
    }
    require("connection_close.php");
    return $employeeList;
}
}