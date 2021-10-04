<?php echo "<br> คุณต้องการลบสินค้ารายการนี้ในใบเสนอราคา?<br>
            <br> รหัสรายละเอียดใบเสนอราคา : $quotation_detail->qd_id <br>
                 รหัสใบเสนอราคา: $quotation_detail->quo_id<br>
                 รหัสสี: $quotation_detail->color_id <br>
                 จำนวนสีที่สั่ง: $quotation_detail->amountColor <br>
                 จำนวนสินค้าที่สั่ง: $quotation_detail->amountProduct <br>";?>
<form method="get" action="">
    <input type="hidden" name="controller" value="quotation_detail"/>
    <input type="hidden" name="qd_id" value="<?php echo $quotation_detail->qd_id; ?>"/>
    <button type="submit" name="action" value="index">กลับ</button>
    <button type="submit" name="action" value="delete">ลบ</button>
</form>