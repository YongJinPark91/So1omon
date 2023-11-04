<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String userNo = (String)session.getAttribute("loginMember.userNo");
	System.out.println(userNo);
%>
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
    
    <!-- 토스트용 -->
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">	
	<!-- jQuery library -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>	
	<!-- Popper JS -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>	
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    
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
	
	<!-- 웹소켓 -->
	<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
	
	<!-- fontawesome 이미지 -->
    <script src="https://kit.fontawesome.com/d3dccd5748.js" crossorigin="anonymous"></script>

	<!--jQuery 쿠키 플러그인-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>

	<script>
		/*
			쿠키 만드는법
			document.cookie = "Name=값; Value=값; Expires=값;"
		*/
		/*
		var date = new Date();
		date.setDate(date.getDate()+7); // 오늘 일자 + 7일
		// 쿠키를 넣을때는 UTC방식으로 넣어주어야 한다.
		date.toUTCString();

		var setCookie = '';
		setCookie += 'CookieName=Solomon;';
		setCookie += 'Expires=' + date.toUTCString();

		document.cookie = setCookie; // 쿠키 설정, 생성
		document.cookie = 'CookieName3=Solomon3; Value=10; Expires=' + date.toUTCString();
		console.log(document.cookie); // 쿠키 확인
		*/


		/*
			쿠키 가져오기
		*/
		/*
		function getCookie(name){
			var cookies = document.cookie.split(';'); // 문자열을 ';'로 잘라서 배열로 만들어냄
			console.log(cookies);
			for(let i in cookies){
				if(cookies[i].indexOf(name) > 0){
					alertify.alert('재방문 해주셔서 감사합니다');
				}
			}
		}
		getCookie('2');
		*/
		/*
			쿠키 값 지우기
			쿠키값을 지우는 방법은 Expires를 과거로 만들어주면 된다.
			쿠키를 만드는 방법으로 만들되 날자 -1을 하는 형식이다.
		*/
		/*
		$.cookie('CookieName','solomon');
		$.cookie('CookieName2', 'Solomon', { expires: 7 }); // 7일 후에 만료
		*/
	</script>
	<script>
			let date = new Date(); // 날짜 만들용
			let randomNum = Math.floor(Math.random() * 90000) + 10000; // 난수 생성용
			let tokenKey = String(date.getFullYear())+String(date.getMonth()+1)+String(date.getDate())+String(date.getHours())+String(date.getMinutes())+String(date.getSeconds())+String(randomNum);
			//console.log(tokenKey);

			//$.cookie('SolomonToken',tokenKey, { expires: 7 });
			//console.log($.cookie('SolomonToken'));
			
			if($.cookie('SolomonToken') == null){
				// 쿠키가 없는지 확인, 없다면 쿠키 생성
				$.cookie('SolomonToken',tokenKey, { expires: 7 });
			}
			
	</script>
    
    
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
    
    .alram-count{
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    min-width: 2rem;
	    height: 2rem;
	    border-radius: 50%;
	    font-weight: 400;
	    font-size: 1rem;
	    line-height: 1;
	    margin-left: 0.2rem;
	    margin-top: 0.1rem;
	    color: #fff;
	    background-color: #a6c76c;
	    margin-left: 5px;
    }
    
    .compare-product{
    	padding: 10px 5px 10px 5px ;
    }
	
	#toast-container *{
		font-size: small;
	}
	
	
	.btn-remove{
		cursor: pointer;
	}
</style>
<script>
	
</script>
</head>

