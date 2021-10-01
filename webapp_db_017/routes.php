<?php
$controllers=array('pages'=>['home','error'],'quotation'=>['index','newQuotation','addQuotation','update']);//list controller and action
function call($controller,$action)
{
    require_once("controllers/".$controller."_controller.php");
    switch($controller)
    {
        case "pages"        :   $controller = new PagesController();
                                break;
        case "quotation"    :   require_once("models/quotationModel.php");
                                require_once("models/employeeModel.php");
                                require_once("models/customerModel.php");
                                $controller = new QuotationController();
                                break;
    }
    $controller->{$action}();
}
if(array_key_exists($controller,$controllers))
{	
    if(in_array($action,$controllers[$controller]))
	{ 	
        call($controller,$action);
     }else{	
        call('pages','error');
    }
}else{	
    call('pages','error');
	}

?>