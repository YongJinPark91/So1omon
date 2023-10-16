<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<!-- molla/index-2.html  22 Nov 2019 09:55:32 GMT -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Molla - Bootstrap eCommerce Template</title>
    <meta name="keywords" content="HTML5 Template">
    <meta name="description" content="Molla - Bootstrap eCommerce Template">
    <meta name="../author" content="p-themes">
    <!-- Favicon -->
    <link rel="../apple-touch-icon" sizes="180x180" href="../assets/images/icons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/icons/favicon-16x16.png">
    <link rel="manifest" href="../assets/images/icons/site.html">
    <link rel="mask-icon" href="../assets/images/icons/safari-pinned-tab.svg" color="#666666">
    <link rel="shortcut icon" href="../assets/images/icons/favicon.ico">
    <meta name="../apple-mobile-web-app-title" content="Molla">
    <meta name="../application-name" content="Molla">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config" content="../assets/images/icons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/plugins/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="../assets/css/plugins/magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="../assets/css/plugins/jquery.countdown.css">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/skins/skin-demo-2.css">
<style>

    .image-with-text {
    display: flex;
    align-items: center;
    }

    .image-with-text img {
    max-width: 100px; /* Adjust the image width as needed */
    margin-right: 10px; /* Add some spacing between the image and text */
    }

    .image-with-text p {
    margin: 0; /* Remove any default paragraph margins */
    }

    .board_strong{
        font-size: 12px;
        padding: 3px 5px;
        margin-right: 7px;
        background-color: white;
        border: 1px solid rgb(190, 190, 190);
        color: gray;
    }
    
    .board_span{
        font-weight: 900;
    }

</style>
</head>


