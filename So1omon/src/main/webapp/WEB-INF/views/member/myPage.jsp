<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>마이페이지</title>
<style>
    #ex_file {  /* 파일 필드 숨기기 */
        position: absolute;
        width: 1px;
        height: 1px;
        padding: 0;
        margin: -1px;
        overflow: hidden;
        clip:rect(0,0,0,0);
        border: 0;
    }
    
    #mypost-tr>td{
    	padding: 0px;
    	line-height: 50px;
    }
    
    #mypost-tr p{
   		margin: 0px;
    }
    
    
</style>
</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>
		

	
	<main class="main" style="margin: auto;" >
        	<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        		<div class="container">
        			<h1 class="page-title">마이페이지<span>Shop</span></h1>
        		</div><!-- End .container -->
        	</div><!-- End .page-header -->
        	<br>

	<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  마이페이지 좌측 메뉴바  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
  
            <div class="page-content">
            	<div class="dashboard">
	                <div class="container">
	                	<div class="row">
	                		<aside class="col-lg-2" style="margin-left: -100px;">
	                			<ul class="nav nav-dashboard flex-column mb-3 mb-md-0" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-account-link" data-toggle="tab" href="#tab-account" 
                                            role="tab" aria-controls="tab-account" aria-selected="false">내정보관리</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-orders-link" data-toggle="tab" href="#tab-orders" 
                                        role="tab" aria-controls="tab-orders" aria-selected="false">주문내역</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-cart-link" data-toggle="tab" href="#tab-cart" 
                                            role="tab" aria-controls="tab-dashboard" aria-selected="false">장바구니</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-wishlist-link" data-toggle="tab" href="#tab-wishlist" 
                                        role="tab" aria-controls="tab-account" aria-selected="false">찜목록</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-myposts-link" data-toggle="tab" href="#tab-myboard" 
                                        role="tab" aria-controls="tab-account" aria-selected="false">내가 쓴 자유게시글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-myposts-link" data-toggle="tab" href="#tab-mytboard" 
                                        role="tab" aria-controls="tab-account" aria-selected="false">내가 쓴 중고게시글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-myfavoriteposts-link" data-toggle="tab" href="#tab-myfavoriteposts" 
                                        role="tab" aria-controls="tab-account" aria-selected="false">내가 관심 있는 글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-my-reply-review-link" data-toggle="tab" href="#tab-my-reply-review" 
                                        role="tab" aria-controls="tab-account" aria-selected="false">나의 리뷰, 댓글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-myqna-link" data-toggle="tab" href="#tab-myqna" 
                                        role="tab" aria-controls="tab-downloads" aria-selected="false">나의 문의내역</a>
                                    </li>
								    <li class="nav-item">
								        <a class="nav-link" id="tab-deleteaccount-link" data-toggle="tab" href="#tab-deleteaccount" 
                                        role="tab" aria-controls="tab-downloads" aria-selected="false">회원탈퇴</a>
								    </li>
								</ul>
	                		</aside><!-- End .col-lg-3 -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@제목별 컨텐츠@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->


                            <div class="col-md-8 col-lg-9">
                                <div class="tab-content">


