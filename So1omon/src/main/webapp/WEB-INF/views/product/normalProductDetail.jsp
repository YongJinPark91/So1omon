<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #toast-container {
	  position: fixed;
	  bottom: 1rem;
	  right: 1rem;
	  z-index: 9999; /* 필요시 z-index를 조절하여 다른 요소 위에 나타나게 합니다. */
	}
	#toast-container *{
		font-size: small;
	}

    .entry-content-yj{

    	height:20px;
        width: 300px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 1;
        -webkit-box-orient: vertical;
    }
    
    .addProduct{
    	background-color: rgb(245, 245, 245);
        margin-bottom: 20px;
        padding:15px;
        text-align: left;
        position: relative;
    }
    
    .addProduct>p {
        font-size: 17px;
        font-weight: 500;
        margin-bottom: 8px;
    }
    
    .addProduct button, .addProduct input{
        overflow: visible;
    }
  
    .addProduct a{
        position: absolute;
        top: 15px;left: 525px;right:0;bottom: 0;
        color: black;
    }

    .product-details{
        padding-top: 40px;
    }

    .details-filter-row{
        margin-top: 20px;
    }
    
    .oPrice{
    	font-size: 20px;
    	text-align:right;
    }
    
    .total{
    	font-size: 30px;
    	text-align:right;
    	color:#a6c76c;
    	margin-bottom: 50px;
    	font-weight: 500;
    }
    
    
    .total>p{
    	display:inline-block;
    	font-size:20px;
    	color:#a6c76c;
    	margin-right: 20px;
    	font-weight:400;
    }
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<div class="alertTest"></div>
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
                                            <img id="product-zoom" src="${ p.thumbnail }" data-zoom-image="assets/images/products/single/centered/1-big.jpg" alt="product image">

                                           
                                        </figure><!-- End .product-main-image -->

                                        
                                    </div><!-- End .row -->
                                </div><!-- End .product-gallery -->
                            </div><!-- End .col-md-6 -->

                            <div class="col-md-6">
                                <div class="product-details product-details-centered">
                                    <h1 class="product-title">${ p.productName }</h1><!-- End .product-title -->

                                    <div class="ratings-container">
                                        <div class="ratings">
                                            <div class="ratings-val" style="width: ${ p.avgReview * 20}%;"></div><!-- End .ratings-val -->
                                        </div><!-- End .ratings -->
                                        <a class="ratings-text" href="#product-review-link" id="review-link">( Reviews )</a>
                                    </div><!-- End .rating-container -->

                                    <div class="product-price">
                                        ${ p.price } 원
                                    </div><!-- End .product-price -->


                                    <div class="details-filter-row">
                                        <label for="size">옵션</label>
                                        <div class="select-custom">
                                            <select id="pOtion" class="form-control">
                                                <option value="#" selected style="color: lightgray;">${ p.productOption }</option>
                                            	<c:forEach var="o" items="${ opList }">
	                                                <option value="${o.optionName }/${o.price}">${ o.optionName }
		                                                <c:if test="${ o.price ne 0 }">
		                                                	<label>( + ${o.price } 원)</label>
		                                                </c:if>
	                                                </option>
                                                </c:forEach>
                                            </select>
                                        </div><!-- End .select-custom -->

                                        <!-- <a href="#" class="size-guide"><i class="icon-th-list"></i>size guide</a> -->
                                    </div><!-- End .details-filter-row -->

                                    <div class="product-details-action">
                                        
                                    </div>
                                    
                                    <div id="chooseDiv">
                                    	<p style='padding:20px;'> </p>
                                    	<!-- 상품 선택하면 요소 추가되는 div -->
                                    </div>
                                    
                                    <hr>
                                    <div class="total">
                                    
                                    </div>

                                    <div class="product-details-action">
                                        <div class="details-action-col">
                                            <a onclick="addCart();" class="btn-product btn-cart"><span>장바구니</span></a>
                                        	<a id ="wishBtn" class="btn-product btn-cart" style="margin-left: 20px;"><span>주문하기</span></a>
                                        </div>
                                    </div>

								<div class="product-details-action">
									<div class="details-action-wrapper" onclick="addWish();">
										<i class="fa-regular fa-heart"><span
											style="padding-left: 10px;">찜하기</span></i>
									</div>
									<!-- End .details-action-wrapper -->
								</div>