<body style="height:148px">

		<script>
		let cookie = $.cookie('SolomonToken');
		//console.log("asdf:                   " + cookie);
		let userNo = ${loginMember == null ? 0 : loginMember.userNo};
		//console.log("현재 userNo : " + userNo);
		let token = userNo == 0 ? cookie : userNo;
		//console.log("token결과 : " + token);
			$(()=>{
				//console.log("ajax 토큰 전달 : " + token);
				$.ajax({
					url:"staticUserNo.yj",
					data:{
						userKey:token
					},
					success:data=>{
						console.log("ajax 기본 유저번호 등록 성공");
						console.log(data);
					},
					error:()=>{
						console.log("ajax 기본 유저번호 등록 실패");
					}
				})
			})
		</script>
	 
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
                                        <c:when test="${ empty loginMember }">
											<li id="myWishList"><a href="nomemberPage.yj"><i class="icon-heart-o"></i>Temporary Wishlist (<span id="showMyWish">0</span>)</a></li>
                                            <li><a href="#signin-modal" data-toggle="modal"><i class="icon-user"></i>Login</a></li>
	                                    </c:when>
	                                    <c:otherwise>
                                            <li id="myWishList"><a href="myPage.me?mno=${loginMember.userNo }&tabName=myWish"><i class="icon-heart-o"></i>My Wishlist (<span id="showMyWish">0</span>)</a></li>
		                                    <li><a href="myPage.me?mno=${ loginMember.userNo }&tabName=myPage"><i class="icon-user"></i>${loginMember.userName }님</a></li>
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

                                    <ul id="gagu">
                                        <li><a href="hotBuyList.yj?categoryL=가구"><span>타임핫딜<span class="tip tip-hot">Hot</span></span></a></li>
                                        <li><a href="groupBuyList.yj?categoryL=가구"><span>공동구매<span class="tip tip-hot">Hot</span></span></a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">밀키트</a>

                                    <ul id="mealKit">
                                        <li><a href="hotBuyList.yj?categoryL=밀키트"><span>타임핫딜<span class="tip tip-hot">Hot</span></span></a></li>
                                        <li><a href="groupBuyList.yj?categoryL=밀키트"><span>공동구매<span class="tip tip-hot">Hot</span></span></a></li>
                                    </ul>
                                </li>
                                
                                <script>
	                                $(()=>{
	                                	$.ajax({
	                                		
	                                		url:"menuGugun.yj",
	                                		success:data=>{
	                                			console.log("ajax 메뉴조회에 성공하였습니다.");
	                                			console.log(data);
	                                			let gagu = "";
	                                			let meal = "";
	                                			for(let i in data){
	                                				if(data[i].categoryL == '가구'){
	                                					gagu += "<li><a href='nomalProduct.yj?categoryS="+data[i].categoryS+"&categoryL="+data[i].categoryL+"'>"+data[i].categoryS+"</a></li>";
	                                				}else{
	                                					meal += "<li><a href='nomalProduct.yj?categoryS="+data[i].categoryS+"&categoryL="+data[i].categoryL+"'>"+data[i].categoryS+"</a></li>";
	                                				}
	                                			}
	                                			$("#gagu li:eq(0)").before(gagu);
	                                			$("#mealKit li:eq(0)").before(meal);
	                                			
	                                		},
	                                		error:()=>{
	                                			console.log("ajax 메뉴조회에 실패하였습니다.");
	                                		}
	                                		
	                                	})
	                                })
                                </script>
                                
                                <li>
                                    <a href="#" class="sf-with-ul">커뮤니티</a>

                                    <ul>
                                        <li><a href="tboardList.bo">중고게시판</a></li>
                                        <li><a href="oneBoardList.bo">1인가구알림판</a></li>
                                        <li><a href="board.bo">자유게시판</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#" class="sf-with-ul">고객센터</a>

                                    <ul>
                                        <li><a href="list.bo">공지사항</a></li>
                                        <li><a href="faqList.bo">FAQ</a></li>
                                        <li><a href="qnaList.bo">Q&A</a></li>
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
                        <!-- 알림 -->
                        <div class="dropdown compare-dropdown">
                            <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static" title="Compare Products" aria-label="Compare Products" onclick="changeBell();">
                                <div id="alert"><i class="fa-regular fa-bell"></i></div> <!-- 알림 구현 -->
                               <!-- <i class="fa-solid fa-bell fa-beat"></i> -->
                                <span class="alram-count">0</span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" onclick="changeBell();">
                                <ul class="compare-products">
                                	<!-- 알림창 -->
                                </ul>

                                <div class="compare-actions">
                                    <a href="#" class="btn btn-outline-primary-2" onclick="deleteAlert(${loginMember.userNo}, 'all')"><span>모두지우기</span></i></a>
                                </div>
                            </div><!-- End .dropdown-menu -->
                        </div><!-- End .cart-dropdown -->
                        
                        <!-- 알람 조회 ajax -->
                        <script>
                        	$(function(){
                        		selectAlert();
                        	})
                        	function selectAlert(){
                        		$.ajax({
                        			url:"selectAlert.ajax",
                        			data:{userNo:"${loginMember.userNo}"},
                        			success:function(list){
                        				value = "";
                        				one = "one";
                        				if(list.length == 0){
                        					value = "<li class='compare-product'><h4 class='compare-product-title'><a>알림이 없습니다</a></h4></li>";
                        					$(".compare-actions").html("");
                        				}else{
                        					
                        					
	                        				for(let i in list){
	                        					value += "<li class='compare-product' onclick='deleteAlert(" + list[i].alertNo + ", one)'>"
	                        						   + "<h4 class='compare-product-title'>";
	                        					if(list[i].refNo.substring(0,1) == 'B'){ // 자유게시판
	                        						value += "<a href='boardDetailView.bo?bno=" + list[i].refNo.substring(1) + "'>";
	                        					}else if(list[i].refNo.substring(0,1) == 'T'){ // 중고게시판
	                        						value += "<a href='tBoardDetail.bo?tboardNo=" + list[i].refNo.substring(1) + "'>";
	                        					}else if(list[i].refNo.substring(0,1) == 'G'){
	                        						value += "<a href='myPage.me?mno=1&amp;tabName=myCart'><b>";
	                        					}
	                        						value += list[i].alertContent
	                        							   + "</b></a></h4>"
	                        							   + "</li>";
	                        				}
                        					changeBell();
                        				}
                        				
                        				$(".compare-products").html(value);
                        				$(".alram-count").text(list.length);
                        				
                        			},
                        			error:function(){
                        				console.log("알림 조회 ajax 통신 실패");
                        			}
                        		})
                        	}
                        	
                        	// 알림 벨모양 바꾸는 함수
                        	function changeBell(){
                        		let i = "<i class='fa-regular fa-bell'></i>";
                        		$("#alert").html(i);
                        	}
                        	
                        	// 알림 지우는 함수
                        	function deleteAlert(num, condition){
                        		console.log(condition);
                        		$.ajax({
                        			url:"deleteAlert.mj",
                        			data:{
                        				num:num,
                        				condition:condition
                        			},
                        			success:function(result){
                        				if(result == "S"){
	                        				selectAlert();                        					
                        				}
                        			},
                        			error:function(){
                        				console.log("알림 삭제 ajax 통신 실패");
                        			}
                        		})
                        	}
                        </script>
                    </c:if>
                    
                        <!-- 헤더 간의 카트창 -->
                        <div class="dropdown cart-dropdown">
                            <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                                <i class="icon-shopping-cart"></i>
                                <span class="cart-count">0</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <div id="mainCart" class="dropdown-cart-products">
                                </div><!-- End .cart-product -->
                                <div class="dropdown-cart-total">
                                    <span>Total</span>
                                    <span class="cart-total-price">0원</span>
                                </div><!-- End .dropdown-cart-total -->
                                <div class="dropdown-cart-action">
                                    <a href="#" class="btn btn-primary">View Cart</a>
                                    <a href="movePayment.pr" class="btn btn-outline-primary-2"><span>Checkout</span><i class="icon-long-arrow-right"></i></a>
                                </div><!-- End .dropdown-cart-total -->
                            </div><!-- End .dropdown-menu -->
                        </div>
                        
                        <script>
                        $(()=>{
                        	mainCartView();
                        })
                        	function mainCartView(){
                        		$.ajax({
                        			url:"mainCartView.yj",
									success:data=>{
										console.log("ajax 메인메뉴 카트 조회 성공");
										console.log(data);
										
										let value = "";
										let totalPrice = 0;
										
										for (let i in data){
											value += `
			                                    <div class="product">
			                                        <div class="product-cart-details">
			                                            <h4 class="product-title">
			                                                <a href="product.html">`+data[i].productName+`,`+data[i].optionName+`</a>
			                                            </h4>
	
			                                            <span class="cart-product-info">
			                                                <span class="cart-product-qty">`+data[i].volume+`</span>`;
			                                                if((data[i].productNo).charAt(0) == 'G'){
			                                                	value += " x "+data[i].salePrice+"원";
			                                                }else{
			                                                	value += " x "+data[i].normalPrice+"원";
			                                                }
	                                                value += `
			                                            </span>
			                                        </div><!-- End .product-cart-details -->
	
			                                        <figure class="product-image-container">
			                                            <a href="product.html" class="product-image">
			                                                <img src="`+data[i].thumbnail+`" alt="product">
			                                            </a>
			                                        </figure>
			                                        <a class="btn-remove" title="Remove Product">
		                                                <input type="hidden" class="productNo" value="`+data[i].productNo+`">
		                                                <input type="hidden" class="productName" value="`+data[i].productName+`">
		                                                <input type="hidden" class="optionName" value="`+data[i].optionName+`">
			                                            <i class="icon-close"></i>
			                                        </a>
			                                    </div><!-- End .product -->`;
										}
										
										for (let p in data){
											if((data[p].productNo).charAt(0) == 'P'){
												totalPrice += data[p].normalTotalPrice;
											}else{
												totalPrice += data[p].saleTotalPrice;
											}
										}
										
									console.log("총 가격 : " + totalPrice);
									
									$("#mainCart").html(value);
									$(".cart-count").text(data.length);
									$(".cart-total-price").text(totalPrice+'원');
									},
									error:()=>{
										console.log("ajax 메인메뉴 카트 조회 실패");
									}
                        		})
                        	}
                        
                        </script>
                    	<!-- 헤더 간의 카트창 -->
                    
                    
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
							    			<input type="text" class="form-control" id="userId" name="userId" required placeholder="이메일(Kakao연동계정) 혹은 아이디">
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
								    	<div class="row">
								    		<div class="col-md-12" style="border: 0">
								    			<a style="border: 0" href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=788a3f81192118c87ba75b7e62d74ec0&redirect_uri=http://localhost:8888/so1omon/kakaoLogin" class="btn btn-login  btn-f">
									    			<img src="assets/images/kakao_login_medium_wide.png">
								    			</a>
								    		</div><!-- End .col-12 -->
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

    
    </div>

        <c:if test="${ not empty gubunWish }">
			<script>
				$(()=>{
		           		$("#tab-wishlist-link").addClass("active");
		           		$("#tab-wishlist").addClass("show");
		           		$("#tab-wishlist").addClass("active");
				})
			</script>
		</c:if>
		
        <c:if test="${ not empty gubunCart }">
			<script>
				$(()=>{
		           		$("#tab-cart-link").addClass("active");
		           		$("#tab-cart").addClass("show");
		           		$("#tab-cart").addClass("active");
				})
			</script>
		</c:if>
		
		<c:if test="${ not empty gubunOrders }">
			<script>
				$(()=>{

		           		$("#tab-orders-link").addClass("active");
		           		$("#tab-orders").addClass("show");
		           		$("#tab-orders").addClass("active");
				})
			</script>
		</c:if>
		
		<c:if test="${ not empty gubunAccount }">
			<script>
				$(()=>{
		           		$("#tab-account-link").addClass("active");
		           		$("#tab-account").addClass("show");
		           		$("#tab-account").addClass("active");
				})
			</script>
		</c:if>
		
		<c:if test="${ not empty gubunMyBoard }">
			<script>
				$(()=>{
		           		$("#tab-myboard-link").addClass("active");
		           		$("#tab-myboard").addClass("show");
		           		$("#tab-myboard").addClass("active");
				})
			</script>
		</c:if>
			