<body> 
    <div class="page-wrapper">
        <header class="header">
            <div class="header-top">
                <div class="container" style="padding-top: 10px;">
                    <div class="header-right">
                        <ul class="top-menu">
                            <li>
                                <a href="#">Links</a>
                                <ul>
                                    <li><a href="tel:#"><i class="icon-phone"></i>Call: +8210-4329-2816</a></li>
                                    <li><a href="wishlist.html"><i class="icon-heart-o"></i>My Wishlist <span>(3)</span></a></li>
                                    <li><a href="#signin-modal" data-toggle="modal"><i class="icon-user"></i>Login</a></li>
                                </ul>
                            </li>
                        </ul><!-- End .top-menu -->
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-top -->
            

            <div class="header-middle sticky-header">
                <div class="container">
                    <div class="header-left">
                        <button class="mobile-menu-toggler">
                            <span class="sr-only">Toggle mobile menu</span>
                            <i class="icon-bars"></i>
                        </button>

                        <a href="index.html" class="logo">
                            <img src="../assets/images/So1omon (3).gif" alt="Molla Logo" width="200">
                        </a>

                        <nav class="main-nav">
                            <ul class="menu sf-arrows">
                                <li class="megamenu-container active">
                                    <a href="index.html" style="padding-right: 5px;">Home</a>
                                </li>
                                <li>
                                    <a href="category.html" class="sf-with-ul">Shop</a>

                                    <div class="megamenu megamenu-md">
                                        <div class="row no-gutters">
                                            <div class="col-md-8">
                                                <div class="menu-col">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="menu-title">Shop with sidebar</div><!-- End .menu-title -->
                                                            <ul>
                                                                <li><a href="category-list.html">Shop List</a></li>
                                                                <li><a href="category-2cols.html">Shop Grid 2 Columns</a></li>
                                                                <li><a href="category.html">Shop Grid 3 Columns</a></li>
                                                                <li><a href="category-4cols.html">Shop Grid 4 Columns</a></li>
                                                                <li><a href="category-market.html"><span>Shop Market<span class="tip tip-new">New</span></span></a></li>
                                                            </ul>

                                                            <div class="menu-title">Shop no sidebar</div><!-- End .menu-title -->
                                                            <ul>
                                                                <li><a href="category-boxed.html"><span>Shop Boxed No Sidebar<span class="tip tip-hot">Hot</span></span></a></li>
                                                                <li><a href="category-fullwidth.html">Shop Fullwidth No Sidebar</a></li>
                                                            </ul>
                                                        </div><!-- End .col-md-6 -->

                                                        <div class="col-md-6">
                                                            <div class="menu-title">Product Category</div><!-- End .menu-title -->
                                                            <ul>
                                                                <li><a href="product-category-boxed.html">Product Category Boxed</a></li>
                                                                <li><a href="product-category-fullwidth.html"><span>Product Category Fullwidth<span class="tip tip-new">New</span></span></a></li>
                                                            </ul>
                                                            <div class="menu-title">Shop Pages</div><!-- End .menu-title -->
                                                            <ul>
                                                                <li><a href="cart.html">Cart</a></li>
                                                                <li><a href="checkout.html">Checkout</a></li>
                                                                <li><a href="wishlist.html">Wishlist</a></li>
                                                                <li><a href="dashboard.html">My Account</a></li>
                                                                <li><a href="#">Lookbook</a></li>
                                                            </ul>
                                                        </div><!-- End .col-md-6 -->
                                                    </div><!-- End .row -->
                                                </div><!-- End .menu-col -->
                                            </div><!-- End .col-md-8 -->

                                            <div class="col-md-4">
                                                <div class="banner banner-overlay">
                                                    <a href="category.html" class="banner banner-menu">
                                                        <img src="../assets/images/menu/banner-1.jpg" alt="Banner">

                                                        <div class="banner-content banner-content-top">
                                                            <div class="banner-title text-white">Last <br>Chance<br><span><strong>Sale</strong></span></div><!-- End .banner-title -->
                                                        </div><!-- End .banner-content -->
                                                    </a>
                                                </div><!-- End .banner banner-overlay -->
                                            </div><!-- End .col-md-4 -->
                                        </div><!-- End .row -->
                                    </div><!-- End .megamenu megamenu-md -->
                                </li>
                                <li>
                                    <a href="product.html" class="sf-with-ul">Product</a>

                                    <div class="megamenu megamenu-sm">
                                        <div class="row no-gutters">
                                            <div class="col-md-6">
                                                <div class="menu-col">
                                                    <div class="menu-title">Product Details</div><!-- End .menu-title -->
                                                    <ul>
                                                        <li><a href="product.html">Default</a></li>
                                                        <li><a href="product-centered.html">Centered</a></li>
                                                        <li><a href="product-extended.html"><span>Extended Info<span class="tip tip-new">New</span></span></a></li>
                                                        <li><a href="product-gallery.html">Gallery</a></li>
                                                        <li><a href="product-sticky.html">Sticky Info</a></li>
                                                        <li><a href="product-sidebar.html">Boxed With Sidebar</a></li>
                                                        <li><a href="product-fullwidth.html">Full Width</a></li>
                                                        <li><a href="product-masonry.html">Masonry Sticky Info</a></li>
                                                    </ul>
                                                </div><!-- End .menu-col -->
                                            </div><!-- End .col-md-6 -->

                                            <div class="col-md-6">
                                                <div class="banner banner-overlay">
                                                    <a href="category.html">
                                                        <img src="../assets/images/menu/banner-2.jpg" alt="Banner">

                                                        <div class="banner-content banner-content-bottom">
                                                            <div class="banner-title text-white">New Trends<br><span><strong>spring 2019</strong></span></div><!-- End .banner-title -->
                                                        </div><!-- End .banner-content -->
                                                    </a>
                                                </div><!-- End .banner -->
                                            </div><!-- End .col-md-6 -->
                                        </div><!-- End .row -->
                                    </div><!-- End .megamenu megamenu-sm -->
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">Pages</a>

                                    <ul>
                                        <li>
                                            <a href="../about.html" class="sf-with-ul">About</a>

                                            <ul>
                                                <li><a href="../about.html">About 01</a></li>
                                                <li><a href="../about-2.html">About 02</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="contact.html" class="sf-with-ul">Contact</a>

                                            <ul>
                                                <li><a href="contact.html">Contact 01</a></li>
                                                <li><a href="contact-2.html">Contact 02</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="faq.html">FAQs</a></li>
                                        <li><a href="404.html">Error 404</a></li>
                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="blog.html" class="sf-with-ul">Blog</a>

                                    <ul>
                                        <li><a href="blog.html">Classic</a></li>
                                        <li><a href="blog-listing.html">Listing</a></li>
                                        <li>
                                            <a href="#">Grid</a>
                                            <ul>
                                                <li><a href="blog-grid-2cols.html">Grid 2 columns</a></li>
                                                <li><a href="blog-grid-3cols.html">Grid 3 columns</a></li>
                                                <li><a href="blog-grid-4cols.html">Grid 4 columns</a></li>
                                                <li><a href="blog-grid-sidebar.html">Grid sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Masonry</a>
                                            <ul>
                                                <li><a href="blog-masonry-2cols.html">Masonry 2 columns</a></li>
                                                <li><a href="blog-masonry-3cols.html">Masonry 3 columns</a></li>
                                                <li><a href="blog-masonry-4cols.html">Masonry 4 columns</a></li>
                                                <li><a href="blog-masonry-sidebar.html">Masonry sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Mask</a>
                                            <ul>
                                                <li><a href="blog-mask-grid.html">Blog mask grid</a></li>
                                                <li><a href="blog-mask-masonry.html">Blog mask masonry</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Single Post</a>
                                            <ul>
                                                <li><a href="single.html">Default with sidebar</a></li>
                                                <li><a href="single-fullwidth.html">Fullwidth no sidebar</a></li>
                                                <li><a href="single-fullwidth-sidebar.html">Fullwidth with sidebar</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="elements-list.html" class="sf-with-ul">Elements</a>

                                    <ul>
                                        <li><a href="elements-products.html">Products</a></li>
                                        <li><a href="elements-typography.html">Typography</a></li>
                                        <li><a href="elements-titles.html">Titles</a></li>
                                        <li><a href="elements-banners.html">Banners</a></li>
                                        <li><a href="elements-product-category.html">Product Category</a></li>
                                        <li><a href="elements-video-banners.html">Video Banners</a></li>
                                        <li><a href="elements-buttons.html">Buttons</a></li>
                                        <li><a href="elements-accordions.html">Accordions</a></li>
                                        <li><a href="elements-tabs.html">Tabs</a></li>
                                        <li><a href="elements-testimonials.html">Testimonials</a></li>
                                        <li><a href="elements-blog-posts.html">Blog Posts</a></li>
                                        <li><a href="elements-portfolio.html">Portfolio</a></li>
                                        <li><a href="elements-cta.html">Call to Action</a></li>
                                        <li><a href="elements-icon-boxes.html">Icon Boxes</a></li>
                                    </ul>
                                </li>
                            </ul><!-- End .menu -->
                        </nav><!-- End .main-nav -->
                    </div><!-- End .header-left -->

                    <div class="header-right">
                        <div class="header-search">
                            <a href="#" class="search-toggle" role="button" title="Search"><i class="icon-search"></i></a>
                            <form action="#" method="get">
                                <div class="header-search-wrapper">
                                    <label for="q" class="sr-only">Search</label>
                                    <input type="search" class="form-control" name="q" id="q" placeholder="Search in..." required>
                                </div><!-- End .header-search-wrapper -->
                            </form>
                        </div><!-- End .header-search -->

                        <div class="dropdown cart-dropdown">
                            <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                                <i class="icon-shopping-cart"></i>
                                <span class="cart-count">2</span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right">
                                <div class="dropdown-cart-products">
                                    <div class="product">
                                        <div class="product-cart-details">
                                            <h4 class="product-title">
                                                <a href="product.html">Beige knitted elastic runner shoes</a>
                                            </h4>

                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span>
                                                x $84.00
                                            </span>
                                        </div><!-- End .product-cart-details -->

                                        <figure class="product-image-container">
                                            <a href="product.html" class="product-image">
                                                <img src="../assets/images/products/cart/product-1.jpg" alt="product">
                                            </a>
                                        </figure>
                                        <a href="#" class="btn-remove" title="Remove Product"><i class="icon-close"></i></a>
                                    </div><!-- End .product -->

                                    <div class="product">
                                        <div class="product-cart-details">
                                            <h4 class="product-title">
                                                <a href="product.html">Blue utility pinafore denim dress</a>
                                            </h4>

                                            <span class="cart-product-info">
                                                <span class="cart-product-qty">1</span>
                                                x $76.00
                                            </span>
                                        </div><!-- End .product-cart-details -->

                                        <figure class="product-image-container">
                                            <a href="product.html" class="product-image">
                                                <img src="../assets/images/products/cart/product-2.jpg" alt="product">
                                            </a>
                                        </figure>
                                        <a href="#" class="btn-remove" title="Remove Product"><i class="icon-close"></i></a>
                                    </div><!-- End .product -->
                                </div><!-- End .cart-product -->

                                <div class="dropdown-cart-total">
                                    <span>Total</span>

                                    <span class="cart-total-price">$160.00</span>
                                </div><!-- End .dropdown-cart-total -->

                                <div class="dropdown-cart-action">
                                    <a href="cart.html" class="btn btn-primary">View Cart</a>
                                    <a href="checkout.html" class="btn btn-outline-primary-2"><span>Checkout</span><i class="icon-long-arrow-right"></i></a>
                                </div><!-- End .dropdown-cart-total -->
                            </div><!-- End .dropdown-menu -->
                        </div><!-- End .cart-dropdown -->
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-middle -->
        </header><!-- End .header -->

        <main class="main">
            <div class="intro-section bg-lighter pt-5 pb-16">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8">
                            <div class="intro-slider-container slider-container-ratio slider-container-1 mb-2 mb-lg-0">
                                <div class="intro-slider intro-slider-1 owl-carousel owl-simple owl-light owl-nav-inside" data-toggle="owl" data-owl-options='{
                                        "nav": false, 
                                        "responsive": {
                                            "768": {
                                                "nav": true
                                            }
                                        }
                                    }'>
                                    <div class="intro-slide">
                                        <figure class="slide-image">
                                            <picture>
                                                <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-1-480w.jpg">
                                                <img src="../assets/images/slider/slide-1.jpg" alt="Image Desc">
                                            </picture>
                                        </figure><!-- End .slide-image -->

                                        <div class="intro-content">
                                            <h3 class="intro-subtitle">메인광고배너</h3><!-- End .h3 intro-subtitle -->
                                            <h1 class="intro-title">Living Room<br>Furniture</h1><!-- End .intro-title -->

                                            <a href="category.html" class="btn btn-outline-white">
                                                <span>SHOP NOW</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </a>
                                        </div><!-- End .intro-content -->
                                    </div><!-- End .intro-slide -->

                                    <div class="intro-slide">
                                        <figure class="slide-image">
                                            <picture>
                                                <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-2-480w.jpg">
                                                <img src="../assets/images/slider/slide-2.jpg" alt="Image Desc">
                                            </picture>
                                        </figure><!-- End .slide-image -->

                                        <div class="intro-content">
                                            <h3 class="intro-subtitle">News and Inspiration</h3><!-- End .h3 intro-subtitle -->
                                            <h1 class="intro-title">New Arrivals</h1><!-- End .intro-title -->

                                            <a href="category.html" class="btn btn-outline-white">
                                                <span>SHOP NOW</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </a>
                                        </div><!-- End .intro-content -->
                                    </div><!-- End .intro-slide -->

                                    <div class="intro-slide">
                                        <figure class="slide-image">
                                            <picture>
                                                <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-3-480w.jpg">
                                                <img src="../assets/images/slider/slide-3.jpg" alt="Image Desc">
                                            </picture>
                                        </figure><!-- End .slide-image -->

                                        <div class="intro-content">
                                            <h3 class="intro-subtitle">Outdoor Furniture</h3><!-- End .h3 intro-subtitle -->
                                            <h1 class="intro-title">Outdoor Dining <br>Furniture</h1><!-- End .intro-title -->

                                            <a href="category.html" class="btn btn-outline-white">
                                                <span>SHOP NOW</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </a>
                                        </div><!-- End .intro-content -->
                                    </div><!-- End .intro-slide -->
                                </div><!-- End .intro-slider owl-carousel owl-simple -->
                                
                                <span class="slider-loader"></span><!-- End .slider-loader -->
                            </div><!-- End .intro-slider-container -->
                        </div><!-- End .col-lg-8 -->


                        <div class="col-lg-4">
                            <div class="intro-banners">
                                <div class="row row-sm">
                                    <!--메인 우측 상단-->
                                    <div class="col-md-6 col-lg-12">
                                        <div class="intro-slider-container slider-container-ratio slider-container-1 mb-2 mb-lg-0">
                                            <div class="intro-slider intro-slider-1 owl-carousel owl-simple owl-light owl-nav-inside" data-toggle="owl" data-owl-options='{
                                                    "nav": false, 
                                                    "responsive": {
                                                        "768": {
                                                            "nav": true
                                                        }
                                                    }
                                                }'>
                                                <div class="intro-slide">
                                                    <figure class="slide-image">
                                                        <picture>
                                                            <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-1-480w.jpg">
                                                            <img src="../assets/images/slider/slide-1.jpg" alt="Image Desc">
                                                        </picture>
                                                    </figure><!-- End .slide-image -->
            
                                                    <div class="intro-content">
                                                        <h3 class="intro-subtitle">메인광고배너</h3><!-- End .h3 intro-subtitle -->
                                                        <h1 class="intro-title">1인가구<br>국가사업홍보</h1><!-- End .intro-title -->
            
                                                        <a href="category.html" class="btn btn-outline-white">
                                                            <span>SHOP NOW</span>
                                                            <i class="icon-long-arrow-right"></i>
                                                        </a>
                                                    </div><!-- End .intro-content -->
                                                </div><!-- End .intro-slide -->
            
                                                <div class="intro-slide">
                                                    <figure class="slide-image">
                                                        <picture>
                                                            <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-2-480w.jpg">
                                                            <img src="../assets/images/slider/slide-2.jpg" alt="Image Desc">
                                                        </picture>
                                                    </figure><!-- End .slide-image -->
            
                                                    <div class="intro-content">
                                                        <h3 class="intro-subtitle">News and Inspiration</h3><!-- End .h3 intro-subtitle -->
                                                        <h1 class="intro-title">New Arrivals</h1><!-- End .intro-title -->
            
                                                        <a href="category.html" class="btn btn-outline-white">
                                                            <span>SHOP NOW</span>
                                                            <i class="icon-long-arrow-right"></i>
                                                        </a>
                                                    </div><!-- End .intro-content -->
                                                </div><!-- End .intro-slide -->
            
                                                <div class="intro-slide">
                                                    <figure class="slide-image">
                                                        <picture>
                                                            <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-3-480w.jpg">
                                                            <img src="../assets/images/slider/slide-3.jpg" alt="Image Desc">
                                                        </picture>
                                                    </figure><!-- End .slide-image -->
            
                                                    <div class="intro-content">
                                                        <h3 class="intro-subtitle">Outdoor Furniture</h3><!-- End .h3 intro-subtitle -->
                                                        <h1 class="intro-title">Outdoor Dining <br>Furniture</h1><!-- End .intro-title -->
            
                                                        <a href="category.html" class="btn btn-outline-white">
                                                            <span>SHOP NOW</span>
                                                            <i class="icon-long-arrow-right"></i>
                                                        </a>
                                                    </div><!-- End .intro-content -->
                                                </div><!-- End .intro-slide -->
                                            </div><!-- End .intro-slider owl-carousel owl-simple -->
                                            
                                            <span class="slider-loader"></span><!-- End .slider-loader -->
                                        </div><!-- End .intro-slider-container -->
                                        
                                    </div><!-- End .col-md-6 col-lg-12 -->

                                    <!--메인 우측 하단-->
                                    <div class="col-md-6 col-lg-12" style="margin-top: 10px;">
                                        <div class="intro-slider-container slider-container-ratio slider-container-1 mb-2 mb-lg-0">
                                            <div class="intro-slider intro-slider-1 owl-carousel owl-simple owl-light owl-nav-inside" data-toggle="owl" data-owl-options='{
                                                    "nav": false, 
                                                    "responsive": {
                                                        "768": {
                                                            "nav": true
                                                        }
                                                    }
                                                }'>
                                                <div class="intro-slide">
                                                    <figure class="slide-image">
                                                        <picture>
                                                            <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-1-480w.jpg">
                                                            <img src="../assets/images/slider/slide-1.jpg" alt="Image Desc">
                                                        </picture>
                                                    </figure><!-- End .slide-image -->
            
                                                    <div class="intro-content">
                                                        <h3 class="intro-subtitle">메인광고배너</h3><!-- End .h3 intro-subtitle -->
                                                        <h1 class="intro-title">1인가구<br>국가사업홍보</h1><!-- End .intro-title -->
            
                                                        <a href="category.html" class="btn btn-outline-white">
                                                            <span>SHOP NOW</span>
                                                            <i class="icon-long-arrow-right"></i>
                                                        </a>
                                                    </div><!-- End .intro-content -->
                                                </div><!-- End .intro-slide -->
            
                                                <div class="intro-slide">
                                                    <figure class="slide-image">
                                                        <picture>
                                                            <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-2-480w.jpg">
                                                            <img src="../assets/images/slider/slide-2.jpg" alt="Image Desc">
                                                        </picture>
                                                    </figure><!-- End .slide-image -->
            
                                                    <div class="intro-content">
                                                        <h3 class="intro-subtitle">News and Inspiration</h3><!-- End .h3 intro-subtitle -->
                                                        <h1 class="intro-title">New Arrivals</h1><!-- End .intro-title -->
            
                                                        <a href="category.html" class="btn btn-outline-white">
                                                            <span>SHOP NOW</span>
                                                            <i class="icon-long-arrow-right"></i>
                                                        </a>
                                                    </div><!-- End .intro-content -->
                                                </div><!-- End .intro-slide -->
            
                                                <div class="intro-slide">
                                                    <figure class="slide-image">
                                                        <picture>
                                                            <source media="(max-width: 480px)" srcset="../assets/images/slider/slide-3-480w.jpg">
                                                            <img src="../assets/images/slider/slide-3.jpg" alt="Image Desc">
                                                        </picture>
                                                    </figure><!-- End .slide-image -->
            
                                                    <div class="intro-content">
                                                        <h3 class="intro-subtitle">Outdoor Furniture</h3><!-- End .h3 intro-subtitle -->
                                                        <h1 class="intro-title">Outdoor Dining <br>Furniture</h1><!-- End .intro-title -->
            
                                                        <a href="category.html" class="btn btn-outline-white">
                                                            <span>SHOP NOW</span>
                                                            <i class="icon-long-arrow-right"></i>
                                                        </a>
                                                    </div><!-- End .intro-content -->
                                                </div><!-- End .intro-slide -->
                                            </div><!-- End .intro-slider owl-carousel owl-simple -->
                                            
                                            <span class="slider-loader"></span><!-- End .slider-loader -->
                                        </div><!-- End .intro-slider-container -->


                                    </div><!-- End .col-md-6 col-lg-12 -->
                                </div><!-- End .row row-sm -->
                            </div><!-- End .intro-banners -->
                        </div><!-- End .col-lg-4 -->
                    </div><!-- End .row -->

                    <div class="mb-6"></div><!-- End .mb-6 -->


                </div><!-- End .container -->
            </div><!-- End .bg-lighter -->

            <div class="mb-6"></div><!-- End .mb-6 -->

            <!--금주의 인기상품 시작-->

            <div class="bg-white pt-3 pb-5">
                <div class="container">
                    <div class="heading heading-flex heading-border mb-3">
                        <div class="heading-left">
                            <h2 class="title">인기상품💎</h2><!-- End .title -->
                        </div><!-- End .heading-left -->

                       <div class="heading-right">
                            <ul class="nav nav-pills nav-border-anim justify-content-center" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="hot-all-link" data-toggle="tab" href="#hot-all-tab" role="tab" aria-controls="hot-all-tab" aria-selected="true">전체</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="hot-elec-link" data-toggle="tab" href="#hot-elec-tab" role="tab" aria-controls="hot-elec-tab" aria-selected="false">카테고리1</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="hot-furn-link" data-toggle="tab" href="#hot-furn-tab" role="tab" aria-controls="hot-furn-tab" aria-selected="false">카테고리2</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="hot-clot-link" data-toggle="tab" href="#hot-clot-tab" role="tab" aria-controls="hot-clot-tab" aria-selected="false">카테고리3</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="hot-acc-link" data-toggle="tab" href="#hot-acc-tab" role="tab" aria-controls="hot-acc-tab" aria-selected="false">카테고리3</a>
                                </li>
                            </ul>
                       </div><!-- End .heading-right -->
                    </div><!-- End .heading -->

                    <div class="tab-content tab-content-carousel">
                        <div class="tab-pane p-0 fade show active" id="hot-all-tab" role="tabpanel" aria-labelledby="hot-all-link">
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1280": {
                                            "items":5,
                                            "nav": true
                                        }
                                    }
                                }'>
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Bose - SoundSport  wireless headphones</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$179.99</span>
                                            <span class="old-price">Was $199.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #ff887f;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Can 2-Seater Sofa <br>frame charcoal</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$3.050.00</span>
                                            <span class="old-price">Was $3.200.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 6 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Clothes</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Tan suede biker jacket</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$240.00</span>
                                            <span class="old-price">Was $310.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Sony - Class LED 2160p Smart 4K Ultra HD</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$1699.99</span>
                                            <span class="old-price">Was $1999.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 10 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Appliances</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Neato Robotics</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $399.00
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 12 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane p-0 fade" id="hot-elec-tab" role="tabpanel" aria-labelledby="hot-elec-link">
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1280": {
                                            "items":5,
                                            "nav": true
                                        }
                                    }
                                }'>
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Clothes</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Tan suede biker jacket</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$240.00</span>
                                            <span class="old-price">Was $310.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+9h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Bose - SoundSport  wireless headphones</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$179.99</span>
                                            <span class="old-price">Was $199.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #ff887f;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Can 2-Seater Sofa <br>frame charcoal</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$3.050.00</span>
                                            <span class="old-price">Was $3.200.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 6 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Sony - Class LED 2160p Smart 4K Ultra HD</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$1699.99</span>
                                            <span class="old-price">Was $1999.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 10 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane p-0 fade" id="hot-furn-tab" role="tabpanel" aria-labelledby="hot-furn-link">
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1280": {
                                            "items":5,
                                            "nav": true
                                        }
                                    }
                                }'>
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Can 2-Seater Sofa <br>frame charcoal</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$3.050.00</span>
                                            <span class="old-price">Was $3.200.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 6 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Sony - Class LED 2160p Smart 4K Ultra HD</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$1699.99</span>
                                            <span class="old-price">Was $1999.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 10 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Appliances</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Neato Robotics</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $399.00
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 12 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Clothes</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Tan suede biker jacket</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$240.00</span>
                                            <span class="old-price">Was $310.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+9h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Bose - SoundSport  wireless headphones</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$179.99</span>
                                            <span class="old-price">Was $199.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #ff887f;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane p-0 fade" id="hot-clot-tab" role="tabpanel" aria-labelledby="hot-clot-link">
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1280": {
                                            "items":5,
                                            "nav": true
                                        }
                                    }
                                }'>
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Can 2-Seater Sofa <br>frame charcoal</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$3.050.00</span>
                                            <span class="old-price">Was $3.200.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 6 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Clothes</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Tan suede biker jacket</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$240.00</span>
                                            <span class="old-price">Was $310.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+9h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Bose - SoundSport  wireless headphones</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$179.99</span>
                                            <span class="old-price">Was $199.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #ff887f;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane p-0 fade" id="hot-acc-tab" role="tabpanel" aria-labelledby="hot-acc-link">
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1280": {
                                            "items":5,
                                            "nav": true
                                        }
                                    }
                                }'>
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Appliances</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Neato Robotics</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $399.00
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 12 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Sony - Class LED 2160p Smart 4K Ultra HD</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$1699.99</span>
                                            <span class="old-price">Was $1999.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 10 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Can 2-Seater Sofa <br>frame charcoal</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$3.050.00</span>
                                            <span class="old-price">Was $3.200.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 6 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Clothes</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Tan suede biker jacket</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$240.00</span>
                                            <span class="old-price">Was $310.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .container -->
            </div><!-- End .bg-light pt-5 pb-5 -->

            <!--금주의 인기상품 종료-->


            <!--타임 핫딜 시작-->

            <div class="bg-light pt-3 pb-5">
                <div class="container">
                    <div class="heading heading-flex heading-border mb-3">
                        <div class="heading-left">
                            <h2 class="title">타임 핫딜 상품</h2><!-- End .title -->
                        </div><!-- End .heading-left -->
                    </div><!-- End .heading -->

                    <div class="tab-content tab-content-carousel">
                        <div class="tab-pane p-0 fade show active" id="hot-all-tab" role="tabpanel" aria-labelledby="hot-all-link">
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1280": {
                                            "items":5,
                                            "nav": true
                                        }
                                    }
                                }'>
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>
                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Bose - SoundSport  wireless headphones</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$179.99</span>
                                            <span class="old-price">Was $199.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #ff887f;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Can 2-Seater Sofa <br>frame charcoal</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$3.050.00</span>
                                            <span class="old-price">Was $3.200.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 6 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Clothes</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Tan suede biker jacket</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$240.00</span>
                                            <span class="old-price">Was $310.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-nav product-nav-dots">
                                            <a href="#" class="../active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Sony - Class LED 2160p Smart 4K Ultra HD</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$1699.99</span>
                                            <span class="old-price">Was $1999.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 10 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Appliances</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Neato Robotics</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $399.00
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 12 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .container -->
            </div><!-- End .bg-light pt-5 pb-5 -->

            <!--타임 핫딜 종료-->

            <!--타임 핫딜 예정 시작-->
            <div class="bg-light pt-3 pb-5">
                <div class="container">
                    <div class="heading heading-flex heading-border mb-3">
                        <div class="heading-left">
                            <h2 class="title">타임 핫딜 예정</h2><!-- End .title -->
                        </div><!-- End .heading-left -->
                    </div><!-- End .heading -->

                    <div class="tab-content tab-content-carousel">
                        <div class="tab-pane p-0 fade show active" id="hot-all-tab" role="tabpanel" aria-labelledby="hot-all-link">
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1280": {
                                            "items":5,
                                            "nav": true
                                        }
                                    }
                                }'>
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>
                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-action pt-lg-15">
                                            <a href="#" class="btn-product btn-cart pt-lg-15" title="../add to cart" style="margin-bottom: 170px;"><span>Comming-Soon</span></a>
                                        </div><!-- End .product-action -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>
                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-action pt-lg-15">
                                            <a href="#" class="btn-product btn-cart pt-lg-15" title="../add to cart" style="margin-bottom: 170px;"><span>Comming-Soon</span></a>
                                        </div><!-- End .product-action -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .container -->
            </div><!-- End .bg-light pt-5 pb-5 -->


            <!--타임 핫딜 예정 종료-->

            <!-- 공동 구매 시작-->

            <div class="bg-white pt-3 pb-5">
                <div class="container">
                    <div class="heading heading-flex heading-border mb-3">
                        <div class="heading-left">
                            <h2 class="title">공동구매 상품</h2><!-- End .title -->
                        </div><!-- End .heading-left -->
                    </div><!-- End .heading -->

                    <div class="tab-content tab-content-carousel">
                        <div class="tab-pane p-0 fade show active" id="hot-all-tab" role="tabpanel" aria-labelledby="hot-all-link">
                            <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                                data-owl-options='{
                                    "nav": false, 
                                    "dots": true,
                                    "margin": 20,
                                    "loop": false,
                                    "responsive": {
                                        "0": {
                                            "items":2
                                        },
                                        "480": {
                                            "items":2
                                        },
                                        "768": {
                                            "items":3
                                        },
                                        "992": {
                                            "items":4
                                        },
                                        "1280": {
                                            "items":5,
                                            "nav": true
                                        }
                                    }
                                }'>
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Butler Stool Ladder</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$251.99</span>
                                            <span class="old-price">Was $290.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 2 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                        <div class="product-action">
                                            <a href="#" class="btn-product"><span>10명단위 구매</span></a>
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Bose - SoundSport  wireless headphones</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$179.99</span>
                                            <span class="old-price">Was $199.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                        <div class="product-action">
                                            <a href="#" class="btn-product"><span>10명단위 구매</span></a>
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Furniture</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Can 2-Seater Sofa <br>frame charcoal</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$3.050.00</span>
                                            <span class="old-price">Was $3.200.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 6 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product"><span>10명단위 구매</span></a>
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>


                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Clothes</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Tan suede biker jacket</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$240.00</span>
                                            <span class="old-price">Was $310.00</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 4 Reviews )</span>
                                        </div><!-- End .rating-container -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product"><span>10명단위 구매</span></a>
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Electronics</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Sony - Class LED 2160p Smart 4K Ultra HD</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">$1699.99</span>
                                            <span class="old-price">Was $1999.99</span>
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 10 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="../assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="../add to cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Appliances</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">Neato Robotics</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $399.00
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( 12 Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .container -->
            </div><!-- End .bg-light pt-5 pb-5 -->

            <!-- 공동 구매 종료-->


            <!-- 인기게시글 시작 -->

            <div class="blog-posts pt-1 pb-3" style="background-color: #fafafa;">
                <div class="container">
                    <div class="image-with-text">
                        <img src="https://static.teamblind.com/img/web/ico-best.png" alt="Image Description">
                        <h3 style="margin-bottom: 0px;"><strong>솔로몬 인기글</strong></h3>
                    </div>
                    <span style="float: right; margin-top:-25px ;"><a href="#" style="color: gray; margin-right: 10px;">더보기 ></a></span>
                      
                    <hr style="margin-top: 0px; margin-bottom: 10px;">
                    <table border="0" align="center">
                        <tr>
                            <td width="950">
                                <strong class="board_strong">외로움</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">외로움을 많이 타는 저 비정상인가요?</a>
                            </td>
                            <td width="70">👍 55</td>
                            <td width="70">💭 36</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">플스5</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">와이프 몰래산 최고가 물건 무엇인가요?</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">플스5</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">독신 친구에게 배송 보냈어요</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">플스5</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">와이프 몰래산 최저가 물건 무엇인가요?</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">플스5</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">와이프 몰래산 물건 걸리면 어떻게 하나요?</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">플스5</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">박스만 뜻은거 구매하실분 있으신가요?</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">소노</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">남편이 아내 몰래 산 물건 1탄</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">중노</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">남편이 아내 몰래 산 물건 2탄</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">대노</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">남편이 아내 몰래 산 물건 3탄</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                        <tr>
                            <td width="950">
                                <strong class="board_strong">극대노</strong><a href="#" class="board_span" style="color: rgb(121, 121, 121);">남편이 아내 몰래 산 물건 4탄</a>
                            </td>
                            <td width="70">👍 30</td>
                            <td width="70">💭 9</td>
                        </tr>
                    </table>
                </div>
            </div>

            <!-- 인기게시글 종료 -->
 
            <div class="blog-posts pt-7 pb-7" style="background-color: white;">
                <div class="container">
                   <h2 class="title-lg text-left mb-3 mb-md-4">솔로몬중고👑</h2><!-- End .title-lg text-center -->

                    <div class="owl-carousel owl-simple carousel-with-shadow" data-toggle="owl" 
                        data-owl-options='{
                            "nav": false, 
                            "dots": true,
                            "items": 3,
                            "margin": 20,
                            "loop": false,
                            "responsive": {
                                "0": {
                                    "items":1
                                },
                                "600": {
                                    "items":2
                                },
                                "992": {
                                    "items":3
                                }
                            }
                        }'>
                        <article class="entry entry-display">
                            <figure class="entry-media">
                                <a href="single.html">
                                    <img src="../assets/images/blog/home/post-1.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body pb-4 text-center">
                                <div class="entry-meta">
                                    <a href="#">Nov 22, 2018</a>, 0 Comments
                                </div><!-- End .entry-meta -->

                                <h3 class="entry-title">
                                    <a href="single.html">Sed adipiscing ornare.</a>
                                </h3><!-- End .entry-title -->

                                <div class="entry-content">
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit.<br>Pelletesque aliquet nibh necurna. </p>
                                    <a href="single.html" class="read-more">Read More</a>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                        

                        <article class="entry entry-display">
                            <figure class="entry-media">
                                <a href="single.html">
                                    <img src="../assets/images/blog/home/post-2.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body pb-4 text-center">
                                <div class="entry-meta">
                                    <a href="#">Dec 12, 2018</a>, 0 Comments
                                </div><!-- End .entry-meta -->

                                <h3 class="entry-title">
                                    <a href="single.html">Fusce lacinia arcuet nulla.</a>
                                </h3><!-- End .entry-title -->

                                <div class="entry-content">
                                    <p>Sed pretium, ligula sollicitudin laoreet<br>viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis justo. </p>
                                    <a href="single.html" class="read-more">Read More</a>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->

                        <article class="entry entry-display">
                            <figure class="entry-media">
                                <a href="single.html">
                                    <img src="../assets/images/blog/home/post-3.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body pb-4 text-center">
                                <div class="entry-meta">
                                    <a href="#">Dec 19, 2018</a>, 2 Comments
                                </div><!-- End .entry-meta -->

                                <h3 class="entry-title">
                                    <a href="single.html">Quisque volutpat mattis eros.</a>
                                </h3><!-- End .entry-title -->

                                <div class="entry-content">
                                    <p>Suspendisse potenti. Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. </p>
                                    <a href="single.html" class="read-more">Read More</a>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .owl-carousel -->
                </div><!-- container -->

                <div class="more-container text-center mb-0 mt-3">
                    <a href="blog.html" class="btn btn-outline-darker btn-more"><span>View more articles</span><i class="icon-long-arrow-right"></i></a>
                </div><!-- End .more-container -->
            </div>


