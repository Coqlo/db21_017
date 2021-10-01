<form method="get" action="">
    <label>รหัสใบเสนอราคา <input type="text" name="quo_id"/></label><br>
    <label>วันที่ออกใบเสนอราคา <input type="date" name="quoDate" value="<?php echo date("Y-m-d"); ?>"/></label><br>
    <label>เงื่อนไขชำระ <input type="text" name="condition_pay"/></label><br>
    <label>พนักงาน<select name ="emp_id">
    <?php foreach($employee_list as $emp)
    {
        echo  "<option value=$emp->emp_id>$emp->emp_id</option>";
    }?>
     </select></label><br>
      <label>ลูกค้า<select name ="cus_id">
    <?php foreach($customer_list as $cus)
    {
        echo  "<option value=$cus->cus_id>$cus->cus_id</option>";
    }?>
    </select></label><br>
    <input type="hidden" name="controller" value="quotation"/>
    <button type="submit" name="action" value="index">ย้อนกลับ </button>
    <button type="submit" name="action" value="addQuotation">บันทึก</button>
</form>