<script>
	$(function(){
		if('${loginMember.userName}' !== ''){
			showMyWish();
		}
	})
	
	
	function showMyWish() {
			$.ajax({
				url: "showMyWish.yj",
				success: data => {
					console.log("ajax myWishList 조회 성공");
					console.log(data);
					$("#showMyWish").text(data);
					
				},
				error: () => {
					console.log("ajax myWishList 조회 실패");
				}
				
			});
	}
	
	$(document).on("click", "#mainCart .btn-remove", function(){

	    /*
	    console.log("alskdfjlaks                   "+loginMember);
	    let token = ${empty loginMember} ? cookie : loginMember;
	    console.log(token);
		*/
	    let productNo = $(this).children("input[class=productNo]").val();
	    console.log(productNo);
	    let productName = $(this).children("input[class=productName]").val();
	    console.log(productName);
	    let optionName = $(this).children("input[class=optionName]").val();
	    console.log(productName);
		let value = "";
	    $.ajax({
	        url: "removeCart.yj",
	        data: {
	            productNo: productNo,
	            optionName: optionName
	        },
	        success: result => {
	            console.log("ajax 메인페이지 카트 삭제 성공");
	            if (result > 0) {
	            	mainCartView();
                    value += `
                    	<div id="toast-container" style="position: fixed; bottom: 1rem; right: 1rem; z-index: 9999;">
                            <div class="toast">
                                <div class="toast-header">
                                	<img src="assets/images/So1omon (3).gif" alt="Molla Logo" width="100">
                                </div>
                                <div class="toast-body">
                                	<strong><div class="entry-content-yj">` + productName + `</div></strong> 을 장바구니에서 <strong style="color:red">삭제</strong>하였습니다.
                                </div>
                            </div>
                        </div>`;
	            	
	            }
                $(".alertTest").html(value);
                $('.toast').toast({ delay: 1500 }).toast('show');
	        },
	        error: () => {
	            console.log("ajax 메인페이지 카트 삭제 실패");
	        }
	    });
	});

	
	function test(){
		$("#test").show();
	}
</script>

<script>
 $(()=>{
		$.ajax({
			url: "showMyWish.yj",
			success: data => {
				console.log("ajax myWishList 조회 성공");
				console.log(data);
				$("#showMyWish").text(data);
				
			},
			error: () => {
				console.log("ajax myWishList 조회 실패");
			}
			
		});
 })
</script>

</body>

</html>