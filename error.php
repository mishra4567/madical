<?php
include_once("./top.inc.php");
?>
<div class="page-banner overlay-dark bg-image" style="background-image: url(./assets/img/bg_image_1.jpg);">
    <div class="banner-section">
        <div class="container text-center wow fadeInUp">
            <nav aria-label="Breadcrumb">
                <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
                    <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Connection Error</li>
                </ol>
            </nav>
            <h1 class="font-weight-normal">Error</h1>
        </div> <!-- .container -->
    </div> <!-- .banner-section -->
</div> <!-- .page-banner -->
<div class="page-section">
    <div class="container">
        <h1 class="text-center wow fadeInUp">Database Connection Error</h1>
        <p class="text-center wow fadeInUp">Sorry, we're experiencing some technical difficulties. Please try again later.</p>
    </div>
</div>
    <?php
    include_once("./footer.inc.php");
    ?>