<?php
class Quotation_detail{
public $qd_id;
public $quo_id;
public $color_id;
public $nameColor;
public $amountColor;
public $amountProduct;



public function Quotation_detail($qd_id,$quo_id,$color_id,$nameColor,$amountColor,$amountProduct)
{
    $this->qd_id=$qd_id;
    $this->quo_id=$quo_id;
    $this->color_id=$color_id;
    $this->nameColor=$nameColor;
    $this->amountColor=$amountColor;
    $this->amountProduct=$amountProduct;
  
  
}

public static function getAll()
{
    $quotation_deailList = [];
    require("connection_connect.php");
    $sql = "SELECT qd_id,quo_id,quotation_detail.color_id,color.nameColor,amountColor,amountProduct 
            FROM quotation_detail 
            INNER JOIN color ON quotation_detail.color_id=color.color_id;";
    $result = $conn->query($sql);
    while($my_data = $result->fetch_assoc())
    {
        $qd_id = $my_data['qd_id'];
        $quo_id = $my_data['quo_id'];
        $color_id = $my_data['color_id'];
        $nameColor = $my_data['nameColor'];
        $amountColor = $my_data['amountColor'];
        $amountProduct = $my_data['amountProduct'];
        $quotation_deailList[] = new Quotation_detail($qd_id,$quo_id,$color_id,$nameColor,$amountColor,$amountProduct);        
    }
    require("connection_close.php");
    return $quotation_deailList; 
}


public static function add($amountColor,$amountProduct,$color_id,$quo_id)
{
    require("connection_connect.php");
    $sql="insert into quotation_detail(amountColor,amountProduct,color_id,quo_id)values
    ('$amountColor','$amountProduct','$color_id','$quo_id')";
    $result=$conn->query($sql);
    require("connection_close.php");
    return "add success $result rows";
}


public static function get($id)
{
    require("connection_connect.php");
    $sql = "SELECT qd_id,quo_id,quotation_detail.color_id,color.nameColor,amountColor,amountProduct 
    FROM quotation_detail 
    INNER JOIN color ON quotation_detail.color_id=color.color_id
    WHERE qd_id='$id'";
    $result = $conn->query($sql);
    $my_data=$result->fetch_assoc();
    $qd_id = $my_data['qd_id'];
    $quo_id = $my_data['quo_id'];
    $color_id = $my_data['color_id'];
    $nameColor = $my_data['nameColor'];
    $amountColor = $my_data['amountColor'];
    $amountProduct = $my_data['amountProduct'];
    require("connection_close.php");
    return new Quotation_detail($qd_id,$quo_id,$color_id,$nameColor,$amountColor,$amountProduct);
}


public static function update($qd_id,$amountColor,$amountProduct,$color_id,$quo_id)
{
    require("connection_connect.php");
    $sql = "UPDATE quotation_detail 
    SET qd_id='$qd_id',amountColor='$amountColor',amountProduct='$amountProduct',color_id='$color_id',quo_id='$quo_id'
    WHERE qd_id='$qd_id'";
    $result = $conn->query($sql);
    require("connection_close.php");
    return "update success $result row";
}


public static function delete($qd_id)
{
    require("connection_connect.php");
    $sql = "DELETE FROM quotation_detail WHERE quotation_detail.qd_id = '$qd_id'";
    $result=$conn->query($sql);
    require("connection_close.php");
    return "delete success $result row";
}

}
?>