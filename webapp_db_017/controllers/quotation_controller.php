<?php
class QuotationController
{
    public function index()
    {
        $quotation_list = Quotation::getAll();
        require_once('views/quotation/index_quotation.php');
    }

    public function newQuotation()
    {
        $quotation_list = Quotation::getAll();
        $employee_list = Employee::getAll();
        $customer_list = Customer::getAll();
        require_once('views/quotation/newQuotation.php');
    }

    public function addQuotation()
    {
        $quo_id=$_GET['quo_id'];
        $date=$_GET['quoDate'];
        $conditon=$_GET['condition_pay'];
        $emp_id=$_GET['emp_id'];
        $cus_id=$_GET['cus_id'];
        Quotation::add($quo_id,$date,$conditon,$emp_id,$cus_id); //call function Add on quotationModel

        QuotationController::index(); //call function index on QuotationController
    }
}
?>