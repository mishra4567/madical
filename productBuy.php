<?php
include_once("./top.inc.php");
?>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<style>
    .swiper {
        width: 50%;
        height: 50%;
    }

    .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .swiper {
        margin-left: auto;
        margin-right: auto;
    }
</style>
<div class="page-banner overlay-dark bg-image" style="background-image: url(./assets/img/bg_image_1.jpg);">
    <div class="banner-section">
        <div class="container text-center wow fadeInUp">
            <nav aria-label="Breadcrumb">
                <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
                    <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Buy Product</li>
                </ol>
            </nav>
            <h1 class="font-weight-normal">Product Buy</h1>
        </div> <!-- .container -->
    </div> <!-- .banner-section -->
</div> <!-- .page-banner -->
<div class="product-page-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                Lorem ipsum dolor sit amet.
            </div>
            <div class="col-md-6">
                Lorem ipsum dolor sit amet consectetur.
            </div>
        </div>
        <div class="product-page-section">
            <div class="container">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="./assets/img/blog/blog_1.jpg" alt="">
                        </div>
                        <div class="swiper-slide">
                        <img src="./assets/img/blog/blog_2.jpg" alt="">
                        </div>
                        <div class="swiper-slide">
                        <img src="./assets/img/blog/blog_1.jpg" alt="">
                        
                        </div>
                        <div class="swiper-slide">Slide 4</div>
                        <div class="swiper-slide">Slide 5</div>
                        <div class="swiper-slide">Slide 6</div>
                        <div class="swiper-slide">Slide 7</div>
                        <div class="swiper-slide">Slide 8</div>
                        <div class="swiper-slide">Slide 9</div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
        <!-- <h1 class="text-center wow fadeInUp">Page not found</h1> -->
        <!-- <p class="text-center wow fadeInUp">Sorry, we're experiencing some technical difficulties. Please enter right name.</p> -->
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 1,
      spaceBetween: 30,
      loop: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>
<?php
include_once("./footer.inc.php");
?>