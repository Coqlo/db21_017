<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db21_017";
$conn = new mysqli($servername,$username,$password,$dbname);

if($conn->connect_error){
    die("Connection failed:".$conn->connect_error);
}
if(!$conn->select_db($dbname)){
    die("Connection failed:".$conn->connect_error);
}
?>