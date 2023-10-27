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
    <title>So1omon</title>
    <meta name="keywords" content="HTML5 Template">
    <meta name="description" content="Molla - Bootstrap eCommerce Template">
    <meta name="author" content="p-themes">
    
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
        
		<jsp:include page="header.jsp"/>
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
                                                <source media="(max-width: 480px)" srcset="assets/images/slider/slide-1-480w.jpg">
                                                <img src="assets/images/slider/slide-1.jpg" alt="Image Desc">
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
                                                <source media="(max-width: 480px)" srcset="assets/images/slider/slide-2-480w.jpg">
                                                <img src="assets/images/slider/slide-2.jpg" alt="Image Desc">
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
                                                <source media="(max-width: 480px)" srcset="assets/images/slider/slide-3-480w.jpg">
                                                <img src="assets/images/slider/slide-3.jpg" alt="Image Desc">
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
                                                            <source media="(max-width: 480px)" srcset="assets/images/slider/slide-1-480w.jpg">
                                                            <img src="assets/images/slider/slide-1.jpg" alt="Image Desc">
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
                                                            <source media="(max-width: 480px)" srcset="assets/images/slider/slide-2-480w.jpg">
                                                            <img src="assets/images/slider/slide-2.jpg" alt="Image Desc">
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
                                                            <source media="(max-width: 480px)" srcset="assets/images/slider/slide-3-480w.jpg">
                                                            <img src="assets/images/slider/slide-3.jpg" alt="Image Desc">
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
                                                            <source media="(max-width: 480px)" srcset="assets/images/slider/slide-1-480w.jpg">
                                                            <img src="assets/images/slider/slide-1.jpg" alt="Image Desc">
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
                                                            <source media="(max-width: 480px)" srcset="assets/images/slider/slide-2-480w.jpg">
                                                            <img src="assets/images/slider/slide-2.jpg" alt="Image Desc">
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
                                                            <source media="(max-width: 480px)" srcset="assets/images/slider/slide-3-480w.jpg">
                                                            <img src="assets/images/slider/slide-3.jpg" alt="Image Desc">
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
                            <div id="productTop10List" class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
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

                                
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                        
                        <!-- ##### 인기상품 ajax ##### -->
                        <script>
                        	$(()=>{
                        		topProductList();
                        		setInterval(() => {
                        			topProductList();
								}, 60000);
                        	})
                        	function topProductList() {
								$.ajax({
									url:"topProductList.yj",
									success:data => {
										console.log("ajax 인기게시글 통신 성공");
										console.log(data);
										
										let value = "";
										
										for(let i in data){
											value += "<div class='owl-item active' style='width: 217.6px; margin-right: 20px;'>"
												   + "<div class='product'>"
											       			+ "<figure class='product-media'>";
											       			if(data[i].sale >= 20){
											       				value += "<span class='product-label label-sale'>Sale</span>";
											       			}
											       			if(data[i].score >= 20){
											       				value += "<span class='product-label label-top'>Top</span>";
											       			}
											       	 			value += "<a href='product.html'>"
											       	 			       			+ "<img src='" + data[i].thumbnail + "' alt='Product image' class='product-image'>"
											       	 			       + "</a>"
											       	 			       + "<div class='product-action-vertical'>"
											       	 			       + "<a href='#' class='btn-product-icon btn-wishlist btn-expandable'><span>add to wishlist</span></a>"
											       	 			       + "</div><!-- End .product-action-vertical -->"
											       	 			       + "<div class='product-action'>"
											       	 			       			+ "<a href='#' class='btn-product btn-cart' title='add to cart'><span>add to cart</span></a>"
									       	 			       		   + "</div><!-- End .product-action -->"
														    + "</figure><!-- End .product-media -->"
											       	        + "<div class='product-body'>"
											       	        		   + "<div class='product-cat'>"
											       	        		   			+ "<a href='#'>" + data[i].category + "</a>"
									       	        		   		   + "</div><!-- End .product-cat -->"
									       	        		   		   + "<h3 class='product-title'><a href='product.html'>" + data[i].productName + "</a></h3><!-- End .product-title -->"
																	   + "<div class='product-price'>"
																	   			+ "<span class='new-price'>"+data[i].salePrice+"원</span>"
																	   			+ "<span class='old-price'>"+data[i].price+"원</span>"
															   		   + "</div><!-- End .product-price -->"
															   		   + "<div class='ratings-container'>"
															   		   			+ "<div class='ratings'>"
															   		   					+ "<div class='ratings-val' style='width: " + data[i].avgReview *20 +"%;'></div><!-- End .ratings-val -->"															   		   					
															   		   			+ "</div><!-- End .ratings -->"
																				+ "<span class='ratings-text'>( "+ data[i].reviewCount +" Reviews )</span>"
																	   + "</div><!-- End .rating-container -->"
														    + "</div><!-- End .product-body -->"
												     + "</div><!-- End .product -->"
											     +"</div>"
										}
										$("#productTop10List .owl-stage").html(value);
										
									},
									error:() => {
										console.log("ajax 인기게시글 통신 실패");
									}
								})
							}
                        </script>
                        <!-- ##### 인기상품 ajax ##### -->
                        
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
                                            <img src="assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+9h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #ff887f;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+9h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+9h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>
                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #69b4ff;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #ff887f;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <a href="#" class="active" style="background: #b58555;"><span class="sr-only">Color name</span></a>
                                            <a href="#" style="background: #93a6b0;"><span class="sr-only">Color name</span></a>
                                        </div><!-- End .product-nav -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-top">Top</span>
                                        <span class="product-label label-sale">Sale</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-countdown" data-until="+12h" data-format="HMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
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
                                            <a href="#" class="btn-product btn-cart pt-lg-15" title="add to cart" style="margin-bottom: 170px;"><span>Comming-Soon</span></a>
                                        </div><!-- End .product-action -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-sale">Sale</span>
                                        <span class="product-label label-new">New</span>
                                        <a href="product.html">
                                            <img src="assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
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
                                            <a href="#" class="btn-product btn-cart pt-lg-15" title="add to cart" style="margin-bottom: 170px;"><span>Comming-Soon</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-1.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                            
                                            
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-2.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-3.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-4.jpg" alt="Product image" class="product-image">
                                        </a>


                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-5.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <!-- <div class="product-countdown" data-until="+7h" data-format="HMS" data-relative="true" data-labels-short="true"></div>End .product-countdown -->

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                                            <img src="assets/images/demos/demo-13/products/product-6.jpg" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action-vertical -->

                                        <div class="product-action">
                                            <a href="#" class="btn-product btn-cart" title="add to cart"><span>add to cart</span></a>
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
                    <table border="0" align="center" id="topBoardTable">
						<tbody></tbody>
                    </table>
                </div>
            </div>
            
            <!-- #### ajax 인기게시글 조회 #### -->
            <script>
            	$(()=>{
            		topBoardList();
            		setInterval(() => {
            			topBoardList();	
					}, 60000);
            	})
            	function topBoardList() {
					$.ajax({
						url:"topBoardList.yj",
						success:data => {
							console.log("ajax 인기게시글 조회 성공");
							console.log(data);
							
							let value = "";
							for(let i in data){
								let tag = data[i].tag;
								value += "<tr>"
											+ "<td width='950'>"
												+ "<strong class='board_strong'>";
													if(tag.substring(0, tag.indexOf(',')) != null){
														value += tag.substring(0, tag.indexOf(','));
													}else{
														value += data[i].tag;	
													}
										value += "</strong><a href='#' class='board_span' style='color: rgb(121, 121, 121);'>" + data[i].boardTitle + "</a>"
											+ "</td>"
											+ "<td width='70'>👍" + data[i].likes + "</td>"
				                            + "<td width='70'>💭" + data[i].reply + "</td>"
									    + "</tr>"
							}
							$("#topBoardTable").html(value);
							
						},
						error:()=>{
							console.log("ajax 인기게시글 조회 실패");
						}
					})
				}
            </script>
			<!-- #### ajax 인기게시글 조회 #### -->
            <!-- 인기게시글 종료 -->
 			
 			<!--중고거래 시작-->
            <div class="blog-posts pt-7 pb-7" style="background-color: white;">
                <div class="container">
                   <h2 class="title-lg text-left mb-3 mb-md-4">솔로몬중고👑</h2><!-- End .title-lg text-center -->
                    <div class="owl-carousel owl-simple carousel-with-shadow" id="tBoardList" data-toggle="owl" 
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
                        <script>
                        $(function() {
                            topTBoardList();
                            setInterval(topTBoardList, 60000);
                        });
                        
                        

                        function topTBoardList() {
                            $.ajax({
                                url: "topTBoardList.sy",
                                success:data => {
        							console.log("ajax 중고게시글 조회 성공");
        							console.log(data);

                                    let value = "";

                                    for (let i in data) {
                                    	console.log(data[i].thumbnail);
                                        value += "<div class='owl-item active' style='width: 217.6px; margin-right: 20px;'>" 
                                            	+ "<article class='entry entry-display'>"
                                                + "<figure class='entry-media'>"
                                                + "<a href='#'>"
                                                + "<img src='" + data[i].thumbnail + "' alt='image desc'></a></figure>"
                                                + "<div class='entry-body pb-4 text-center'>"
                                                + "<div class='entry-meta'>"
                                                + "<a href='#'>" + data[i].createDate + "</a></div>"
                                                + "<h3 class='entry-title'>"
                                                + "<a href='#'>" + data[i].tboardTitle + "</a></h3>"
                                                + "<div class='entry-content'>"
                                                + "<p>" + data[i].tboardContent + "</p>"
                                                + "<a href='tboardList.bo' class='read-more'>더보기</a>"
                                                + "</div>"
                                                + "</div>"
                                                + "</article>"
                                                + "</div>";

                                    }

                                    $("#tBoardList .owl-stage").html(value);
                                },
                                error: function() {
                                    console.log("최신순 top5 중고게시글 조회용 ajax 통신 실패");
                                }
                            });
                        }
                        
                        </script>

                    </div>
                </div>

		
	
	
                <div class="more-container text-center mb-0 mt-3">
                    <a href="blog.html" class="btn btn-outline-darker btn-more"><span>View more articles</span><i class="icon-long-arrow-right"></i></a>
                </div><!-- End .more-container -->
            </div>

			<!--중고거래 종료-->


            <div class="cta cta-display bg-image pt-4 pb-4" style="background-image: url(assets/images/backgrounds/cta/bg-6.jpg);">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-10 col-lg-9 col-xl-8">
                            <div class="row no-gutters flex-column flex-sm-row align-items-sm-center">
                                <div class="col">
                                    <h3 class="cta-title text-white">많은 혜택과 포인트 지금 만나세요!</h3><!-- End .cta-title -->
                                    <p class="cta-desc text-white">솔로몬을 선택한 당신! 최선이 아닌 최적의 선택 입니다.</p><!-- End .cta-desc -->
                                </div><!-- End .col -->

                                <div class="col-auto">
                                    <a href="#signin-modal" data-toggle="modal" class="btn btn-outline-white"><span>로그인</span><i class="icon-long-arrow-right"></i></a>
                                </div><!-- End .col-auto -->
                            </div><!-- End .row no-gutters -->
                        </div><!-- End .col-md-10 col-lg-9 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .cta -->
        </main><!-- End .main -->

        <jsp:include page="footer.jsp"/>
    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

	<script>
		$(()=>{
			$("#tBoardList .owl-stage").width("1189");
		})
	</script>

    
</body>


<!-- molla/index-2.html  22 Nov 2019 09:55:42 GMT -->
</html>