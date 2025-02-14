<?php
require_once("./inc/connection.inc.php");
require_once("./inc/function.inc.php");
// prx($_SERVER);
if(isset($_SESSION['ADMIN_LOGIN'])&& $_SESSION['ADMIN_LOGIN']!=''){
    
}else{
    header('location:./signin.php');
    die();
}
$current_page = basename($_SERVER['PHP_SELF']);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title><?php echo $sitename ?> :- <?php echo $sitAdmin ?></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <!-- custom css -->
     <link rel="stylesheet" href="./css/custom.css">
</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <!-- <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div> -->
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="index.php" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i><?php echo $sitAdmin ?></h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0"><?php echo $_SESSION['ADMIN_USERNAME'] ?></h6>
                        <span><?php echo $_SESSION['ADMIN_MENEGE'] ?></span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="index.php" class="nav-item nav-link <?php echo ($current_page=='index.php')?'active':''; ?>"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                    <a href="./product.php" class="nav-item nav-link <?php echo ($current_page=='product.php')?'active':''; ?>"><i class="fa fa-th me-2"></i>Product Master</a>
                    <?php if($_SESSION['ADMIN_ROLE']==1){ ?>

                    <?php  }else{ ?>

                    <?php  }?>
                    <?php if($_SESSION['ADMIN_ROLE']!=1){ ?>
                    <a href="./categories.php" class="nav-item nav-link <?php echo ($current_page=='categories.php')?'active':''; ?>"><i class="fa fa-keyboard me-2"></i>Categories Master</a>
                    <a href="./sub_categories.php" class="nav-item nav-link <?php echo ($current_page=='sub_categories.php')?'active':''; ?>"><i class="fa fa-keyboard me-2"></i>Sub Categories</a>
                    <a href="./vendor.php" class="nav-item nav-link <?php echo ($current_page=='vendor.php')?'active':''; ?>"><i class="fa fa-chart-bar me-2"></i>Vendor Master</a>
                    <a href="./contact.php" class="nav-item nav-link <?php echo ($current_page=='contact.php')?'active':''; ?>"><i class="fa fa-chart-bar me-2"></i>Contact Us</a>
                    <?php } ?>
                </div>
            </nav>