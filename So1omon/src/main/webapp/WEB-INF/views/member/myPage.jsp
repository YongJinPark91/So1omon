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
    
    
    #tboardDetailId:hover,
	#tboardDetailId:hover * {
	    cursor: pointer;
	    background-color: rgb(248, 248, 248);
	}
	
    #mypost-tr:hover,
	#mypost-tr:hover * {
	    cursor: pointer;
	    background-color: rgb(248, 248, 248);
	}
	
	#cutContent{
		float:left;
		width:200px;
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
		word-break: break-all;
	}
</style>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
                                        role="tab" aria-controls="tab-wishlist" aria-selected="false">찜목록</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-myboard-link" data-toggle="tab" href="#tab-myboard" 
                                        role="tab" aria-controls="tab-myposts" aria-selected="false">내가 쓴 자유게시글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-mytboard-link" data-toggle="tab" href="#tab-mytboard" 
                                        role="tab" aria-controls="tab-myposts" aria-selected="false">내가 쓴 중고게시글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-myfavoriteposts-link" data-toggle="tab" href="#tab-myfavoriteposts" 
                                        role="tab" aria-controls="tab-myfavoriteposts" aria-selected="false">내가 관심 있는 글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-my-reply-review-link" data-toggle="tab" href="#tab-my-reply-review" 
                                        role="tab" aria-controls="tab-my-reply-review" aria-selected="false">나의 리뷰, 댓글</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-myqna-link" data-toggle="tab" href="#tab-myqna" 
                                        role="tab" aria-controls="tab-myqna" aria-selected="false">나의 문의내역</a>
                                    </li>
								    <li class="nav-item">
								        <a class="nav-link" id="tab-deleteaccount-link" data-toggle="tab" href="#tab-deleteaccount" 
                                        role="tab" aria-controls="tab-deleteaccount" aria-selected="false">회원탈퇴</a>
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
                                        <form action="update.me" method="post" enctype="multipart/form-data">
                                            <h4>내정보관리</h4>
                                            <hr>
                                            <div style="width: 550px; height: 280px; float: left;">
                                            	<input type="hidden" name="userNo" value="${ loginMember.userNo }"/>
                                            	<input type="hidden" name="userPwd" value="${ loginMember.userPwd }"/>
                                                <label>아이디</label>
                                                <input type="text" class="form-control" id="userId" name="userId" style="width: 100%;" value="${ loginMember.userId }" readonly>

                                                <label>이름</label>
                                                <input type="text" class="form-control" name="userName" style="width: 100%;" value="${ loginMember.userName }"  required>

                                                <label>닉네임</label>
                                                <input type="text" class="form-control" name="nickName" style="width: 100%;" value="${ loginMember.nickName }" required>
                                                <small class="form-text" style="margin-bottom: 10px;">so1omon을 이용하실 때 표시되는 이름입니다.</small>

                                            </div>
                                            <div style="width: 260px; height: 188px; float: left; margin: 32px 0px 60px 0px;" align="center">
                                                <div style="width: 190px; height: 190px; margin-bottom: 10px; ">
													<c:choose>
													    <c:when test="${empty loginMember.profile}">
													        <!-- 이미지를 표시할 기본 이미지 또는 텍스트 -->
													        <img src="http://k.kakaocdn.net/dn/dpk9l1/btqmGhA2lKL/Oz0wDuJn1YV2DIn92f6DVK/img_640x640.jpg" style="width: 100%; height: 100%;">
													    </c:when>
													    <c:otherwise>
													        <!-- 프로필 이미지가 있을 때 이미지를 표시 -->
													        <img src="${loginMember.profile}" alt="" style="width: 100%; height: 100%;">
													        <input type="hidden" name="profile" value="${loginMember.profile}">
													    </c:otherwise>
													</c:choose>
												
                                                    
                                                    <!-- 여기 사진은 나중에 파일 불러와서 넣을거임 -->
                                                </div>
                                               
                                                <div class="filebox">
                                                    <label for="ex_file" name="labelValue" class="btn btn-outline-primary-2">사진변경</label>
                                                    <input type="file" id="ex_file" name="reupfile"> 
                                                </div>
                                            </div>
                                            
                                            <label>휴대폰 번호</label>
                                            <input type="text" class="form-control" name="phone" value="${ loginMember.phone }" required>
                                            
                                            <label>주소</label><br>
                                            
	                                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
                                            <input type="text" class="form-control col-sm-6" id="sample6_postcode"  placeholder="우편번호" readonly><br>
	                                        <input type="text" class="form-control" name="address"id="sample6_address" placeholder="기본 주소를 입력해 주세요" value="${ loginMember.address }" ><br>
	                						<input type="text" class="form-control" name="address" id="sample6_detailAddress" placeholder="나머지 주소를 입력해 주세요"><br>
	                						<input type="text" class="form-control" name="address" id="sample6_extraAddress" placeholder="참고항목" readonly><br>
											
		
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
	                                                	<a style="border: 0" href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=788a3f81192118c87ba75b7e62d74ec0&redirect_uri=http://localhost:8888/so1omon/kakaoLogin">
		                                                    <img style="height: 21px; float: left;" src="https://i0.wp.com/forhappywomen.com/wp-content/uploads/2018/11/%EC%82%B0%EB%B6%80%EC%9D%B8%EA%B3%BC-%ED%8F%AC%ED%95%B4%ED%94%BC%EC%9A%B0%EB%A8%BC-%EB%AC%B8%EC%9D%98-%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%94%8C%EB%9F%AC%EC%8A%A4%EC%B9%9C%EA%B5%AC-%EB%B2%84%ED%8A%BC.png?resize=586%2C586&ssl=1" alt="">
		                                                    <span>&nbsp; 카카오 연동</span>
	                                                	</a>
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
                                                <table class="table table-wishlist table-mobile" style="text-align: center;" id="order-list">
                                                    <thead>
                                                        <tr>
                                                            <th>목록 번호</th>
                                                            <th>제품명</th>
                                                            <th>
                                                                주문번호<br>송장번호
                                                            </th>
                                                            <th>구매가격</th>
                                                            <th>구매날짜</th>
                                                        </tr>
                                                    </thead>
                            
                                                    <tbody>
                                                    <c:forEach items="${ mpOrderList }" var="mo" varStatus="status">
                                                        <tr id="mypost-tr">
                                                            <td >${ fn:length(mpOrderList) - status.index }</td>
                                                            <td class="product-col">
                                                                    <div class="product">
                                                                        
                                                                        <img src="${ mo.thumbnail }" style="width:150px; height:150px; padding:10px"/>
                                                                      
                                                                        
                                                                        <h3 class="product-title">
                                                                            <a class="orderInfo">${ mo.productName }, ${ mo.optionName }, ${ mo.volume }개</a>
                                                                        </h3><!-- End .product-title -->
                                                                    </div><!-- End .product -->
                                                                
                                                            </td>
                                                            <td class="orderNo"><label class="test">${ mo.orderNo }</label><br style="border-bottom: -100px"><a href="#" id="deliveryNo" style="border: none; cursor: pointer;">${ mo.tracking }</a></td>
                                                            <td class="price-col">${ mo.totalPrice }원</td>
                                                            <td class="stock-col">
                                                            	<span class="in-stock">${ mo.orderDate }</span>
                                                            	<br>
													            <c:choose>
													                <c:when test="${reviewChecker[status.index] == 0}">
													                    <a class="writeReview" data-toggle="modal" href="#review-modal">리뷰작성</a>
													                </c:when>
													                <c:otherwise>
													                    <a class="writeReview">리뷰작성완료</a>
													                </c:otherwise>
													            </c:choose>
                                                            	<input type="hidden" value="${mo.productNo }">
                                                           	</td>
                                                        </tr>
                                                    
                                                    </c:forEach>
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
                                                <div id="pagingArea">
									                <ul class="pagination">
									
															<c:choose>
																<c:when test="${ opi.currentPage eq 1 }">                		
										                    		<li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
										                    	</c:when>
										                    	<c:otherwise>
										                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ opi.currentPage - 1 }&mno=${loginMember.userNo}&tabName=orders">Previous</a></li>
										                    	</c:otherwise>
									                    	</c:choose>
									                    	
									                    	<c:forEach var="p" begin="${ opi.startPage }" end="${ opi.endPage }">
									                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ p }&mno=${loginMember.userNo}&tabName=orders">${ p }</a></li>
										                    </c:forEach>
										                    <c:choose>
										                    	<c:when test="${ opi.currentPage eq opi.maxPage }">
											                    	<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
											                    </c:when>
											                    <c:otherwise>
											                    	<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ opi.currentPage + 1 }&mno=${loginMember.userNo}&tabName=orders">Next</a></li>
											                    </c:otherwise>
										                    </c:choose>
									                </ul>
									            </div>
                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
								    </div><!-- .End .tab-pane -->
								    
								    <script>
								    	$(document).on("click", "#order-list>tbody>tr>td>a[class=writeReview]", function(){
								    		let orderNo = $(this).parent().siblings("td[class=orderNo]").children("label").text();
											let productNo = $(this).siblings("input[type=hidden]").val();
											let orderInfo = $(this).parent().siblings("td[class=product-col]").find("a[class=orderInfo]").text().split(", ");
											let productName = orderInfo[0];
											let optionName = orderInfo[1];
											
											$("#reviewForm").children("input[name=orderNo]").val(orderNo);
											$("#reviewForm").children("input[name=productName]").val(productName);
											$("#reviewForm").children("input[name=optionName]").val(optionName);
											$("#reviewForm").children("input[name=productNo]").val(productNo);
											
								    	})
								    </script>
								    
								    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
								    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@리뷰작성모달@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
								    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
							        <div class="modal fade" id="review-modal" tabindex="-1" role="dialog" aria-hidden="true" >
							            <div class="modal-dialog modal-dialog-centered" role="document">
							                <div class="modal-content">
							                    <div class="modal-body">
							                        
							                        <div class="form-box">
							                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							                                <span aria-hidden="true"><i class="icon-close"></i></span>
							                            </button>
							                            <div class="form-tab">
							                                <ul class="nav nav-pills nav-fill" role="tablist">
							                                    <h3>리뷰작성</h3>
							                                </ul>
							                                <div class="tab-content" id="tab-content-5">
							                                    <div class="tab-pane fade show active" role="tabpanel" aria-labelledby="signin-tab">
							                                        <form action="insertReview.pd" id="reviewForm" method="post" enctype="multipart/form-data">
							                                        <input type="hidden" name="userNo" value="${ loginMember.userNo }"/>
							                                        <input type="hidden" name="userPwd" value="${ loginMember.userPwd }"/>
							                                            
							                                            <label>주문번호</label>
							                                            <input type="text" class="form-control" name="orderNo" style="margin-bottom: 0px;" value="123" readonly>
							
							                                            <label>제품명</label>
							                                            <input type="text" class="form-control" name="productName" style="margin-bottom: 0px;" value="~~~" readonly>
							
							                                            <label>옵션명</label>
							                                            <input type="text" class="form-control" name="optionName" style="margin-bottom: 0px;" value="~~~" readonly>
							                                            <input type="hidden" name="productNo" value="">
							                                            
							                                            <label>별점</label>
							                                            <div class="select-custom">
								                                            <select class="form-control" name="rating" required>
								                                            	<option value=5>⭐⭐⭐⭐⭐</option>
								                                            	<option value=4>⭐⭐⭐⭐</option>
								                                            	<option value=3>⭐⭐⭐</option>
								                                            	<option value=2>⭐⭐</option>
								                                            	<option value=1>⭐</option>
								                                            </select>
							                                            </div>
							                                            
							                                            <label>리뷰작성</label>
							                                            <br>
							                                            <textarea class="form-control" rows="10" cols="10" style="resize: none;" name="reviewContent" required></textarea>
							                                            
							                                            <label>사진선택</label>
							                                            <input type="file"><br>
							                                            <br>
							
							                                            <div class="form-footer">
							                                                <button type="submit" class="btn btn-outline-primary-2" id="updatePwd">
							                                                    <span>리뷰 등록</span>
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
								    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
								    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@리뷰작성모달@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
								    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

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
                                                            <table class="table table-cart table-mobile" id="mypageCart" style="text-align: center; margin-bottom:10px;">
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
                                                                        <th style="width:80px;">옵션<br>옵션가격</th>
                                                                        <th>상품가격</th>
                                                                        <th>수량</th>
                                                                        <th>총 가격</th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>

                                                                <tbody>
                                                                    
                                                                </tbody>
                                                            </table><!-- End .table table-wishlist -->
                                                            <button id="updateCart" class="btn btn-outline-primary btn-rounded" style="float:right;">장바구니 수정</button>
                                                            <!-- 
                                                            <script>
                                                            $(document).ready(function () {
                                                                // 각 select 요소에 대해 반복
                                                                $("select[name=option]").each(function (i, selectElement) {
                                                                    var select = $(selectElement);
                                                                    var optionName = select.siblings("input[type=hidden]").val(); // mc.optionName 값을 가져옵니다.

                                                                    // 각 option 엘리먼트에 대해 반복
                                                                    select.find("option").each(function (j, optionElement) {
                                                                        var option = $(optionElement);

                                                                        // option의 텍스트 값을 가져옴
                                                                        var optionText = option.text().split(" - ")[0].trim();
                                                                        // mc.tionName과 optionText가 일치하는 경우 선택
                                                                        if (optionText === optionName) {
                                                                            option.prop("selected", true);
                                                                        }
                                                                    });
                                                                });
                                                            });
															</script>
															 -->

                                                        </div><!-- End .col-lg-9 -->
                                                        <aside class="col-lg-3">
                                                            <div class="summary summary-cart">
                                                                <h3 class="summary-title">장바구니 합계</h3><!-- End .summary-title -->

                                                                <table class="table table-summary">
                                                                    <tbody>
                                                                    	<tr>
                                                                        	<td colspan="2" style="text-align:left;"><p id="cutContent">${ mpCart[0].productName }<p> 등 ${ mpCart.size() }건</td>
                                                                    	</tr>
                                                                        <tr class="summary-subtotal">
                                                                            <td>소계:</td>
	                                                                        <td id="totalPriceSum"></td> 	
                                                                        </tr><!-- End .summary-subtotal -->
                                                                        <tr class="summary-shipping" style="padding-bottom:0px;">
                                                                            <td style="padding-bottom:0px;">배송비:</td>
                                                                            <td class="del" style="padding-bottom:0px;"></td>
                                                                        </tr>
                                                                        <tr>
                                                                        	<td colspan='2' style="text-align:left; height:60px; font-size:12px;">* 제주지역은 100,000원 이하 구매시 배송비 10,000원 입니다.</td>
                                                                        </tr>
                                                                        <tr class="summary-total">
                                                                            <td>총 가격:</td>
                                                                            <td class="tTotal">원</td>
                                                                        </tr><!-- End .summary-total -->
                                                                    </tbody>
                                                                </table><!-- End .table table-summary -->
                                                                <!--
                                                                <script type="text/javascript">
                                                                	function totalPrice(){
                                                                		
                                                                		
                                                                	}
                                                                	$(function(){
                                                                		totalPrice();
                                                                	})
                                                                </script>
                                                                -->
                                                                <c:choose>
	                                                                <c:when test="${ not empty mpCart }">
		                                                                <button type="button" onclick="movePayment();" class="btn btn-outline-primary-2 btn-order btn-block">결제하기</button>
	                                                                </c:when>
	                                                                
	                                                                <c:otherwise>
		                                                                <button type="button" onclick="movePayment();" class="btn btn-outline-primary-2 btn-order btn-block" disabled="disabled">결제하기</button>
	                                                                </c:otherwise>
                                                                </c:choose>
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
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                            
                                                    <tbody>
                                                    	<c:forEach items="${ mpWish }" var="mw" varStatus="status">
                                                    	
                                                    	
                                                        <tr id="mypost-tr" class="productDetail">
                                                            <td>
                                                        		<input type="hidden" value="${ mw.productNo }" id="mwProductNo">
                                                            	${ fn:length(mpWish) - status.index }
                                                            </td>
                                                            <td class="product-col">
                                                                <div class="product">
                                                                    <figure class="product-media">
                                                                        <a href="#">
                                                                            <img src="${ mw.thumbnail }" alt="Product image">
                                                                        </a>
                                                                    </figure>
                            
                                                                    <h3 class="product-title">
                                                                        <a href="#">${ mw.productName }</a>
                                                                    </h3><!-- End .product-title -->
                                                                </div><!-- End .product -->
                                                            </td>
                                                            <td class="price-col">${ mw.price }</td>
                                                            <td class="remove-col deleteWish" id="deleteWish" data-product-no="${mw.productNo}"><button class="btn-remove" ><i class="icon-close"></i></button></td>
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table><!-- End .table table-wishlist -->
                                                
                                                 <div id="pagingArea">
									                <ul class="pagination">
									
															<c:choose>
																<c:when test="${ wpi.currentPage eq 1 }">                		
										                    		<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
										                    	</c:when>
										                    	<c:otherwise>
										                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ wpi.currentPage - 1 }&mno=${loginMember.userNo}&tabName=myWish">Previous</a></li>
										                    	</c:otherwise>
									                    	</c:choose>
									                    	
									                    	<c:forEach var="p2" begin="${ wpi.startPage }" end="${ wpi.endPage }">
									                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ p2 }&mno=${loginMember.userNo}&tabName=myWish">${ p2 }</a></li>
										                    </c:forEach>
										                    <c:choose>
										                    	<c:when test="${ wpi.currentPage eq wpi.maxPage }">
											                    	<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
											                    </c:when>
											                    <c:otherwise>
											                    	<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ wpi.currentPage + 1 }&mno=${loginMember.userNo}&tabName=myWish">Next</a></li>
											                    </c:otherwise>
										                    </c:choose>
									                </ul>
									            </div>
                                                
                                                
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
	                                                        <tr style="height:50px; padding:0px;" id="mypost-tr" class="mypostDetail">
	                                                            <td id="mpBoardNo">${ mb.boardNo }</td>
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
	                                                            <td class="deleteMyBoard" id="deleteMyBoard"><button class="btn-remove" ><i class="icon-close"></i></button></td>
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
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach var="mt" items="${ mpTBoard }" >
                                                            <tr id="mypost-tr" class="tboardDetailId">
                                                                <td id="tboardNo">${ mt.tboardNo }</td>
                                                                <td class="product-col">
                                                                     <div class="product" >
                                                                             <img src="${mt.thumbnail}" alt="Product image" style="width: 120px; height: 80px; margin-right: 30px;">
                                                                         <h3 class="product-title">
                                                                             ${ mt.tboardTitle }
                                                                         </h3><!-- End .product-title -->
                                                                     </div><!-- End .product -->
                                                                </td>
                                                                <td class="price-col">${ mt.createDate }</td>
                                                                <td class="stock-col"><span class="in-stock">${ mt.count }</span></td>
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
                                            </tr>
                                        </thead>

                                        <tbody>
                                        	<c:forEach items="${mpReply}" var="mr" varStatus="status">
	                                            <tr id="mypost-tr">
	                                                <td style=" width: 100px;">${ fn:length(mpReply) - status.index }</td>
	                                                <td>${ mr.boardTitle }</td>
	                                                <td class="price-col">${ mr.replyContent }</td>
	                                                <td class="stock-col"><span class="in-stock">${ mr.createDate }</span></td>
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
                                                            <th>평점</th>
                                                            <th>리뷰 내용</th>
                                                            <th>작성일</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach items="${mpReView}" var="mr" varStatus="status">
				                                            <tr id="mypost-tr">
				                                                <td style=" width: 100px;">${ fn:length(mpReView) - status.index }</td>
				                                                <td>${ mr.productName }, ${ mr.optionName }</td>
				                                                <td>
				                                                	<div class="ratings-container" style="margin-left:80px; ">
								                                        <div class="ratings">
								                                            <div class="ratings-val" style="width: ${ mr.rating * 20}%;"></div><!-- End .ratings-val -->
								                                        </div><!-- End .ratings -->
								                                    </div><!-- End .rating-container -->
				                                                </td>
				                                                <td class="price-col">${ mr.reviewContent }</td>
				                                                <td class="stock-col"><span class="in-stock">${ mr.createDate }</span></td>
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
                                        <form action="deleteMember.me" method="post">
                                            <h4>회원탈퇴</h4>
                                            <hr style="margin-top: 10px;">
                                            <label>비밀번호 입력</label>
                                            <input type="hidden" value="${loginMember.userPwd}" name="userPwd">
                                            <input type="hidden" value="${loginMember.userNo}" name="userNo">
                                            <input type="password" class="form-control" name="deleteUserPwd" required>
                                            <button type="submit" class="btn btn-outline-primary-2" onclick="deleteMember();">
                                                <span>탈퇴하기</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>
                                        </form>
                                    </div>

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
                                    <h3>비밀번호 변경</h3>
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
	    
	    <!-- 탈퇴 스크립트 -->
	    <script>
		    function deleteMember(){
		    	if(confirm("정말 탈퇴하시겠습니까?")){
		    		
		    		var form = document.getElementById("delete-account-form");
		            form.submit();
		            
		    	}else{
		    		
		    	}
		    	
		    }
   		</script>
	    	
	    <!-- 찜목록 삭제 스크립트 -->
   		 <script>
    		$(function(){
    			$(".deleteWish").click(function(){
    				 var productNo = $(this).data("product-no");
    				$.ajax({
    					url: "deleteWish.pr",
    					data:{
    						userNo:${loginMember.userNo},
    						productNo:productNo
    					},success:function(result){
    						if(result > 0){
    							alert("해당목록 삭제 완료");
    							let url = "myPage.me?mno=" + ${loginMember.userNo} +  "&tabName=myWish";
    							location.replace(url);
    						}
    					},error:function(){
    						console.log("ajax 마이페이지 찜목록 삭제 실패");
    					}
    				})
    			})
    		})		
    	</script>
    	
    	<!-- 자유게시글 삭제 스크립트 -->
    	<script>
	    	$(function(){
	    		let userNo = ${loginMember.userNo}
				$(".deleteMyBoard").click(function(){
					$.ajax({
						url: "deleteMyBoard.bo",
						data:{
							boardWriter: userNo,
							boardNo: $("#mpBoardNo").text()
						},success:function(result){
							if(result > 0){
								let url = "myPage.me?mno=" + userNo + "&tabName=myBoard";
								location.replace(url);
							}
						},error:function(){
							console.log("ajax 마이페이지 나의 자유게시글 삭제 실패");
						}
					})
				})
			})		
    	</script>
        
        <jsp:include page="../common/footer.jsp"></jsp:include>

