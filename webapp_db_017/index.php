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
        <head></head>
            <body>
                
                <br> [<a href="?controller=pages&action=home">หน้าแรก</a>] [<a href="?controller=quotation&action=index">ใบเสนอราคา</a>]<br>
                <?php require_once("routes.php");?>
            </body>
    </html>