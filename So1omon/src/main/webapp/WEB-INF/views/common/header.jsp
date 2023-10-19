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
    <meta name="author" content="p-themes">
    <!-- Favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png">
    <link rel="manifest" href="assets/images/icons/site.html">
    <link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color="#666666">
    <link rel="shortcut icon" href="assets/images/icons/favicon.ico">
    <meta name="apple-mobile-web-app-title" content="Molla">
    <meta name="application-name" content="Molla">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config" content="assets/images/icons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/plugins/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/plugins/magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/plugins/jquery.countdown.css">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/skins/skin-demo-2.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <!-- alertifyJs -->
	<!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
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

<body style="height:148px">
 
	<c:if test="${ not empty alertMsg }">
		<script>
			alertify.alert("${alertMsg}");
		</script>
		<c:remove var="alertMsg" scope="session"/>
		<!-- remove를 통해서 alertMsg session 삭제 -->
	</c:if>
	
        <header class="header">
            <div class="header-top">
                <div class="container" style="padding-top: 10px;">
                    <div class="header-right">
                        <ul class="top-menu">
                            <li>
                                <a href="#">Links</a>
                                <ul>
                                    <li><a href="tel:#"><i class="icon-phone"></i>고객센터(24시간): 080-4329-2816</a></li>
                                    <c:choose>
                                        <c:when test="${empty loginMember }">
                                            <li><a href="#signin-modal" data-toggle="modal"><i class="icon-user"></i>Login</a></li>
	                                    </c:when>
	                                    <c:otherwise>
                                            <li id="myWishList"><a href="wishList.me"><i class="icon-heart-o"></i>My Wishlist <span id="showMyWish">(3)</span></a></li>
		                                    <li><a href="myPage.me"><i class="icon-user"></i>${loginMember.userName }님</a></li>
		                                    <li><a href="logout.me">LogOut</a></li>
	                                    </c:otherwise>
                                    </c:choose>
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

                        <a href="index.jsp" class="logo">
                            <img src="assets/images/So1omon (3).gif" alt="Molla Logo" width="200">
                        </a>
						<!-- 상단 네비바 시작 -->
                        <nav class="main-nav">
                            <ul class="menu sf-arrows">
                                <li class="megamenu-container active">
                                    <a href="index.jsp" style="padding-right: 5px;">Home</a>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">가&nbsp&nbsp&nbsp&nbsp구</a>

                                    <ul>
                                        <li><a href="#"><span>침&nbsp&nbsp&nbsp&nbsp실<span class="tip tip-hot">Hot</span></span></a></li>
                                        <li><a href="#"><span>거&nbsp&nbsp&nbsp&nbsp실<span class="tip tip-new">New</span></span></a></li>
                                        <li><a href="#"><span>주&nbsp&nbsp&nbsp&nbsp방<span class="tip tip-hot">Hot</span></span></a></li>
                                        <li><a href="#"><span>조&nbsp&nbsp&nbsp&nbsp명<span class="tip tip-hot">Hot</span></span></a></li>
                                        <li><a href="elements-titles.html">타임핫딜</a></li>
                                        <li><a href="elements-products.html">공동구매</a></li>
                                        <li><a href="#"><span>기&nbsp&nbsp&nbsp&nbsp타</span></a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">먹거리</a>

                                    <ul>
                                        <li><a href="elements-titles.html">밀키트</a></li>
                                        <li><a href="elements-titles.html">소분판매</a></li>
                                        <li><a href="elements-titles.html">타임핫딜</a></li>
                                        <li><a href="elements-products.html">공동구매</a></li>
                                        <li><a href="elements-products.html">기&nbsp&nbsp&nbsp&nbsp타</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">커뮤니티</a>

                                    <ul>
                                        <li><a href="tboard.yj">중고게시판</a></li>
                                        <li><a href="elements-titles.html">1인가구알림판</a></li>
                                        <li><a href="board.yj">자유게시판</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">고객센터</a>

                                    <ul>
                                        <li><a href="notice.yj">공지사항</a></li>
                                        <li><a href="faq.yj">FAQ</a></li>
                                        <li><a href="qna.yj">Q&A</a></li>
                                    </ul>
                                </li>
                            </ul><!-- End .menu -->
                        </nav><!-- End .main-nav -->
                    </div><!-- End .header-left -->

                    <div class="header-right">
                        <div class="header-search">
                            <a href="#" class="search-toggle" role="button" title="Search"><i class="icon-search"></i></a>
                            <form id="searchKey" action="#" method="get" accept-charset="UTF-8">
                                <div class="header-search-wrapper">
                                    <label for="q" class="sr-only">Search</label>
                                    <input type="search" class="form-control" name="keyword" id="qwer" placeholder="검색어를 입력해주세요.">
                                </div><!-- End .header-search-wrapper -->
                            </form>
                        </div><!-- End .header-search -->

                        <script>
						
                        $(document).ready(function() {
                        	$("#qwer").keydown(function(key) {
                        		if (key.keyCode == 13) {
	                                var keyword = $("#qwer").val(); // 검색어 가져오기
									// console.log(keyword); // 입력한 문자 그대로 잘 들어옴
	                                // 첫 번째 URL로 이동
	                                //$("#searchKey").attr("action", "search.bo?keyword=" + keyword);
	                                //$("#searchKey input").val(keyword); // 폼 필드에 검색어 설정
	                                
	                                var actionURL = "search.bo?keyword=" + keyword;

				                    // form의 action 속성을 동적으로 변경
				                    $("#searchKey").attr("action", actionURL);
	                                
	                                $("#searchKey").submit();
	
	                                // 두 번째 URL로 이동
	                               // $("#searchKey").attr("action", "search1.bo");
	                               // $("#searchKey input[name='keyword']").val(keyword); // 폼 필드에 검색어 설정
	                               // $("#searchKey").submit();
	                            }
                            });
                        });
                        
                        $(document).ready(function() {
                        	$("#qwer").keydown(function(key) {
	                            if (key.keyCode == 13) {
	                            	
	                                var keyword = $("#qwer").val(); // 검색어 가져오기
	                                var pactionURL = "search.pr?keyword=" + keyword;

				                    // form의 action 속성을 동적으로 변경
				                    // $("#searchKey").attr("action", pactionURL);
	                                
	                            }
                            });
                        });
                        

						/*
						$(document).ready(function() {
						    $("#qwer").keydown(function(key) {
						        if (key.keyCode == 13) {
						            var keyword = $("#qwer").val(); // 검색어 가져오기
						            
						            var bactionURL = "search.bo?keyword=" + keyword;
						            var pactionURL = "search.pr?keyword=" + keyword;
						
						            // 첫 번째 URL로 AJAX 요청 보내기
						            $.ajax({
						                url: "search.bo",
						                data: {
						                	keyword:keyword
						                },
						                success: function(response1) {
						                    // 첫 번째 URL에서 데이터를 처리합니다
						                    console.log("첫 번째 URL의 응답: " + response1);
						                    window.location.href = "board/searchView";
						
						                    // 두 번째 URL로 AJAX 요청 보내기
						                    $.ajax({
						                        url: pactionURL,
						                        type: "GET",
						                        success: function(response2) {
						                            // 두 번째 URL에서 데이터를 처리합니다
						                            console.log("두 번째 URL의 응답: " + response2);
						
						                            // 두 URL에서 가져온 데이터를 조합 또는 처리합니다
						                            // response1 및 response2 변수를 사용하여 두 URL에서 가져온 데이터를 조합하거나 처리할 수 있습니다
						                        }
						                    });
						                }
						            });
						        }
						    });
						});
						*/
	                        
                        </script>
					<c:if test="${loginMember ne null}">
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
                                                <img src="assets/images/products/cart/product-1.jpg" alt="product">
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
                                                <img src="assets/images/products/cart/product-2.jpg" alt="product">
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
                                    <a href="myCart.me" class="btn btn-primary">View Cart</a>
                                    <a href="checkout.pd" class="btn btn-outline-primary-2"><span>Checkout</span><i class="icon-long-arrow-right"></i></a>
                                </div><!-- End .dropdown-cart-total -->
                            </div><!-- End .dropdown-menu -->
                        </div><!-- End .cart-dropdown -->
                    </c:if>
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-middle -->
        </header><!-- End .header -->
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
							    	<form action="login.me">
							    		<div class="form-group">
							    			<label for="singin-email-2">아이디 *</label>
							    			<input type="text" class="form-control" id="userId" name="userId" required>
							    		</div><!-- End .form-group -->

							    		<div class="form-group">
							    			<label for="singin-password-2">비밀번호 *</label>
							    			<input type="password" class="form-control" id="userPwd" name="userPwd" required>
							    		</div><!-- End .form-group -->

							    		<div class="form-footer">
							    			<button type="submit" class="btn btn-outline-primary-2">
			                					<span>LOG IN</span>
			            						<i class="icon-long-arrow-right"></i>
			                				</button>

			                				<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="saveId">
												<label class="custom-control-label" for="signin-remember-2">정보저장</label>
											</div><!-- End .custom-checkbox -->
                                            <a href="findId.me" class="forgot-link">아이디/비밀번호찾기</a>
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
                                        <p class="text-center" style="margin-top: 27px;"><a href="signUp.me" class="forgot-link">회원가입</a></p>
							    	</div><!-- End .form-choice -->
							    </div><!-- .End .tab-pane -->
							</div><!-- End .tab-content -->
						</div><!-- End .form-tab -->
            		</div><!-- End .form-box -->
                </div><!-- End .modal-body -->
            </div><!-- End .modal-content -->
        </div><!-- End .modal-dialog -->
    </div><!-- End .modal -->    
    