<!-- 
	<script>
	 	$(()=>{
			// input 필드에 있는 이메일 주소 가져오기
			var email = $("#emailInput").val();
		
			// @ 문자 찾기
			var atSymbol = email.match("@");
			if (atSymbol) {
			    console.log(atSymbol[0]);  // "@" 출력
			}
	 	})
	</script>  
	 -->    
	
	<!-- 중고게시글 상세 들어가는 스크립트 -->
	<script>
	    $(function() {
	        $(".tboardDetailId").click(function() {
	            var tboardNo = $("#tboardNo").text();
	            location.href = 'tBoardDetail.bo?tboardNo=' + tboardNo;
	        });
	    });
	</script>
	
	<!-- 자유게시글 상세 들어가는 스크립트 -->
	<script>
	    $(function() {
	        $(".mypostDetail").click(function() {
	            var tboardNo = $("#tboardNo").text();
	            location.href = 'boardDetailView.bo?bno=' + $(this).children("#mpBoardNo").text();
	            
	        });
	    });
	</script>  
	
	<!-- 찜목록에서 상품상세 들어가는 스크립트 -->
	<script>
	    $(function() {
	        $(".productDetail").click(function() {
	            var tboardNo = $("#tboardNo").text();
	            location.href = 'productDetail.mj?pno=' + $("#mwProductNo").val();
	            
	        });
	    });
	</script>  
	
		
	<script>
		$(function(){
			$("#apibtn").click(function(){
				$.ajax({
					url:'kakaopay.api',
					dataType:'json',
					success:function(data){
						var paymentStart = data.next_redirect_pc_url + "?tid=" + data.tid;
						// API 응답을 받은 후에 새 창 열기
						var newWindow = window.open(paymentStart);
					},
					error:function(error){
						alert(error);
					}
				})
			})
		})
	</script>
	
	<!--  
	<script>
		$(function(){
			$.ajax({
				url:"cartOptionSelect.pr",
				data:{
					userNo:${loginMember.userNo}
				},
				success: function(data){
					value="";
					for(let i in data){
						value += `
					    <option id="`+data[i].productNo+``+[i]+`" value="`+data[i].totalOpitons+`">
					    	<input type="hidden" value="`+data[i].optionPrice+`">
					    	<input type="hidden" value="`+data[i].totalOpitons+`">
					    	`+data[i].optionPrice+`, `+data[i].totalOpitons+`
					    </option>`;
					}
					console.log(value);
					$(".selectBox").html(value);
					
				}, error:function(){
					
					console.log("실패")
				}
				
			})
		})
	</script>
	-->
	      
	
 	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
	
	
	<!-- 장바구니 리스트와 옵션리스트 불러와서 비교한 후 상품에 맞게 리스트 뿌려주는 ajax 
    -->
	<script>
	var volumes = "";
    var productNos = "";
    var optionNames = "";
        $(function() {
        let totalPriceSum = 0;
		let address = "${loginMember.address}";
		console.log("사용자 주소" + address);
		
            $.ajax({
                url: "selectMyPageCartAjax.pr",
                type: "GET", // GET 메서드 사용
                dataType: 'json',
                data: {
                	userNo:${loginMember.userNo}
                },
                success: function(data) {
                	let value = "";
                	
                    for (let i in data) {
                    	console.log(data[i].productNo.substr(0, 1));
                    	let saleTotal = data[i].saleTotal;
                    	let normalTotal = data[i].normalTotal;
                    	let productNo = data[i].productNo;
                    	value += `
                        <tr class="productDetail">
                        	<input type="hidden" id="#mwProdutNo" value="productNo"/>
                            <th style="padding-top: 50px;" >
                                <input type='checkbox' class="product-checkbox" name='product-cart' value=''/>
                            </th>
                            <td class="product-col">
                                <div class="product">
                                    <figure class="product-media">
                                        <img src="`+data[i].thumbnail+`" alt="Product image">
                                    </figure>
                                    <h3 class="product-title">
                                         `+data[i].productName+`
                                    </h3>
                                </div>
                            </td>
                            <td>
                                `+data[i].optionName+`<br>
                                `+data[i].optionPrice+`
                            </td>
                            <td class="price-col">`+data[i].price+`</td>
                            <td class="quantity-col" align="center">
                                <div class="cart-product-quantity">
                                    <input type="number" id="volume-`+data[i].productNo+`" value="`+data[i].volume+`" class="form-control" name="volume" min="1" max="100" step="1" data-decimals="0" required>
                                </div><!-- End .cart-product-quantity -->                                 
                            </td>`;
                            
                            if(productNo.substr(0, 1) === 'G' || productNo.substr(0, 1) === 'H'){
                            	value += "<td class='total-col'>" + saleTotal + "</td>";
                            	totalPriceSum += parseFloat(saleTotal);
                            }else{
                            	value += "<td class='total-col'>" + normalTotal + "</td>";
                            	totalPriceSum += parseFloat(normalTotal);
                            }
                            
                          value +=  `
                          			<td class="remove-col deleteCart" data-volume='`+data[i].volume+`'; data-product-no="`+data[i].productNo+`" data-option-name="`+data[i].optionName+`"><button class="btn-remove"><i class="icon-close"></i></button></td>
                        			</tr>`;
              	  }
                    $("#totalPriceSum").text(totalPriceSum + "원");
                    let total = totalPriceSum;
                    console.log("totalPriceSum" + totalPriceSum);
                    console.log("total" + total);
					$("#mypageCart tbody").html(value);
					handleTotal(total, address);
					
			// 장바구니 삭제 함수
	            $(function(){
					$(".deleteCart").click(function(){
						var productNo = $(this).data("product-no");
						var optionName = $(this).data("option-name");
						$.ajax({
							url: "removeCart.jw",
							data:{
								userNo:${loginMember.userNo},
								productNo:productNo,
								optionName:optionName
							},success:function(result){
								if(result > 0){
									alert("해당목록 삭제 완료");
									let url = "myPage.me?mno=" + ${loginMember.userNo} +  "&tabName=myCart";
									location.replace(url);
								}
							},error:function(){
								console.log("ajax 마이페이지 장바구니 삭제 실패");
							}
						})
					})
				})		
			
			// 장바구니 수정 함수
					$("#updateCart").click(function(){
				        $(".deleteCart").each(function() {
							var productNo = $(this).data("product-no");
				            var volume = $("#volume-" + productNo).val();
				            var optionName = $(this).data("option-name");
		            		productNos +=  productNo + " ";
		            		volumes += volume + ",";
		            		optionNames += optionName + " ";
		            		
						})
						test123(productNos, volumes, optionNames);
				})
	        	function test123(productNos, volumes, optionNames){
		            $.ajax({
		            	url:"modifyCart.pr",
		            	data:{
		            		productNo:productNos,
		            		volume:volumes,
		            		optionName:optionNames
		            	},success:function(result){
		            		if(result>0){
		            			let url = "myPage.me?mno=" + ${loginMember.userNo} +  "&tabName=myCart";
								location.replace(url);
		            			
		            		}else{
		            			alert("장바구니 변경사항 없음!");
		            		}
		            	},error:function(){
		            		console.log("장바구니수정 실패");
		            	}
		            })
	        	}

					
                },
                error: function() {
                    console.log("데이터를 불러오는 동안 오류가 발생했습니다.");
                }
            });
            
            function handleTotal(total, address) {
                if (total != 0 && total > 100000) {
                    $(".del").text("무료");
                    $(".tTotal").text(total.toLocaleString('ko-KR') + "원");
                } else if (total != 0 && total < 100000) {
                    $(".del").text("5000원");
                    $(".tTotal").text((total + 5000).toLocaleString('ko-KR') + "원");
                } else if (total != 0 && total < 100000 && address.substring(0, 2)=== '제주') {
                    $(".del").text("10000원");
                    $(".tTotal").text((total + 10000).toLocaleString('ko-KR') + "원");
                }else{
                	$(".del").text("0원");
                    $(".tTotal").text("0원");
                }
            }
        });
    </script>
    
    <!-- 결제페이지로 넘어가는 스크립트 -->
	 <script>
   		function movePayment(){
   			location.href = "movePayment.pr?";
   		}
   	</script>
		
        
</body>
</html>