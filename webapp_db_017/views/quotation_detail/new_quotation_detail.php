<form method="get" action="">
    <label>จำนวนสีที่สั่ง <input type="int" name="amountColor"/></label><br>
    <label>จำนวนสินค้าที่สั่ง <input type="int" name="amountProduct"/></label><br>
    <label>เลือกสี<select name ="color_id">
    <?php foreach($color_list as $color)
    {
        echo  "<option value=$color->color_id>$color->color_id</option>";
    }?>
     </select></label><br>
      <label>รหัสใบเสนอราคา<select name ="quo_id">
    <?php foreach($quotation_list as $quotation)
    {
        echo  "<option value=$quotation->quo_id>$quotation->quo_id</option>";
    }?>
    </select></label><br>
    <input type="hidden" name="controller" value="quotation_detail"/>
    <button type="submit" name="action" value="index">ย้อนกลับ </button>
    <button type="submit" name="action" value="addQuotationDetail">บันทึก</button>
</form>