<?php
class QuotationDetailController
{
    public function index()
    {
        $quotation_deailList = Quotation_detail::getAll();
        require_once('views/quotation_detail/index_quotation_detail.php');
    }

}
?>