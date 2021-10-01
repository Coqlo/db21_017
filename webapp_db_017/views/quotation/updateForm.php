<form method="get" action="">
    <label>รหัสใบเสนอราคา <input type="text" name="quo_id"
    value="<?php echo $quotation->quo_id; ?>"/></label><br>
    <label>วันที่ออกใบเสนอราคา <input type="date" name="quoDate" 
    value="<?php echo date("Y-m-d",strtotime($quotation->quo_date)); ?>"/></label><br>
    <label>เงื่อนไขชำระ <input type="text" name="condition_pay"
    value="<?php echo $quotation->condition; ?>"/></label><br>
    <label>พนักงาน<select name ="emp_id">
    <?php foreach($employee_list as $emp)
    {
        echo  "<option value=$emp->emp_id";
        if($emp->id==$quotation->emp_id){echo "selected='selected'";}
        echo ">$emp->emp_id</option>";
    }?>
     </select></label><br>
      <label>ลูกค้า<select name ="cus_id">
    <?php foreach($customer_list as $cus)
    {
        echo  "<option value=$cus->cus_id";
        if($cus->id==$quotation->cus_id){echo "selected='selected'";}
        echo">$cus->cus_id</option>";
    }?>
    </select></label><br>
    <input type="hidden" name="controller" value="quotation"/>
    <button type="submit" name="action" value="index">ย้อนกลับ </button>
    <button type="submit" name="action" value="update">บันทึก</button>
</form>