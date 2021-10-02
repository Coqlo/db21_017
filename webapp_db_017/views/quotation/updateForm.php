<form method="get" action="">
    <label>รหัสใบเสนอราคา <input type="text" name="quo_id"
        value="<?php echo $quotation->quo_id; ?>"/></label><br>
    <label>วันที่ออกใบเสนอราคา <input type="date" name="date" 
        value="<?php echo date("Y-m-d",strtotime($quotation->date)); ?>"/></label><br>
    <label>เงื่อนไขชำระ <input type="int" name="condition_pay"
        value="<?php echo $quotation->condition_pay; ?>"/></label><br>
    <label>รหัสพนักงาน<select name ="emp_id">
    <?php foreach($employee_list as $emp)
    {
        echo  "<option value=$emp->emp_id";
        if($quotation->emp_id==$emp->emp_id){echo "selected";}
        echo ">$emp->emp_id</option>";
    }?>
     </select></label><br>
      <label>รหัสลูกค้า<select name ="cus_id">
    <?php foreach($customer_list as $cus)
    {
        echo  "<option value=$cus->cus_id";
        if($quotation->cus_id==$cus->cus_id){echo "selected";}
        echo   ">$cus->cus_id</option>";
    }?>
    </select></label><br>
    <input type="hidden" name="controller" value="quotation"/>
    <button type="submit" name="action" value="index">ย้อนกลับ </button>
    <button type="submit" name="action" value="update">บันทึก</button>
</form>