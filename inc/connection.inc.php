<?php 
session_start();
$con=mysqli_connect("localhost","root","","madical");
if ($con->connect_error) {
    // Redirect to an error page or handle the error
    header("Location: ../error.php");
    exit();
}
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/project/madical/');
define('SITE_PATH','http://localhost:8088/project/madical/');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');
$sitename="madica";
$sitAdmin="mcAdmin";

?>