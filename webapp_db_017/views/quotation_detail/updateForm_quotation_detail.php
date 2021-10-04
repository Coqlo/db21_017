<form method="get" action="">
    <label>รหัสรายละเอียดใบเสนอราคา <input type="int" name="qd_id"
        value="<?php echo $quotation_detail->qd_id; ?>"/></label><br>
    <label>จำนวนสีที่สั่ง <input type="int" name="amountColor"
        value="<?php echo $quotation_detail->amountColor; ?>"/></label><br>
    <label>จำนวนสินค้าที่สั่ง <input type="int" name="amountProduct"
        value="<?php echo $quotation_detail->amountProduct; ?>"/></label><br>
    <label>รหัสสี<select name ="color_id">
    <?php foreach($color_list as $color)
    {
        echo  "<option value=$color->color_id";
        if($quotation_detail->color_id==$color->color_id){echo "selected";}
        echo ">$color->color_id</option>";
    }?>
     </select></label><br>
      <label>รหัสใบเสนอราคา<select name ="quo_id">
    <?php foreach($quotation_list as $quotation)
    {
        echo  "<option value=$quotation->quo_id";
        if($quotation_detail->quo_id==$quotation->quo_id){echo "selected";}
        echo   ">$quotation->quo_id</option>";
    }?>
    </select></label><br>
    <input type="hidden" name="controller" value="quotation_detail"/>
    <button type="submit" name="action" value="index">ย้อนกลับ </button>
    <button type="submit" name="action" value="update">บันทึก</button>
</form>