<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  나의 정보 수정  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

                                    <div class="tab-pane fade" id="tab-account" role="tabpanel" aria-labelledby="tab-account-link" >
                                        <form action="update.me" accept-charset="UTF-8" enctype="multipart/form-data">
                                            <h4>내정보관리</h4>
                                            <hr>
                                            <div style="width: 550px; height: 280px; float: left;">
                                                <label>아이디</label>
                                                <input type="text" class="form-control" name="userId" style="width: 100%;" value="${ loginMember.userId }" readonly>

                                                <label>이름</label>
                                                <input type="text" class="form-control" name="userName" style="width: 100%;" value="${ loginMember.userName }"  required>

                                                <label>닉네임</label>
                                                <input type="text" class="form-control" name="nickName" style="width: 100%;" value="${ loginMember.nickName }" required>
                                                <small class="form-text" style="margin-bottom: 10px;">so1omon을 이용하실 때 표시되는 이름입니다.</small>

                                            </div>
                                            <div style="width: 260px; height: 188px; float: left; margin: 32px 0px 60px 0px;" align="center">
                                                <div style="width: 190px; height: 190px; margin-bottom: 10px; ">
                                                    <img src="${ loginMember.profile }"alt="" style="width: 100%; height: 100%;">
                                                    <input type="hidden" name="profile" value="${ loginMember.profile }">
                                                    <!-- 여기 사진은 나중에 파일 불러와서 넣을거임 -->
                                                </div>
                                               
                                                <div class="filebox">
                                                    <label for="ex_file" class="btn btn-outline-primary-2">사진변경</label>
                                                    <input type="file" id="ex_file" name="profile"> 
                                                </div>
                                            </div>
                                            
                                            <label>휴대폰 번호</label>
                                            <input type="text" class="form-control" name="phone" value="${ loginMember.phone }" required>
                                            
                                            <label>주소</label>
                                            <input type="text" class="form-control" name="address" value="${ loginMember.address }" required>

                                            <label>포인트</label>
                                            <input type="text" class="form-control" name="point" value="${ loginMember.point }" required readonly>

                                            <label>이메일 주소</label>
                                            <input type="email" class="form-control" name="email" value="${ loginMember.email }" required>

                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>변경완료</span>
                                            </button>

                                           
                                        </form>
											
											 <!-- 카카오 연동 여부에 따라 둘 중 하나 나올거임 -->
                                            <div style="float: right; margin-top:-35px;">
	                                            <button type="button" href="#changePwd-modal" data-toggle="modal" class="btn btn-outline-primary-2"  style="padding: 5px 5px 5px 5px; margin-right: 10px">
	                                                비밀번호 변경
	                                            </button>
	                                            
												<c:choose>
													<c:when test="${ loginMember.userToken != null }">
		                                                <button type="button" class="btn btn-outline-primary-2" style="float: right; padding: 5px 5px 5px 5px;" disabled>
		                                                    <img style="height: 21px; float: left;" src="https://i0.wp.com/forhappywomen.com/wp-content/uploads/2018/11/%EC%82%B0%EB%B6%80%EC%9D%B8%EA%B3%BC-%ED%8F%AC%ED%95%B4%ED%94%BC%EC%9A%B0%EB%A8%BC-%EB%AC%B8%EC%9D%98-%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%8C%EB%9F%AC%EC%8A%A4%EC%B9%9C%EA%B5%AC-%EB%B2%84%ED%8A%BC.png?resize=586%2C586&ssl=1" alt="">
		                                                    <span>&nbsp; 카카오 연동 완료</span>
		                                                </button>
													</c:when>
													
													<c:otherwise>
	                                                <button type="button" class="btn btn-outline-primary-2" style="float: right; padding: 5px 5px 5px 5px;">
	                                                    <img style="height: 21px; float: left;" src="https://i0.wp.com/forhappywomen.com/wp-content/uploads/2018/11/%EC%82%B0%EB%B6%80%EC%9D%B8%EA%B3%BC-%ED%8F%AC%ED%95%B4%ED%94%BC%EC%9A%B0%EB%A8%BC-%EB%AC%B8%EC%9D%98-%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%8C%EB%9F%AC%EC%8A%A4%EC%B9%9C%EA%B5%AC-%EB%B2%84%ED%8A%BC.png?resize=586%2C586&ssl=1" alt="">
	                                                    <span>&nbsp; 카카오 연동</span>
	                                                </button>
													</c:otherwise>
												</c:choose>
                                            </div>
                                    </div>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  주문내역  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

								    <div class="tab-pane fade" id="tab-orders" role="tabpanel" aria-labelledby="tab-orders-link">
								    	<div class="page-content">
                                            <h4>주문내역</h4>
                                            <hr style="margin-top: 10px; margin-bottom:10px;">
                                            <div class="container">
                                                <table class="table table-wishlist table-mobile" style="text-align: center;">
                                                    <thead>
                                                        <tr>
                                                            <th>목록 번호</th>
                                                            <th>제품명</th>
                                                            <th>
                                                                주문번호/<br>송장번호
                                                            </th>
                                                            <th>구매가격</th>
                                                            <th>구매날짜</th>
                                                            <th>기타</th>
                                                        </tr>
                                                    </thead>
                            
                                                    <tbody>
                                                    <c:forEach items="${ mpOrderList }" var="mo" varStatus="status">
                                                        <tr>
                                                            <td >${ fn:length(mpOrderList) - status.index }</td>
                                                            <td class="product-col">
                                                                    <div class="product">
                                                                        <figure class="product-media">
                                                                        </figure>
                                                                        
                                                                        <h3 class="product-title">
                                                                            <a href="#">
                                                                                ${ mo.productName }, ${ mo.optionName }, ${ mo.volume }개
                                                                            </a>

                                                                        </h3><!-- End .product-title -->
                                                                    </div><!-- End .product -->
                                                                
                                                            </td>
                                                            <td>${ mo.orderNo }/<br><a href="#" id="deliveryNo" style="border: none; cursor: pointer;">1234512345</a></td>
                                                            <td class="price-col">${ mo.price * mo.volume }원</td>
                                                            <td class="stock-col"><span class="in-stock">${ mo.orderDate }</span></td>
                                                            <td>
																만약 status가 뭐면 뭐
															</td>
                                                        </tr>
                                                    
                                                    </c:forEach>
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
                                                <div id="pagingArea">
									                <ul class="pagination">
									
															<c:choose>
																<c:when test="${ pi.currentPage eq 1 }">                		
										                    		<li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
										                    	</c:when>
										                    	<c:otherwise>
										                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ pi.currentPage - 1 }&mno=${loginMember.userNo}">Previous</a></li>
										                    	</c:otherwise>
									                    	</c:choose>
									                    	
									                    	<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
									                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ p }&mno=${loginMember.userNo}">${ p }</a></li>
										                    </c:forEach>
										                    <c:choose>
										                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
											                    	<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
											                    </c:when>
											                    <c:otherwise>
											                    	<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ pi.currentPage + 1 }&mno=${loginMember.userNo}">Next</a></li>
											                    </c:otherwise>
										                    </c:choose>
									                </ul>
									            </div>
                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
								    </div><!-- .End .tab-pane -->

								    <div class="tab-pane fade" id="tab-address" role="tabpanel" aria-labelledby="tab-address-link">
								    	<p>The following addresses will be used on the checkout page by default.</p>

								    	<div class="row">
								    		<div class="col-lg-6">
								    			<div class="card card-dashboard">
								    				<div class="card-body">
								    					<h3 class="card-title">Billing Address</h3><!-- End .card-title -->

														<p>User Name<br>
														User Company<br>
														John str<br>
														New York, NY 10001<br>
														1-234-987-6543<br>
														yourmail@mail.com<br>
														<a href="#">Edit <i class="icon-edit"></i></a></p>
								    				</div><!-- End .card-body -->
								    			</div><!-- End .card-dashboard -->
								    		</div><!-- End .col-lg-6 -->

								    		<div class="col-lg-6">
								    			<div class="card card-dashboard">
								    				<div class="card-body">
								    					<h3 class="card-title">Shipping Address</h3><!-- End .card-title -->

														<p>You have not set up this type of address yet.<br>
														<a href="#">Edit <i class="icon-edit"></i></a></p>
								    				</div><!-- End .card-body -->
								    			</div><!-- End .card-dashboard -->
								    		</div><!-- End .col-lg-6 -->
								    	</div><!-- End .row -->
								    </div><!-- .End .tab-pane -->
                                    <script>
                                        // div 취득
                                        const deliveryNo = document.getElementById("deliveryNo");
                                    
                                        // button 클릭 이벤트
                                        document.getElementById("deliveryNo").onclick = () => {
                                          // div의 내용(textContent)을 복사한다.
                                          window.navigator.clipboard.writeText(deliveryNo.textContent).then(() => {
                                            // 복사가 완료되면 호출된다.
                                            alert("복사완료");
                                          });
                                        };
                                      </script>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@장바구니@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                                    
                                    <div class="tab-pane fade" id="tab-cart" role="tabpanel" aria-labelledby="tab-dashboard-linkd">
                                        <h4>장바구니</h4>
                                        <hr style="margin-top: 10px;">
                                        <div class="page-content">
                                            <div class="cart">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-lg-9">
                                                            <table class="table table-cart table-mobile" style="text-align: center;">
                                                                <thead>
                                                                    <tr>
                                                                        <th style="padding-bottom: 10px; width: 60px;">
                                                                            <input type='checkbox'
                                                                            name='product-cart' 
                                                                            value='selectall'
                                                                            onclick='selectAll(this)'/>
                                                                            <!-- 스크립트 맨 아래 있음-->
                                                                        </th>
                                                                        <th>상품명</th>
                                                                        <th>가격</th>
                                                                        <th>수량</th>
                                                                        <th>총 가격</th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>

                                                                <tbody>
                                                                    <tr>
                                                                        <th style="padding-top: 50px;">
                                                                            <input type='checkbox'
                                                                            name='product-cart' 
                                                                            value=''/> 
                                                                        </th>
                                                                        <td class="product-col">
                                                                            <div class="product">
                                                                                <figure class="product-media">
                                                                                    <a href="#">
                                                                                        <img src="assets/images/products/table/product-1.jpg" alt="Product image">
                                                                                    </a>
                                                                                </figure>

                                                                                <h3 class="product-title">
                                                                                    <a href="#">Beige knitted elastic runner shoes</a>
                                                                                </h3><!-- End .product-title -->
                                                                            </div><!-- End .product -->
                                                                        </td>
                                                                        <td class="price-col">$84.00</td>
                                                                        <td class="quantity-col" align="center">
                                                                            <div class="cart-product-quantity">
                                                                                <input type="number" class="form-control" value="1" min="1" max="10" step="1" data-decimals="0" name="" required>
                                                                            </div><!-- End .cart-product-quantity -->
                                                                        </td>
                                                                        <td class="total-col">$84.00</td>
                                                                        <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th style="padding-top: 50px;">
                                                                            <input type='checkbox'
                                                                            name='product-cart' 
                                                                            value=''/> 
                                                                        </th>
                                                                        <td class="product-col">
                                                                            <div class="product">
                                                                                <figure class="product-media">
                                                                                    <a href="#">
                                                                                        <img src="assets/images/products/table/product-2.jpg" alt="Product image">
                                                                                    </a>
                                                                                </figure>

                                                                                <h3 class="product-title">
                                                                                    <a href="#">Blue utility pinafore denim dress</a>
                                                                                </h3><!-- End .product-title -->
                                                                            </div><!-- End .product -->
                                                                        </td>
                                                                        <td class="price-col">$76.00</td>
                                                                        <td class="quantity-col" align="center">
                                                                            <div class="cart-product-quantity">
                                                                                <input type="number" class="form-control" value="1" min="1" max="10" step="1" data-decimals="0" required>
                                                                            </div><!-- End .cart-product-quantity -->                                 
                                                                        </td>
                                                                        <td class="total-col">$76.00</td>
                                                                        <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table><!-- End .table table-wishlist -->

                                                        </div><!-- End .col-lg-9 -->
                                                        <aside class="col-lg-3">
                                                            <div class="summary summary-cart">
                                                                <h3 class="summary-title">장바구니 합계</h3><!-- End .summary-title -->

                                                                <table class="table table-summary">
                                                                    <tbody>
                                                                        <tr class="summary-subtotal">
                                                                            <td>소계:</td>
                                                                            <td>$160.00</td>
                                                                        </tr><!-- End .summary-subtotal -->
                                                                        <tr class="summary-shipping">
                                                                            <td>배송:</td>
                                                                            <td>&nbsp;</td>
                                                                        </tr>

                                                                        <tr class="summary-shipping-row">
                                                                            <td>
                                                                                <div class="custom-control custom-radio">
                                                                                    <input type="radio" id="free-shipping" name="shipping" class="custom-control-input">
                                                                                    <label class="custom-control-label" for="free-shipping">묶음배송:</label>
                                                                                </div><!-- End .custom-control -->
                                                                            </td>
                                                                            <td>$0.00</td>
                                                                        </tr><!-- End .summary-shipping-row -->

                                                                        <tr class="summary-shipping-row">
                                                                            <td>
                                                                                <div class="custom-control custom-radio">
                                                                                    <input type="radio" id="standart-shipping" name="shipping" class="custom-control-input">
                                                                                    <label class="custom-control-label" for="standart-shipping">일반배송:</label>
                                                                                </div><!-- End .custom-control -->
                                                                            </td>
                                                                            <td>$10.00</td>
                                                                        </tr><!-- End .summary-shipping-row -->

                                                                        <tr class="summary-total">
                                                                            <td>총 가격:</td>
                                                                            <td>$160.00</td>
                                                                        </tr><!-- End .summary-total -->
                                                                    </tbody>
                                                                </table><!-- End .table table-summary -->

                                                                <a href="checkout.html" class="btn btn-outline-primary-2 btn-order btn-block">결재하기</a>
                                                            </div><!-- End .summary -->

                                                        </aside><!-- End .col-lg-3 -->
                                                    </div><!-- End .row -->
                                                </div><!-- End .container -->
                                            </div><!-- End .cart -->
                                        </div><!-- End .page-content -->
                                    </div><!-- .End .tab-pane -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  찜목록  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

								    <div class="tab-pane fade" id="tab-wishlist" role="tabpanel" aria-labelledby="tab-account-link">
								    	<h4>찜목록</h4>
                                        <hr style="margin-top: 10px;">
                                        <div class="page-content">
                                            <div class="container">
                                                <table class="table table-wishlist table-mobile" style="text-align: center;">
                                                    <thead>
                                                        <tr>
                                                            <th>찜목록 번호</th>
                                                            <th>제품명</th>
                                                            <th>가격</th>
                                                            <th>재고 현황</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                            
                                                    <tbody>
                                                        <tr>
                                                            <td>3</td>
                                                            <td class="product-col">
                                                                <div class="product">
                                                                    <figure class="product-media">
                                                                        <a href="#">
                                                                            <img src="assets/images/products/table/product-1.jpg" alt="Product image">
                                                                        </a>
                                                                    </figure>
                            
                                                                    <h3 class="product-title">
                                                                        <a href="#">Beige knitted elastic runner shoes</a>
                                                                    </h3><!-- End .product-title -->
                                                                </div><!-- End .product -->
                                                            </td>
                                                            <td class="price-col">$84.00</td>
                                                            <td class="stock-col"><span class="in-stock">재고있음</span></td>
                                                            <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td class="product-col">
                                                                <div class="product">
                                                                    <figure class="product-media">
                                                                        <a href="#">
                                                                            <img src="assets/images/products/table/product-2.jpg" alt="Product image">
                                                                        </a>
                                                                    </figure>
                            
                                                                    <h3 class="product-title">
                                                                        <a href="#">Blue utility pinafore denim dress</a>
                                                                    </h3><!-- End .product-title -->
                                                                </div><!-- End .product -->
                                                            </td>
                                                            <td class="price-col">$76.00</td>
                                                            <td class="stock-col"><span class="in-stock">재고있음</span></td>
                                                            <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
                                                        </tr>
                                                        <tr>
                                                            <td>1</td>
                                                            <td class="product-col">
                                                                <div class="product">
                                                                    <figure class="product-media">
                                                                        <a href="#">
                                                                            <img src="assets/images/products/table/product-3.jpg" alt="Product image">
                                                                        </a>
                                                                    </figure>
                            
                                                                    <h3 class="product-title">
                                                                        <a href="#">Orange saddle lock front chain cross body bag</a>
                                                                    </h3><!-- End .product-title -->
                                                                </div><!-- End .product -->
                                                            </td>
                                                            <td class="price-col">$52.00</td>
                                                            <td class="stock-col"><span class="out-of-stock">품절</span></td>
                                                            <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
                                                        </tr>
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
								    </div><!-- .End .tab-pane -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@나의 자유게시글@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

                                    <div class="tab-pane fade" id="tab-myboard" role="tabpanel" aria-labelledby="tab-orders-link">
								    	<h4>나의 자유게시글</h4>
                                        <hr style="margin-top: 10px;">
                                        <div class="page-content">
                                            <div class="container">
                                                <table class="table table-wishlist table-mobile" style="text-align: center;">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:100px;">게시글 번호</th>
                                                            <th>게시글 제목</th>
                                                            <th>작성날짜</th>
                                                            <th>조회수</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                            
                                                    <tbody>
                                                    	<c:forEach var="mb" items="${ mpBoard }" varStatus="status">
	                                                        <tr style="height:50px; padding:0px;" id="mypost-tr">
	                                                            <td>${ mb.boardNo }</td>
	                                                            <td class="product-col">
	                                                                <a href="#">
	                                                                    <div class="product">
	                                                                        <h3 class="product-title">
	                                                                            <p>
	                                                                            	${ mb.boardTitle }
		                                                                            <c:if test="${ mb.fileNo>0 }">
		                                                                            	👀                              
		                                                                            </c:if>
	                                                                            </p>
	                                                                        </h3><!-- End .product-title -->
	                                                                    </div><!-- End .product -->
	                                                                </a>
	                                                            </td>
	                                                            <td class="price-col">${ mb.createDate }</td>
	                                                            <td class="stock-col"><span class="in-stock">${ mb.count }</span></td>
	                                                            <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
	                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
								    </div><!-- .End .tab-pane -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@나의 중고게시글@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

                                    <div class="tab-pane fade" id="tab-mytboard" role="tabpanel" aria-labelledby="tab-orders-link">
                                        <h4>나의 중고게시글</h4>
                                        <hr style="margin-top: 10px;">
                                        <div class="page-content">
                                            <div class="container">
                                                <table class="table table-wishlist table-mobile" style="text-align: center;">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:100px;">게시글 번호</th>
                                                            <th>게시글 제목</th>
                                                            <th>작성날짜</th>
                                                            <th>조회수</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach var="mt" items="${ mpTBoard }" >
                                                            <tr>
                                                                <td >${ mt.tboardNo }</td>
                                                                <td class="product-col">
                                                                    <a href="#" style="cursor: pointer; width: 150px;">
                                                                        <div class="product">
                                                                                <img src="${mt.thumbnail}" alt="Product image" style="width: 120px; height: 80px; margin-right: 30px;">
                                                                            <h3 class="product-title">
                                                                                ${ mt.tboardTitle }
                                                                            </h3><!-- End .product-title -->
                                                                        </div><!-- End .product -->
                                                                    </a>
                                                                </td>
                                                                <td class="price-col">${ mt.createDate }</td>
                                                                <td class="stock-col"><span class="in-stock">${ mt.count }</span></td>
                                                                <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
                                    </div><!-- .End .tab-pane -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@내가 관심있는 게시글@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

                                    <div class="tab-pane fade" id="tab-myfavoriteposts" role="tabpanel" aria-labelledby="tab-orders-link">
								    	<h4>내가 관심있는 게시글</h4>
                                        <hr style="margin-top: 10px;">
                                        <div class="page-content">
                                            <div class="container">
                                                <table class="table table-wishlist table-mobile" style="text-align: center;">
                                                    <thead>
	                                                        <tr>
	                                                            <th>게시글 번호</th>
	                                                            <th>게시글 제목</th>
	                                                            <th>작성자</th>
	                                                            <th>조회수</th>
	                                                            <th></th>
	                                                        </tr>
                                                    </thead>
                            
                                                    <tbody>
	                                                    <c:forEach var="ml" items="${ mpLikeList }" varStatus="status">
	                                                        <tr id="mypost-tr">
	                                                            <td >${ fn:length(mpLikeList) - status.index }</td>
	                                                            <td class="product-col">
                                                                    <div class="product">
                                                                        <h3 class="product-title">
                                                                            <a href="#">${ ml.boardTitle }</a>
                                                                        </h3><!-- End .product-title -->
                                                                    </div><!-- End .product -->
	                                                            </td>
	                                                            <td class="price-col">${ ml.boardWriter }</td>
	                                                            <td class="stock-col"><span class="in-stock">${ ml.count }</span></td>
	                                                            <td><button class="btn btn-outline-primary btn-rounded">좋아요 취소</button></td>
                                                        	</tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
								    </div><!-- .End .tab-pane -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  나의 리뷰,댓글  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

                                    <div class="tab-pane fade" id="tab-my-reply-review" role="tabpanel" aria-labelledby="tab-account-link">
                                        <h4>나의 리뷰,댓글</h4>
                                        <hr style="margin-top: 10px;">
                                        <div class="page-content">
                                            <div class="container">
                                            <div class="col-md-6">
	            			<ul class="nav nav-pills" id="tabs-5" role="tablist" style="width:1188px;">
							    <li class="nav-item">
							        <a class="nav-link active" id="tab-17-tab" data-toggle="tab" href="#tab-17" role="tab" aria-controls="tab-17" aria-selected="true">내가 쓴 댓글</a>
							    </li>
							    <li class="nav-item">
							        <a class="nav-link" id="tab-18-tab" data-toggle="tab" href="#tab-18" role="tab" aria-controls="tab-18" aria-selected="false">내가 쓴 리뷰</a>
							    </li>

							</ul>
							<div class="tab-content" id="tab-content-5" style="width:1188px;">
							    <div class="tab-pane fade show active" id="tab-17" role="tabpanel" aria-labelledby="tab-17-tab" style="width:100%;">
							    	<table class="table table-wishlist table-mobile" style="text-align: center; width:100%;">
                                        <thead>
                                            <tr>
                                                <th>글개수</th>
                                                <th style="width:30%">게시글 제목</th>
                                                <th style="width:35%">댓글 내용</th>
                                                <th>작성일</th>
                                                <th></th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                        	<c:forEach items="${mpReply}" var="mr" varStatus="status">
	                                            <tr id="mypost-tr">
	                                                <td style=" width: 100px;">${ fn:length(mpReply) - status.index }</td>
	                                                <td>${ mr.boardTitle }</td>
	                                                <td class="price-col">${ mr.replyContent }</td>
	                                                <td class="stock-col"><span class="in-stock">${ mr.createDate }</span></td>
	                                                <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
	                                        	</tr>
                                        	</c:forEach>
                                    	</tbody>
                                	</table><!-- End .table table-wishlist -->
							    </div><!-- .End .tab-pane -->
							    <div class="tab-pane fade" id="tab-18" role="tabpanel" aria-labelledby="tab-18-tab">
							    	             <table class="table table-wishlist table-mobile" style="text-align: center;">
                                                    <thead>
                                                        <tr>
                                                            <th style="width:100px;">글개수</th>
                                                            <th>제품 이름</th>
                                                            <th>리뷰 내용</th>
                                                            <th>작성일</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach items="${mpReView}" var="mr" varStatus="status">
				                                            <tr id="mypost-tr">
				                                                <td style=" width: 100px;">${ fn:length(mpReView) - status.index }</td>
				                                                <td>${ mr.productName }, ${ mr.optionName }</td>
				                                                <td class="price-col">${ mr.reviewContent }</td>
				                                                <td class="stock-col"><span class="in-stock">${ mr.createDate }</span></td>
				                                                <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
				                                        	</tr>
			                                        	</c:forEach>
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
							    </div><!-- .End .tab-pane -->
							</div><!-- End .tab-content -->
                		</div><!-- End .col-md-6 -->

                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
                                    </div><!-- .End .tab-pane -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@나의 문의내역@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

                                    <div class="tab-pane fade" id="tab-myqna" role="tabpanel" aria-labelledby="tab-orders-link">
								    	<h4>나의 문의내역</h4>
                                        <hr style="margin-top: 10px;">
                                        <div class="page-content">
                                            <div class="container">
                                                <table class="table table-wishlist table-mobile" style="text-align: center;">
                                                    <thead>
                                                        <tr>
                                                            <th>게시글 번호</th>
                                                            <th>게시글 제목</th>
                                                            <th>작성날짜</th>
                                                            <th>답변여부</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                            
                                                    <tbody>
                                                    	<c:forEach var="mq" items="${ mpQList }" varStatus="">
	                                                        <tr id="mypost-tr">
	                                                            <td style=" width: 100px;">${ fn:length(mpQList) - status.index }</td>
	                                                            <td class="product-col">
	                                                                    <div class="product">
	                                                                        <h3 class="product-title">
	                                                                            <a href="#">${ mq.qtitle }</a>
	                                                                        </h3><!-- End .product-title -->
	                                                                    </div><!-- End .product -->
	                                                            </td>
	                                                            <td class="price-col">${ mq.qdate }</td>
	                                                            <td class="stock-col"><span class="in-stock">${ mq.qstatus }</span></td>
	                                                            <td class="remove-col"><button class="btn-remove"><i class="icon-close"></i></button></td>
	                                                        </tr>
                                                        </c:forEach>
                                                        
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
								    </div><!-- .End .tab-pane -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  회원탈퇴  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

                                    <div class="tab-pane fade" id="tab-deleteaccount" role="tabpanel" aria-labelledby="tab-account-link">
                                        <form action="MyPageDelete.me">
                                            <h4>회원탈퇴</h4>
                                            <hr style="margin-top: 10px;">
                                            <label>비밀번호 입력</label>
                                            <input type="password" class="form-control">

                                            <button type="submit" class="btn btn-outline-primary-2" onclick="deleteaccount();">
                                                <span>탈퇴하기</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>
                                        </form>
                                    </div>
                                    <script>
                                        function deleteaccount(){
                                            confirm("정말 탈퇴하시겠습니까?")
                                            if(confirmFlag){
                                                // 확인버튼 클릭
                                            }else{
                                                // 취소버튼 클릭
                                                
                                            }
                                        }
                                    </script>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  탭 안의 컨텐츠 끝  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

								</div>
	                		</div><!-- End .col-lg-9 -->
	                	</div><!-- End .row -->
	                </div><!-- End .container -->
                </div><!-- End .dashboard -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->


