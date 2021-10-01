สร้างใบเสนอราคาใหม่<a href="?controller=quotation&action=newQuotation">คลิก</a><br>
<table border = 1>
    <tr>
        <td>รหัสใบเสนอราคา</td>
        <td>วันที่ออกใบเสนอราคา</td>
        <td>เงื่อนไขชำระ</td>
        <td>ชื่อพนักงาน</td>
        <td>รหัสพนักงาน</td>
        <td>ชื่อลูกค้า</td>
        <td>รหัสลูกค้า</td>
        <td>อัพเดทข้อมูล</td>
        <td>ลบข้อมูล</td>
    </tr>
<?php foreach($quotation_list as $quotation)
{
    echo "<tr> 
            <td>$quotation->quo_id</td>
            <td>$quotation->date</td>
            <td>$quotation->conditon_pay</td>
            <td>$quotation->emp_name</td>
            <td>$quotation->emp_id</td>
            <td>$quotation->cus_name</td>
            <td>$quotation->cus_id</td>
            <td><a href="?controller=quotation&action=update&quo_id=$quotation->quo_id">อัพเดท</td>
            <td>ลบ</td>
          </tr>";
}
echo "</table>";
?>