<!--중고거래 시작-->



<!--중고거래 종료-->


            <div class="cta cta-display bg-image pt-4 pb-4" style="background-image: url(assets/images/backgrounds/cta/bg-6.jpg);">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-10 col-lg-9 col-xl-8">
                            <div class="row no-gutters flex-column flex-sm-row align-items-sm-center">
                                <div class="col">
                                    <h3 class="cta-title text-white">Sign Up & Get 10% Off</h3><!-- End .cta-title -->
                                    <p class="cta-desc text-white">Molla presents the best in interior design</p><!-- End .cta-desc -->
                                </div><!-- End .col -->

                                <div class="col-auto">
                                    <a href="login.html" class="btn btn-outline-white"><span>SIGN UP</span><i class="icon-long-arrow-right"></i></a>
                                </div><!-- End .col-auto -->
                            </div><!-- End .row no-gutters -->
                        </div><!-- End .col-md-10 col-lg-9 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .cta -->
        </main><!-- End .main -->

        <footer class="footer">
        	<div class="footer-middle">
	            <div class="container">
	            	<div class="row">
	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget widget-about">
	            				<img src="So1omon(bgX).png" class="footer-logo" alt="Footer Logo" width="250" height="25">
	            				<p>Best Price Chois</p>
	            				<p>Best Product</p>
	            				<p>Best Happnies</p>

	            				<div class="social-icons">
	            					<a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
	            					<a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
	            					<a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
	            					<a href="#" class="social-icon" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
	            					<a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
	            				</div><!-- End .soial-icons -->
	            			</div><!-- End .widget about-widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">Useful Links</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="../about.html">About Molla</a></li>
	            					<li><a href="#">How to shop on Molla</a></li>
	            					<li><a href="#">FAQ</a></li>
	            					<li><a href="contact.html">Contact us</a></li>
	            					<li><a href="#signin-modal" data-toggle="modal">Login</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">Customer Service</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="#">Payment Methods</a></li>
	            					<li><a href="#">Money-back guarantee!</a></li>
	            					<li><a href="#">Returns</a></li>
	            					<li><a href="#">Shipping</a></li>
	            					<li><a href="#">Terms and conditions</a></li>
	            					<li><a href="#">Privacy Policy</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">My Account</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="#">Sign In</a></li>
	            					<li><a href="cart.html">View Cart</a></li>
	            					<li><a href="#">My Wishlist</a></li>
	            					<li><a href="#">Track My Order</a></li>
	            					<li><a href="#">Help</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->
	            	</div><!-- End .row -->
	            </div><!-- End .container -->
	        </div><!-- End .footer-middle -->

	        <div class="footer-bottom">
	        	<div class="container">
	        		<p class="footer-copyright">Copyright © 2023-2024 So1omon. All Rights Reserved.</p><!-- End .footer-copyright -->
	        		<figure class="footer-payments">
	        			<img src="../assets/images/payments.png" alt="Payment methods" width="272" height="20">
	        		</figure><!-- End .footer-payments -->
	        	</div><!-- End .container -->
	        </div><!-- End .footer-bottom -->
        </footer><!-- End .footer -->
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

    <!-- Sign in / Register Modal -->
    <!-- 로그인 모달자리 -->
    <div class="modal fade" id="signin-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="icon-close"></i></span>
                    </button>

            		<div class="form-box">
            			<div class="form-tab">
	            			<ul class="nav nav-pills nav-fill" role="tablist">
							    <li class="nav-item">
							        <a class="nav-link" id="signin-tab-2" data-toggle="tab" href="#signin-2" role="tab" aria-controls="signin-2" aria-selected="false">Sign In</a>
							    </li>
							</ul>
							    <div class="tab-pane fade show active" id="register-2" role="tabpanel" aria-labelledby="register-tab-2">
							    	<form action="#">
							    		<div class="form-group">
							    			<label for="singin-email-2">아이디 *</label>
							    			<input type="text" class="form-control" id="singin-email-2" name="singin-email" required>
							    		</div><!-- End .form-group -->

							    		<div class="form-group">
							    			<label for="singin-password-2">비밀번호 *</label>
							    			<input type="password" class="form-control" id="singin-password-2" name="singin-password" required>
							    		</div><!-- End .form-group -->

							    		<div class="form-footer">
							    			<button type="submit" class="btn btn-outline-primary-2">
			                					<span>LOG IN</span>
			            						<i class="icon-long-arrow-right"></i>
			                				</button>

			                				<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="signin-remember-2">
												<label class="custom-control-label" for="signin-remember-2">정보저장</label>
											</div><!-- End .custom-checkbox -->
                                            <a href="#" class="forgot-link">아이디찾기</a>
											<a href="#" class="forgot-link">비밀번호찾기</a>
							    		</div><!-- End .form-footer -->
							    	</form>
							    	<div class="form-choice">
								    	<p class="text-center">or sign in with</p>
								    	<div class="row">
								    		<div class="col-sm-6">
								    			<a href="#" class="btn btn-login btn-g">
								    				<i class="icon-google"></i>
								    				Login With Google
								    			</a>
								    		</div><!-- End .col-6 -->
								    		<div class="col-sm-6">
								    			<a href="#" class="btn btn-login  btn-f">
								    				<i class="icon-facebook-f"></i>
								    				Login With Kakao
								    			</a>
								    		</div><!-- End .col-6 -->
								    	</div><!-- End .row -->
                                        <p class="text-center" style="margin-top: 27px;"><a href="#" class="forgot-link">회원가입</a></p>
							    	</div><!-- End .form-choice -->
							    </div><!-- .End .tab-pane -->
							</div><!-- End .tab-content -->
						</div><!-- End .form-tab -->
            		</div><!-- End .form-box -->
                </div><!-- End .modal-body -->
            </div><!-- End .modal-content -->
        </div><!-- End .modal-dialog -->
    </div><!-- End .modal -->


    <!-- Plugins JS File -->
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/jquery.hoverIntent.min.js"></script>
    <script src="../assets/js/jquery.waypoints.min.js"></script>
    <script src="../assets/js/superfish.min.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>
    <script src="../assets/js/jquery.magnific-popup.min.js"></script>
    <script src="../assets/js/jquery.plugin.min.js"></script>
    <script src="../assets/js/jquery.countdown.min.js"></script>

    <!-- Main JS File -->
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/demos/demo-2.js"></script>
</body>


<!-- molla/index-2.html  22 Nov 2019 09:55:42 GMT -->
</html>