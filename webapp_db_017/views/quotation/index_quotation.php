<table border = 1>
    <tr>
        <td>รหัสใบเสนอราคา</td>
        <td>วันที่</td>
        <td>เงื่อนไขชำระ</td>
        <td>ชื่อพนักงาน(รหัสพนักงาน)</td>
        <td>ชื่อลูกค้า(รหัสลูกค้า)</td>
    </tr>
<?php foreach($quotation_list as $quotation)
{
    echo "<tr> 
            <td>$quotation->quo_id</td>
            <td>$quotation->date</td>
            <td>$quotation->conditon_pay</td>
            <td>$quotation->emp_name</td>
            <td>$quotation->cus_name</td>
          </tr>";
}
echo "</table>";
?>
