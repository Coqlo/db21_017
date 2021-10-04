นายธนภัทร โตดิลกเวชช์ 6020550541 หมู่ 841<br>
เพิ่มสินค้าในใบเสนอราคา<a href="?controller=quotation_detail&action=newQuotationDetail">คลิก</a><br>
<table border = 1>
    <tr>
        <td>รหัสรายละเอียดใบเสนอราคา</td>
        <td>รหัสใบเสนอราคา</td>
        <td>รหัสสี</td>
        <td>ชื่อสี</td>
        <td>จำนวนสีที่สั่ง</td>
        <td>จำนวนสินค้าที่สั่ง</td>
        <td>อัพเดทข้อมูล</td>
        <td>ลบข้อมูล</td>
    </tr>
<?php foreach($quotation_deailList as $quotation_detail)
{
    echo "<tr> 
            <td>$quotation_detail->qd_id</td>
            <td>$quotation_detail->quo_id</td>
            <td>$quotation_detail->color_id</td>
            <td>$quotation_detail->nameColor</td>
            <td>$quotation_detail->amountColor</td>
            <td>$quotation_detail->amountProduct</td>
            <td><a href=?controller=quotation_detail&action=updateForm&qd_id=$quotation_detail->qd_id>อัพเดท</a></td>
            <td><a href=?controller=quotation_detail&action=deleteConfirm&qd_id=$quotation_detail->qd_id>ลบ</a></td>
          </tr>";
}
echo "</table>";
?>