<!-- 								<div class="product-details-footer"> -->


<!-- 									<div class="social-icons social-icons-sm"> -->
<!-- 										<span class="social-label">Share:</span> <a href="#" -->
<!-- 											class="social-icon" title="Facebook" target="_blank"><i -->
<!-- 											class="icon-facebook-f"></i></a> <a href="#" class="social-icon" -->
<!-- 											title="Twitter" target="_blank"><i class="icon-twitter"></i></a> -->
<!-- 										<a href="#" class="social-icon" title="Instagram" -->
<!-- 											target="_blank"><i class="icon-instagram"></i></a> <a -->
<!-- 											href="#" class="social-icon" title="Pinterest" -->
<!-- 											target="_blank"><i class="icon-pinterest"></i></a> -->
<!-- 									</div> -->
<!-- 								</div> -->
								
								<!-- End .product-details-footer -->
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
                                    <div class="row">

                                        <div class="col-md">
                                            <div class="accordion" id="accordion-1">

                                                <div class="card">
                                                    <div class="card-header" id="heading-1">
                                                        <h3 class="card-title">
                                                            <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
                                                                상품상세
                                                            </a>
                                                        </h3>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-1" class="collapse show" aria-labelledby="heading-1" data-parent="#accordion-1">
                                                        <div class="card-body">
                                                        
                                                        	<!-- 상품 상세 이미지 -->
                                                        	<c:forEach var="a" items="${ atList }">
                                                        		<img src="${ a.filePath }" width=100%>
                                                        	</c:forEach>
                                                        	
                                                        </div><!-- End .card-body -->
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->
                                            </div>

                                        </div>

                                    </div>


                                </div><!-- End .product-desc-content -->
                            </div>
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
                                         - 기본 배송비는 주문 건당 ${ p.delivery }원입니다.<br>
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
                                <c:if test="${ empty rList }">
                                	<div class="review">
                                        <div class="row no-gutters">
                                            아직 작성된 리뷰가 없습니다.
                                        </div>
                                    </div>
                                </c:if>
                            	<c:forEach var="r" items="${ rList }">
                                   <div class="review">
                                        <div class="row no-gutters">
                                            <div class="col-auto">
                                                <h4><a href="#">${ r.reviewWriter }</a></h4>
                                                <div class="ratings-container">
                                                    <div class="ratings">
                                                        <div class="ratings-val" style="width: ${r.rating * 20}%;"></div><!-- End .ratings-val -->
                                                    </div><!-- End .ratings -->
                                                </div><!-- End .rating-container -->
                                                <span class="review-date">${ r.createDate }</span>
                                            </div><!-- End .col -->
                                           	<c:if test="${ not empty r.reviewImg }">
                                            <div class="col-2">
                                                <div class="review-content">
                                                    <img src="${r.reviewImg }">
                                                </div>
                                            </div>
                                            </c:if>
                                            <div class="col">
                                                
                                                <div class="review-content">
                                                    <p>${ r.reviewContent }</p>
                                                </div><!-- End .review-content -->
                                                
                                                
                                            </div><!-- End .col-auto -->
                                        </div><!-- End .row -->
                                    </div><!-- End .review -->
								</c:forEach>
									
                                
                                <!-- 리뷰 작성 -->
<!--                                 <div id="review-area"> -->
<!--                                     <form action="insertReview.pr" method="post" enctype="multipart/form-data"> -->
<!--                                     </form> -->
<!--                                     <div id="rating"> -->
<!--                                         <p>만족도</p> -->
<!--                                         <select name="rating"> -->
<!--                                             <option value=1>⭐</option> -->
<!--                                             <option value=2>⭐⭐</option> -->
<!--                                             <option value=3>⭐⭐⭐</option> -->
<!--                                             <option value=4>⭐⭐⭐⭐</option> -->
<!--                                             <option value=5 selected>⭐⭐⭐⭐⭐</option> -->
<!--                                         </select> -->
<!--                                         <input type="file"> -->
<!--                                     </div> -->

