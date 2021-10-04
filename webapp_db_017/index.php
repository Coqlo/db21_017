<?php
if(isset($_GET['controller'])&&isset($_GET['action']))
{
    $controller = $_GET['controller'];
    $action = $_GET['action'];
}else
{
    $controller = 'pages';
    $action = 'home';
}?>
    <html>
        <head><meta http-equiv="Content-Language" content="th">
              <meta http-equiv="content-Type" content="text/html; charset=window-874">
              <meta http-equiv="content-Type" content="text/html; charset=tis-620">
              <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        </head>
            <body>
                <?php echo "controller = ".$controller.",action = ".$action;?>
                <br> 
                    [<a href="?controller=pages&action=home">หน้าแรก</a>]
                    [<a href="?controller=quotation&action=index">ใบเสนอราคา</a>]
                    [<a href="?controller=quotation_detail&action=index">รายละเอียดใบเสนอราคา</a>]
                <br>
                <?php require_once("routes.php");?>
            </body>
    </html>