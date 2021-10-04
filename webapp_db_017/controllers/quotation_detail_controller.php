<?php
class QuotationDetailController
{
    public function index()
    {
        $quotation_deailList = Quotation_detail::getAll();
        require_once('views/quotation_detail/index_quotation_detail.php');
    }
    public function newQuotationDetail()
    {
        $quotationDetail_list = Quotation_detail::getAll();
        $quotation_list = Quotation::getAll();
        $color_list = Color::getAll();
        require_once('views/quotation_detail/new_quotation_detail.php');
    }

    public function addQuotationDetail()
    {
        $amountColor=$_GET['amountColor'];
        $amountProduct=$_GET['amountProduct'];
        $color_id=$_GET['color_id'];
        $quo_id=$_GET['quo_id'];
        Quotation_detail::add($amountColor,$amountProduct,$color_id,$quo_id); 
        QuotationDetailController::index();
    }

    public function updateForm()
    {
        $id = $_GET['qd_id'];
        $quotation_detail = Quotation_detail::get($id);
        $quotation_list = Quotation::getAll();
        $color_list = Color::getAll();
        require_once('views/quotation_detail/updateForm_quotation_detail.php');
    }

    public function update()
    {
        $qd_id = $_GET['qd_id'];
        $amountColor = $_GET['amountColor'];
        $amountProduct = $_GET['amountProduct'];
        $color_id = $_GET['color_id'];
        $quo_id = $_GET['quo_id'];
        Quotation_detail::update($qd_id,$amountColor,$amountProduct,$color_id,$quo_id);
        QuotationDetailController::index();
    }
    public function deleteConfirm()
    {
        $qd_id = $_GET['qd_id'];
        $quotation_detail = Quotation_detail::get($qd_id);
        require_once('views/quotation_detail/deleteConfirm_quotation_detail.php');
    }
    public function delete()
    {
        $qd_id=$_GET['qd_id'];
        Quotation_detail::delete($qd_id);
        QuotationDetailController::index();
    }

}
?>