<%-- 									<c:choose> --%>
<%-- 										<c:when test="${ result ne 0 }"> --%>
<!-- 		                                    <div id="cmt_btn" style="display: flex;"> -->
<!-- 		                                        <textarea name="reviewContent" style="resize: none;  width: 100%; height: 50px;" placeholder="리뷰를 작성해주세요"></textarea> -->
<!-- 		                                        <div class="col-6 col-lg-4 col-xl-2"> -->
<!-- 		                                            <div class="btn-wrap"> -->
<!-- 		                                                <button type="submit" class="btn btn-outline-primary btn-rounded" style="margin-left: 10px; margin-top: 5px;">등록</button> -->
<!-- 		                                            </div> -->
<!-- 		                                        </div> -->
<!-- 		                                    </div> -->
<%-- 	                                    </c:when> --%>
<%-- 	                                    <c:otherwise> --%>
<!-- 		                                    <div id="cmt_btn" style="display: flex;"> -->
<!-- 		                                        <textarea name="reviewContent" style="resize: none;  width: 100%; height: 50px;" placeholder="구매 회원만 작성 가능합니다." readonly></textarea> -->
<!-- 		                                        <div class="col-6 col-lg-4 col-xl-2"> -->
<!-- 		                                            <div class="btn-wrap"> -->
<!-- 		                                                <button type="submit" class="btn btn-outline-primary btn-rounded" style="margin-left: 10px; margin-top: 5px;" disabled>등록</button> -->
<!-- 		                                            </div> -->
<!-- 		                                        </div> -->
<!-- 		                                    </div> -->
<%-- 	                                    </c:otherwise> --%>
<%--                                     </c:choose> --%>
<!--                                 </div> -->
                                
                                 <!-- 리뷰 작성 끝 -->
                                
                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .product-details-tab -->
                    <br><br>
                    
                    <h2 class="title text-center mb-4">비슷한 상품</h2><!-- End .title text-center -->
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
                        <c:forEach var="p" items="${ cList }">
                        <div class="product product-7 text-center">
                            <figure class="product-media">
                                <a href="productDetail.mj?pno=${ p.productNo }">
                                    <img src="${ p.thumbnail }" alt="Product image" class="product-image">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                </div><!-- End .product-action-vertical -->

                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                </div><!-- End .product-cat -->
                                <h3 class="product-title"><a href="productDetail.mj?pno=${ p.productNo }">${ p.productName }</a></h3><!-- End .product-title -->
                                <div class="product-price">
                                    ${ p.price } 원
                                </div><!-- End .product-price -->

                            </div><!-- End .product-body -->
                        </div><!-- End .product -->
						</c:forEach>
	
						<script>
						
                         let userNo = ${loginMember.userNo};
                         let productNo = '${p.productNo}';
                         let cArr = [];
                         let cart = {};
                               		
                       	$(function(){
                       		
                       		// 위시에 있는지 아닌지 체크 함수
                       		$.ajax({
                       			url:"checkWish.mj",
                       			data:{
                       				productNo:productNo,
                       				userNo:userNo
                       			},
                       			success:function(result){
                       				console.log("결과 : " + result);
                       				if(result > 0){
                       					$(".details-action-wrapper").html('<i class="fa-solid fa-heart"><span style="padding-left:10px;">찜하기</span></i>');
                       				}else{
                       					$(".details-action-wrapper").html('<i class="fa-regular fa-heart"><span style="padding-left:10px;">찜하기</span></i>');
                       				}
                       			}
                       		})
                       		
                       		
                       		// 옵션 추가 -> cart 객체 만들고 -> 배열에 담기
                       		$("#pOtion").on("change" , function(){
                       			
                       			let optInfo = $(this).val().split("/");
                       			
                       			let result = 0;
                       			for(let i in cArr){
                       				if(cArr[i].optionName == optInfo[0]){ // 이미 선택된 옵션일 경우
                       					result = 1;
                       					alert("이미 선택된 옵션입니다.");
                         			$(this).val("#");
                       				}
                       			}
                       			
                       			if($(this).val() != "#" && result != 1){
                       				
                         		cart = {
                         			userNo : userNo,
                        				productNo : "${p.productNo}",
                        				optionName : optInfo[0],
                        				volume : 1,
                        				price:Number(${p.price}) + Number(optInfo[1]),
                        				totalPrice : (Number(${p.price}) + Number(optInfo[1])) * 1
                         		}
                         		
                         		cArr.push(cart);
                         		
                         		displayChoose();
                         		
                         		$(this).val("#");
                         		
                       			}
                        		
                       		})
                       		
                       		// 각 상품 수량 변경 시
                       		$(document).on("change", "#chooseDiv input", function(){
                       			
                        			let num = $(this).attr('id');
                        			cArr[num].totalPrice = cArr[num].price * $(this).val();
                        			cArr[num].volume = $(this).val();
                        			displayChoose();
                       			
                       		})
                       		
                       		
                       	})
                                    	
                       	// 객체배열 요소 화면에 그리기
                   		function displayChoose(){
                   			let value = "";
                   			let totalPrice = 0;
                   			for(let i in cArr){
                   				
                    			value += "<div class='addProduct' style='padding-bottom:5px;'>"
                     			   + "<a class='btn-remove' onclick='deleteOpt(" + i +");'><i class='icon-close'></i></a>"
                     			   + "<p>" + cArr[i].optionName + "</p>" 
                     			   + "<div class='product-details-quantity'>"
                     			   + "<input id='"+ i + "' style='background-color:white;' type='number' value='" + cArr[i].volume + "'class='form-control' min='1' max='10' step='1' data-decimals='0' required>"
                     			   + "</div><div class='oPrice'>" + cArr[i].totalPrice + "원</div>"
                     			   + "</div>";
                     			   
                     		totalPrice += Number(cArr[i].totalPrice);
                   			} 
                   			
                    		$("#chooseDiv").html(value);
                    		
                    		$(".total").html("<p>총 </p>" + totalPrice + " 원");                    			
                   		}
                                
                       	
                		// 옵션 삭제 함수
                   		function deleteOpt(idx){
                   			cArr.splice(idx, 1);
                   			displayChoose();
                   		}
                                    	
                                    	
                   		// 장바구니 추가
                  		function addCart(){
                   		if(cArr.length == 0){
                   			alert("옵션을 선택해주세요");
                   		}else{
                   			
                    		$.ajax({
                    			type:"POST",
                    			url:"addCart.mj",
                    			data:JSON.stringify(cArr),
                    			contentType:"application/json",
                    			success:function(result){
                    				if(result == "Success"){
                    					
                     				alert("추가 완 (토스트 추가 예정)");
                    				}else{
                    					alert("추가 실패");
                    				}
                    			}
                    		})
                   		}
                   		
                  		}
                                   				
                                    	
                                    	
                  		function addWish(){
                  			$.ajax({
                  	            url: "wishController.yj",
                  	            data: {
                  	                productNo: productNo,
                  	            },
                  	            success: data => {
                  	                
                  	                let value = "";
                  	                let name = "${p.productName}";
                  	                if (data > 0) {
                  	                	$(".details-action-wrapper").html('<i class="fa-regular fa-heart"><span style="padding-left:10px;">찜하기</span></i>');
                  	                    value += `
                  	                        <div id="toast-container">
                  	                            <div class="toast">
                  	                                <div class="toast-header">
                  	                                	<img src="assets/images/So1omon (3).gif" alt="Molla Logo" width="100">
                  	                                </div>
                  	                                <div class="toast-body">
                  	                                <strong><div class="entry-content-yj">` + name + `</div></strong> 을 관심(wish)리스트에 <strong style="color:red">삭제</strong>하였습니다.
                  	                                </div>
                  	                            </div>
                  	                        </div>`;
                  	                    
                  	                    showMyWish();
                  	                } else {
                  	                	$(".details-action-wrapper").html('<i class="fa-solid fa-heart"><span style="padding-left:10px;">찜하기</span></i>');
                  	                    value += `
                  	                        <div id="toast-container">
                  	                            <div class="toast">
                  	                                <div class="toast-header">
                  	                                	<img src="assets/images/So1omon (3).gif" alt="Molla Logo" width="100">
                  	                                </div>
                  	                                <div class="toast-body">
                  	                                	<strong><div class="entry-content-yj">` + name + `</div></strong> 을 관심(wish)리스트에 <strong style="color:blue">등록</strong>하였습니다.
                  	                                </div>
                  	                            </div>
                  	                        </div>`;
                  	                    
                  	                    showMyWish();
                  	                }

                  	                // AJAX 응답 후 실행되어야 할 코드
                  	                $(".alertTest").html(value);
                  	                $('.toast').toast({ delay: 1500 }).toast('show');
                  	                console.log(value);
                  	            },
                  	            error: () => {
                  	                console.log("ajax wish 컨트롤 실패");
                  	            }
                  	        });
                  		}
                                   		
                     </script>					

                    </div><!-- End .owl-carousel -->
                </div><!-- End .container -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>