<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
          <main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container d-flex align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Products</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Centered</li>
                    </ol>

                    <nav class="product-pager ml-auto" aria-label="Product">
                        <a class="product-pager-link product-pager-prev" href="#" aria-label="Previous" tabindex="-1">
                            <i class="icon-angle-left"></i>
                            <span>Prev</span>
                        </a>

                        <a class="product-pager-link product-pager-next" href="#" aria-label="Next" tabindex="-1">
                            <span>Next</span>
                            <i class="icon-angle-right"></i>
                        </a>
                    </nav><!-- End .pager-nav -->
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
                <div class="container">
                    <div class="product-details-top mb-2">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="product-gallery product-gallery-vertical">
                                    <div class="row">
                                        <figure class="product-main-image">
                                            <img id="product-zoom" src="assets/images/products/single/centered/1.jpg" data-zoom-image="assets/images/products/single/centered/1-big.jpg" alt="product image">

                                           
                                        </figure><!-- End .product-main-image -->

                                        
                                    </div><!-- End .row -->
                                </div><!-- End .product-gallery -->
                            </div><!-- End .col-md-6 -->

                            <div class="col-md-6">
                                <div class="product-details product-details-centered">
                                    <h1 class="product-title">Beige metal hoop tote bag</h1><!-- End .product-title -->

                                    <div class="ratings-container">
                                        <div class="ratings">
                                            <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                        </div><!-- End .ratings -->
                                        <a class="ratings-text" href="#product-review-link" id="review-link">( Reviews )</a>
                                    </div><!-- End .rating-container -->

                                    <div class="product-price">
                                        $76.00
                                    </div><!-- End .product-price -->

                                   

                                    

                                    <div class="details-filter-row">
                                        <label for="size">옵션</label>
                                        <div class="select-custom">
                                            <select name="size" id="size" class="form-control">
                                                <option value="#" selected="selected">옵션 선택</option>
                                                <option value="s">옵션1 남녀공용 어쩌고  </option>
                                                <option value="m">옵션2</option>
                                                <option value="l">옵션3</option>
                                                <option value="xl">옵션4</option>
                                            </select>
                                        </div><!-- End .select-custom -->

                                        <!-- <a href="#" class="size-guide"><i class="icon-th-list"></i>size guide</a> -->
                                    </div><!-- End .details-filter-row -->

                                    <div class="product-details-action">
                                        <div class="details-action-col">
                                        <label for="size">수량</label>
                                            <div class="product-details-quantity">
                                                <input type="number" id="qty" class="form-control" value="1" min="1" max="10" step="1" data-decimals="0" required>
                                            </div><!-- End .product-details-quantity -->
                                            <br>
                                            
                                        </div><!-- End .details-action-col -->
                                        
                                        
                                    </div><!-- End .product-details-action -->
                                    
                                    

                                    <div class="product-details-action">
                                        <div class="details-action-col">
                                            <a href="#" class="btn-product btn-cart"><span>장바구니</span></a>
                                        <a href="#" class="btn-product btn-cart" style="margin-left: 20px;"><span>주문하기</span></a>
                                        </div>
                                        

                                    </div>

                                    <div class="product-details-action">
                                        <div class="details-action-wrapper">
                                            <a href="#" class="btn-product btn-wishlist" title="Wishlist"><span>찜하기</span></a>
                                        </div><!-- End .details-action-wrapper -->
                                    </div>

                                    <div class="product-details-footer">
                                       

                                        <div class="social-icons social-icons-sm">
                                            <span class="social-label">Share:</span>
                                            <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                            <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                                            <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                            <a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                                        </div>
                                    </div><!-- End .product-details-footer -->
                                </div><!-- End .product-details -->
                            </div><!-- End .col-md-6 -->
                        </div><!-- End .row -->
                    </div><!-- End .product-details-top -->

                    <div class="product-details-tab">
                        <ul class="nav nav-pills justify-content-center" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="product-desc-link" data-toggle="tab" href="#product-desc-tab" role="tab" aria-controls="product-desc-tab" aria-selected="true">상품 정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="product-shipping-link" data-toggle="tab" href="#product-shipping-tab" role="tab" aria-controls="product-shipping-tab" aria-selected="false">배송/환불</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="product-review-link" data-toggle="tab" href="#product-review-tab" role="tab" aria-controls="product-review-tab" aria-selected="false">리뷰</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="product-desc-tab" role="tabpanel" aria-labelledby="product-desc-link">
                                <div class="product-desc-content">
                                    <h3>상품 정보</h3>
                                    <div class="row">

                                        <div class="col-md">
                                            <div class="accordion" id="accordion-1">

                                                <div class="card">
                                                    <div class="card-header" id="heading-1">
                                                        <h3 class="card-title">
                                                            <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
                                                                펼쳐보기
                                                            </a>
                                                        </h3>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-1" class="collapse show" aria-labelledby="heading-1" data-parent="#accordion-1">
                                                        <div class="card-body">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum.
                                                        </div><!-- End .card-body -->
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->
                                            </div>

                                        </div>

                                    </div>


                                </div><!-- End .product-desc-content -->
                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade" id="product-info-tab" role="tabpanel" aria-labelledby="product-info-link">
                                <div class="product-desc-content">
                                    <h3>Information</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. </p>

                                    <h3>Fabric & care</h3>
                                    <ul>
                                        <li>Faux suede fabric</li>
                                        <li>Gold tone metal hoop handles.</li>
                                        <li>RI branding</li>
                                        <li>Snake print trim interior </li>
                                        <li>Adjustable cross body strap</li>
                                        <li> Height: 31cm; Width: 32cm; Depth: 12cm; Handle Drop: 61cm</li>
                                    </ul>

                                    <h3>Size</h3>
                                    <p>one size</p>
                                </div><!-- End .product-desc-content -->
                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade" id="product-shipping-tab" role="tabpanel" aria-labelledby="product-shipping-link">
                                <div class="product-desc-content">
                                    <h3>배송/환불</h3>
                                    <br>
                                    <p>
                                        1. 배송 <br>
                                         - 판매되는 상품 배송은 택배배송으로 진행됩니다.<br>
                                         - 기본 배송비는 주문 건당 2,500원입니다. (50,000원 이상 구매시 배송비 무료)<br>
                                          ※ 단, 상품별 배송비가 따로 부과된 경우에는 기본배송비와 관계없이 상품별 배송비가 부과됩니다.<br>
                                         - 제주 및 도서 산간 지역은 기본 배송비 외 6,000원의 추가 배송비가 발생합니다. <br>
                                         - 배송은 영업일 기준 평균 1~3 영업일 정도 소요됩니다. 제주 및 도서 산간 지역 제외<br>
                                         - 상품의 상세 정보를 통해 별도의 배송 안내가 고지된 경우, 개별 상품의 출고마감 시간과 배송일정이 적용됩니다.<br><br>
                                        2. 교환/반품/취소/환불<br><br>
                                          2-1. 주문 취소 가능 시간<br>
                                           - 주문취소는 주문접수, 입금확인, 결제완료 상태에서 가능합니다.<br>
                                           - 상품 준비 중 이후 단계부터는 주문취소가 불가하며, 상품 수령 후 교환/반품 신청이 가능합니다.<br>
                                           - 주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매 부탁드립니다.<br><br>
                                           2-2. 교환/반품 신청 가능 시간<br>
                                            - 상품 수령일로부터 7일 내 교환 및 반품 신청이 가능합니다.<br>
                                            - 수거시에는 받으신 박스 그대로 보내주셔야 빠른 처리가 가능합니다. (분할 및 합포장 불가)<br><br>
                                            
                                           2-3. 교환/반품에 따른 배송비 부담<br>
                                            - 상품의 불량, 오배송, 상품 표시 정보의 오류 등 판매자 과실로 인한 교환/반품은 무료입니다.<br>
                                            - 상품의 불량, 오배송 등으로 교환을 진행하는 경우에는 동일 상품으로만 교환이 가능합니다.<br>
                                            - 고객의 단순 변심으로 인한 교환/반품 시 배송비 5,000원을 부담하셔야 합니다. (주문 건 배송비를 낸 경우 2,500원)<br>
                                            - 제주 및 도서 산간 지역은 추가 반품 배송비 6,000원이 발생합니다.<br><br>
                                           2-4. 교환/반품에 따른 배송비 부과 방법<br>
                                            - 주문취소 상품의 환불은 반품 배송비를 선 차감 후 처리해드립니다.<br>
                                            - 단, 전화/채팅 상담을 통한 카드결제 주문의 경우 반품 배송비의 별도 선입금이 필요합니다.<br>
                                            - 자세한 내용은 고객센터를 통해 확인 가능합니다.<br><br>
                                           2-5. 환불<br>
                                              결제 수단에 따라 영업일 기준 3~7일내 승인 취소 또는 환불 처리 해드립니다.<br>
                                              (카드 환불의 경우 카드사 정책에 따르며, 자세한 사항은 카드사에 문의 부탁드립니다.)<br><br>
                                           3. 기타 유의사항<br>
                                           - 판매자가 첨부한 별도 안내서에 배송비 동봉 등에 대한 내용이 있더라도 이를 동봉하여 보내시면 안됩니다.<br>
                                           - 교환 및 반품 요청을 하지 않고 제품을 업체에 먼저 발송하신 경우, 신청이 누락되어 처리가 지연될 수 있습니다. </p><br>
                                           
                                           <h3>교환/반품 신청이 불가능한 경우</h3>
                                           - 고객의 책임 있는 사유로 상품 등의 멸실 또는 훼손된 경우 (단, 상품 확인을 위한 포장 훼손 제외)<br>
                                           - 고객의 사용 또는 소비에 의해 상품 등의 가치가 현저히 감소한 경우<br>
                                           - 시간의 경과에 의해 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우<br>
                                           - 복제가 가능한 상품 등의 포장을 훼손한 경우<br>
                                           - 고객의 주문에 따라 개별적으로 생산되는 상품이 제작에 들어간 경우<br>
                                </div><!-- End .product-desc-content -->
                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade" id="product-review-tab" role="tabpanel" aria-labelledby="product-review-link">
                                <div class="reviews">
                                   <div class="review">
                                        <div class="row no-gutters">
                                            <div class="col-auto">
                                                <h4><a href="#">이름</a></h4>
                                                <div class="ratings-container">
                                                    <div class="ratings">
                                                        <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                                    </div><!-- End .ratings -->
                                                </div><!-- End .rating-container -->
                                                <span class="review-date">날짜</span>
                                            </div><!-- End .col -->
                                            <div class="col-2">
                                                <div class="review-content">
                                                    <h4>이미지</h4>
                                                    <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/169668483104029915.jpeg?gif=1&w=144&h=144&c=c&webp=1" alt="">
                                                </div>
                                            </div>
                                            <div class="col">
                                                <h4>제목</h4>
                                                
                                                <div class="review-content">
                                                    <p>내용</p>
                                                </div><!-- End .review-content -->
                                                
                                                
                                            </div><!-- End .col-auto -->
                                        </div><!-- End .row -->
                                    </div><!-- End .review -->

                                    <div class="review">
                                        <div class="row no-gutters">
                                            <div class="col-auto">
                                                <h4><a href="#">이름</a></h4>
                                                <div class="ratings-container">
                                                    <div class="ratings">
                                                        <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                                    </div><!-- End .ratings -->
                                                </div><!-- End .rating-container -->
                                                <span class="review-date">날짜</span>
                                            </div><!-- End .col -->
                                            <div class="col-2">
                                                <div class="review-content">
                                                    <h4>이미지</h4>
                                                    <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/169668483104029915.jpeg?gif=1&w=144&h=144&c=c&webp=1" alt="">
                                                </div>
                                            </div>

                                            <div class="col">
                                                <h4>제목</h4>
                                                <div class="review-content">
                                                    <p>내용</p>
                                                </div><!-- End .review-content -->
                                                   
                                                
                                            </div><!-- End .col-auto -->
                                            
                                        </div><!-- End .row -->
                                        <div id="review-area">
                                            <form action="#" method="post">
                                            </form>
                                            <div id="rating">
                                                <p>만족도</p>
                                                <select name="rating">
                                                    <option value="1">⭐</option>
                                                    <option value="2">⭐⭐</option>
                                                    <option value="3">⭐⭐⭐</option>
                                                    <option value="4">⭐⭐⭐⭐</option>
                                                    <option value="5" selected>⭐⭐⭐⭐⭐</option>
                                                </select>
                                                <input type="file">
                                            </div>

                                            <div id="cmt_btn" style="display: flex;">
                                                <textarea name="review-content" style="resize: none;  width: 100%; height: 50px;" placeholder="구매 회원만 작성 가능합니다."></textarea>
                                                <div class="col-6 col-lg-4 col-xl-2">
                                                    <div class="btn-wrap">
                                                        <button type="submit" class="btn btn-outline-primary btn-rounded" style="margin-left: 10px; margin-top: 5px;">등록</button>
                                                    </div><!-- End .btn-wrap -->
                                                </div>
                                            </div>
                                        </div>
                                </div><!-- End .reviews -->
                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .product-details-tab -->
                    <br><br>
                    <h2 class="title text-center mb-4">인스타 피드</h2><!-- End .title text-center -->
                    <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                        data-owl-options='{
                            "nav": false, 
                            "dots": true,
                            "margin": 20,
                            "loop": false,
                            "responsive": {
                                "0": {
                                    "items":1
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
                                "1200": {
                                    "items":4,
                                    "nav": true,
                                    "dots": false
                                }
                            }
                        }'>
                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <a href="product.html">
                                    <img src="assets/images/products/product-4.jpg" alt="Product image" class="product-image">
                                </a>

                                <div class="product-action">
                                </div><!-- End .product-action -->
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                
                                <h3 class="product-title"><a href="product.html">Brown paperbag waist <br>pencil skirt</a></h3><!-- End .product-title -->
                                
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <a href="product.html">
                                    <img src="assets/images/products/product-6.jpg" alt="Product image" class="product-image">
                                </a>

                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <h3 class="product-title"><a href="product.html">Khaki utility boiler jumpsuit</a></h3><!-- End .product-title -->
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <a href="product.html">
                                    <img src="assets/images/products/product-11.jpg" alt="Product image" class="product-image">
                                </a>
                            </figure><!-- End .product-media -->

                            <div class="product-body">                                
                                <h3 class="product-title"><a href="product.html">Light brown studded Wide fit wedges</a></h3><!-- End .product-title -->                                                         
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <a href="product.html">
                                    <img src="assets/images/products/product-10.jpg" alt="Product image" class="product-image">
                                </a>                             
                            </figure><!-- End .product-media -->

                            <div class="product-body">                              
                                <h3 class="product-title"><a href="product.html">Yellow button front tea top</a></h3><!-- End .product-title -->                                                             
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <a href="product.html">
                                    <img src="assets/images/products/product-7.jpg" alt="Product image" class="product-image">
                                </a>                              
                            </figure><!-- End .product-media -->

                            <div class="product-body">                           
                                <h3 class="product-title"><a href="product.html">Blue utility pinafore denim dress</a></h3><!-- End .product-title -->                                                      
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->
                    </div><!-- End .owl-carousel -->
                    <h2 class="title text-center mb-4">추천 상품</h2><!-- End .title text-center -->
                    <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                        data-owl-options='{
                            "nav": false, 
                            "dots": true,
                            "margin": 20,
                            "loop": false,
                            "responsive": {
                                "0": {
                                    "items":1
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
                                "1200": {
                                    "items":4,
                                    "nav": true,
                                    "dots": false
                                }
                            }
                        }'>
                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <span class="product-label label-new">New</span>
                                <a href="product.html">
                                    <img src="assets/images/products/product-4.jpg" alt="Product image" class="product-image">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                </div><!-- End .product-action-vertical -->

                                <div class="product-action">
                                    <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                </div><!-- End .product-action -->
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                    <a href="#">Women</a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title"><a href="product.html">Brown paperbag waist <br>pencil skirt</a></h3><!-- End .product-title -->
                                <div class="product-price">
                                    $60.00
                                </div><!-- End .product-price -->
                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: 20%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    <span class="ratings-text">( 2 Reviews )</span>
                                </div><!-- End .rating-container -->

                                
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <span class="product-label label-out">Out of Stock</span>
                                <a href="product.html">
                                    <img src="assets/images/products/product-6.jpg" alt="Product image" class="product-image">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                </div><!-- End .product-action-vertical -->

                                <div class="product-action">
                                    <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                </div><!-- End .product-action -->
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                    <a href="#">Jackets</a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title"><a href="product.html">Khaki utility boiler jumpsuit</a></h3><!-- End .product-title -->
                                <div class="product-price">
                                    <span class="out-price">$120.00</span>
                                </div><!-- End .product-price -->
                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    <span class="ratings-text">( 6 Reviews )</span>
                                </div><!-- End .rating-container -->
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <span class="product-label label-top">Top</span>
                                <a href="product.html">
                                    <img src="assets/images/products/product-11.jpg" alt="Product image" class="product-image">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                </div><!-- End .product-action-vertical -->

                                <div class="product-action">
                                    <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                </div><!-- End .product-action -->
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                    <a href="#">Shoes</a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title"><a href="product.html">Light brown studded Wide fit wedges</a></h3><!-- End .product-title -->
                                <div class="product-price">
                                    $110.00
                                </div><!-- End .product-price -->
                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    <span class="ratings-text">( 1 Reviews )</span>
                                </div><!-- End .rating-container -->
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <a href="product.html">
                                    <img src="assets/images/products/product-10.jpg" alt="Product image" class="product-image">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                </div><!-- End .product-action-vertical -->

                                <div class="product-action">
                                    <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                </div><!-- End .product-action -->
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                    <a href="#">Jumpers</a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title"><a href="product.html">Yellow button front tea top</a></h3><!-- End .product-title -->
                                <div class="product-price">
                                    $56.00
                                </div><!-- End .product-price -->
                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: 0%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    <span class="ratings-text">( 0 Reviews )</span>
                                </div><!-- End .rating-container -->
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <a href="product.html">
                                    <img src="assets/images/products/product-7.jpg" alt="Product image" class="product-image">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                </div><!-- End .product-action-vertical -->

                                <div class="product-action">
                                    <a href="#" class="btn-product btn-cart"><span>add to cart</span></a>
                                </div><!-- End .product-action -->
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                    <a href="#">Jeans</a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title"><a href="product.html">Blue utility pinafore denim dress</a></h3><!-- End .product-title -->
                                <div class="product-price">
                                    $76.00
                                </div><!-- End .product-price -->
                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: 20%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    <span class="ratings-text">( 2 Reviews )</span>
                                </div><!-- End .rating-container -->
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->
                    </div><!-- End .owl-carousel -->
                </div><!-- End .container -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>