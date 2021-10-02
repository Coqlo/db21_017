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

    public function updateForm()
    {
        $id = $_GET['quo_id'];
        $quotation = Quotation::get($id);
        $employee_list = Employee::getAll();
        $customer_list = Customer::getAll();
        echo "$quotation->quo_id , $quotation->date , $quotation->condition_pay , $quotation->emp_id , $quotation->cus_id";
        require_once('views/quotation/updateForm.php');
    }

    public function update()
    {
        $quo_id = $_GET['quo_id'];
        $date = $_GET['quoDate'];
        $condition = $_GET['condition_pay'];
        $emp_id = $_GET['emp_id'];
        $cus_id = $_GET['cus_id'];
        Quotation::update($quo_id,$date,$condition,$emp_id,$cus_id);
        QuotationController::index();
    }
    public function deleteConfirm()
    {
        $quo_id = $_GET['quo_id'];
        $quotation = Quotation::get($quo_id);
        require_once('views/quotation/deleteConfirm.php');
    }
    public function delete()
    {
        $quo_id=$_GET['quo_id'];
        Quotation::delete($quo_id); //delete quotation
        QuotationController::index();
    }
}
?>