</script>

        <c:if test="${ not empty gubunWish }">
			<script>
				$(()=>{
		           
		           		$("#tab-account-link").removeClass("active");
		           		$("#tab-account").removeClass("show");
		           		$("#tab-account").removeClass("active");
		           		$("#tab-wishlist-link").addClass("active");
		           		$("#tab-wishlist").addClass("show");
		           		$("#tab-wishlist").addClass("active");
		         
				})
			</script>
		</c:if>
		
        <c:if test="${ not empty gubunCart }">
			<script>
				$(()=>{
		           
		           		$("#tab-account-link").removeClass("active");
		           		$("#tab-account").removeClass("show");
		           		$("#tab-account").removeClass("active");
		           		$("#tab-cart-link").addClass("active");
		           		$("#tab-cart").addClass("show");
		           		$("#tab-cart").addClass("active");
		         
				})
			</script>
		</c:if>
			
<script>
	$(() => {
		if ("${loginMember.userName}" !== "") {
			$.ajax({
				url: "showMyWish.yj",
                data:{userNo:${loginMember.userNo}},
				success: data => {
					console.log("ajax myWishList 조회 성공");
					console.log(data);
					$("#showMyWish").text("("+data+")");
				},
				error: () => {
					console.log("ajax myWishList 조회 실패");
				},
			});
		}
		
		if("${loginMember.userName}" !== ""){
			$.ajax({
				url:"showMyCart.yj",
				data:{userNo:${loginMember.userNo}},
				success: data => {
					console.log("ajax MyCart 조회 성공");
					console.log(data);
				},
				error: () => {
					console.log("ajax MyCart 조회 실패");
				}
			})
		}
	});
</script>

</body>


<!-- molla/index-2.html  22 Nov 2019 09:55:42 GMT -->
</html>