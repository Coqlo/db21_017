<?php
class Color{
    public $color_id;
    public $nameColor;
    public $colorProduct;

public function Color($color_id,$nameColor,$colorProduct)
{
    $this->color_id =$color_id ;
    $this->nameColor =$nameColor ;
    $this->colorProduct =$colorProduct ;

}
public static function getAll()
{
    $colorList=[];
    require("connection_connect.php");
    $sql = "SELECT * FROM color";
    $result = $conn->query($sql);
    while($my_data = $result->fetch_assoc())
    {
        $color_id = $my_data['color_id'];
        $nameColor = $my_data['nameColor'];
        $colorProduct = $my_data['colorProduct'];
        $colorList[] = new color($color_id,$nameColor,$colorProduct);
    }
    require("connection_close.php");
    return $colorList;
}
}