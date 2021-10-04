<form method="get" action="">
    <label>รหัสรายละเอียดใบเสนอราคา <input type="text" name="qd_id"
        value="<?php echo $quotation_detail->qd_id; ?>" disabled/></label><br>
    <label>จำนวนสีที่สั่ง <input type="int" name="amountColor"
        value="<?php echo $quotation_detail->amountColor; ?>"/></label><br>
    <label>จำนวนสินค้าที่สั่ง <input type="int" name="amountProduct"
        value="<?php echo $quotation_detail->amountProduct; ?>"/></label><br>
    <label>รหัสสี<select name ="color_id">
    <?php foreach($color_list as $colorlist)
    {
        echo  "<option value=$colorlist->color_id";
        if($colorlist->color_id==$quotation_detail->color_id){echo "selected='selected'";}
        echo ">$colorlist->color_id ($colorlist->nameColor-$colorlist->colorProduct)</option>";
    }?>
     </select></label><br>
      <label>รหัสใบเสนอราคา<select name ="quo_id">
    <?php foreach($quotation_list as $quotationlist)
    {
        echo  "<option value=$quotationlist->quo_id";
        if($quotation_detail->quo_id==$quotationlist->quo_id){echo "selected='selected'";}
        echo   ">$quotationlist->quo_id</option>";
    }?>
    </select></label><br>
    <input type="hidden" name="controller" value="quotation_detail"/>
    <button type="submit" name="action" value="index">ย้อนกลับ </button>
    <button type="submit" name="action" value="update">บันทึก</button>
</form>