<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  비밀번호 변경 모달  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

        <div class="modal fade" id="changePwd-modal" tabindex="-1" role="dialog" aria-hidden="true" >
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        
                        <div class="form-box">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"><i class="icon-close"></i></span>
                            </button>
                            <div class="form-tab">
                                <ul class="nav nav-pills nav-fill" role="tablist">
                                    <h3 >비밀번호 변경</h3>
                                </ul>
                                <div class="tab-content" id="tab-content-5">
                                    <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                        <form action="updatePwd.me" method="post">
                                        <input type="hidden" name="userNo" value="${ loginMember.userNo }"/>
                                        <input type="hidden" name="userPwd" value="${ loginMember.userPwd }"/>
                                            
                                            <label>현재 비밀번호</label>
                                            <input type="password" class="form-control" name="currentPwd" style="margin-bottom: 0px;" placeholder="현재 비밀번호">

                                            <label>새 비밀번호</label>
                                            <input type="password" class="form-control" id="newPwd" name="newPwd" style="margin-bottom: 0px;" placeholder="변경할 비밀번호 입력(8~20자/특-대문자 1개이상)">
                                            <label id="validPwdText" style="font-size:0.8em"><strong id="validPwdText-2"></strong></label><br>

                                            <label>비밀번호 확인</label>
                                            <input type="password" class="form-control" id="pwdCheck"style="margin-bottom: 0px;" placeholder="변경할 비밀번호 재입력">
                                            <label id="pwdCheckText" style="font-size:0.8em"><strong id="pwdCheckText-2"></strong></label><br>

                                            <div class="form-footer">
                                                <button type="submit" class="btn btn-outline-primary-2" id="updatePwd" disabled>
                                                    <span>변경하기</span>
                                                    <i class="icon-long-arrow-right"></i>
                                                </button>
                                            </div><!-- End .form-footer -->
                                        </form>
                                        
                                    </div><!-- .End .tab-pane -->
                                    
                                </div><!-- End .tab-content -->
                            </div><!-- End .form-tab -->
                        </div><!-- End .form-box -->
                    </div><!-- End .modal-body -->
                </div><!-- End .modal-content -->
            </div><!-- End .modal-dialog -->
        </div><!-- End .modal -->
        
        <!-- 비밀번호 변경 -->
        <script>

         $(function() {
             function updateButtonState() {
                 var isValidPassword = $("#validPwdText-2").text() === "비밀번호 사용가능";
                 var isPasswordMatching = $("#pwdCheckText-2").text() === "비밀번호 일치";

                 if (isValidPassword && isPasswordMatching) {
                     $("#updatePwd").prop("disabled", false);
                 } else {
                     $("#updatePwd").prop("disabled", true);
                 }
             }

             $("#newPwd").keyup(function() {
                 var password = $("#newPwd").val();

                 var specialCharPattern = /[^a-zA-Z0-9]/g;
                 var uppercasePattern = /[A-Z]/g;

                 if (password.length >= 8 && password.length <= 20 
                     && (password.match(specialCharPattern) || []).length >= 1 
                     && (password.match(uppercasePattern) || []).length >= 1) {
                     $("#validPwdText").show();
                     $("#validPwdText-2").text("비밀번호 사용가능");
                     $("#validPwdText-2").css("color", "green");
                 } else {
                     $("#validPwdText").show();
                     $("#validPwdText-2").css("color", "red");
                     $("#validPwdText-2").text("비밀번호 사용불가");
                 }
                 updateButtonState();
             });

             $("#pwdCheck").keyup(function() {
                 if ($("#newPwd").val() === $("#pwdCheck").val() && $("#pwdCheck").val().length >= 8) {
                     $("#pwdCheckText").css("color", "green");
                     $("#pwdCheckText-2").text("비밀번호 일치");
                     $("#pwdCheckText").show();
                 } else if ($("#pwdCheck").val().length >= 8) {
                     $("#pwdCheckText").css("color", "red");
                     $("#pwdCheckText-2").text("비밀번호 불일치");
                     $("#pwdCheckText").show();
                 } else {
                     $("#pwdCheckText-2").text("");
                 }
                 updateButtonState();
             });
         });


     </script>
     <!--  
         <c:if test="${ not empty gubunOrders }">
			<script>
				$(()=>{
		           
		           		$("#tab-account-link").removeClass("active");
		           		$("#tab-account").removeClass("show");
		           		$("#tab-account").removeClass("active");
		           		$("#tab-orders-link").addClass("active");
		           		$("#tab-orders").addClass("show");
		           		$("#tab-orders").addClass("active");
		         
				})
			</script>
		</c:if>
		-->
		
		<!-- 장바구니 selectAll -->
	    <script>
	        function selectAll(selectAll)  {
	            const checkboxes 
	                = document.getElementsByName('product-cart');
	            
	            checkboxes.forEach((checkbox) => {
	                checkbox.checked = selectAll.checked;
	            })
	        }
	    </script>
        
        <jsp:include page="../common/footer.jsp"></jsp:include>
        
		
        
</body>
</html>