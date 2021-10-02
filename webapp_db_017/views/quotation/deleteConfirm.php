<?php echo "<br> Are you sure to delete this quotation<br>
            <br> quotation id: $quotation->quo_id <br>
                 date create: $quotation->date $quotation->condition<br>
                 staff id: $quotation->emp_id <br>
                 customer id: $quotation->cus_id <br>";?>
<form method="get" action="">
    <input type="hidden" name="controller" value="quotation"/>
    <input type="hidden" name="quo_id" value="<?php echo $quotation->quo_id; ?>"/>
    <button type="submit" name="action" value="index">กลับ</button>
    <button type="submit" name="action" value="delete">ลบ</button>
</form>