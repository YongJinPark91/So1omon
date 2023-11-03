<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!--jQuery 쿠키 플러그인-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<style>
	
	#toast-container *{
		font-size: small;
	}
</style>
</head>
<body>
        <footer class="footer">
        	<div class="footer-middle">
	            <div class="container">
	            	<div class="row">
	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget widget-about">
	            				<img src="assets/images/So1omon(bgX).png" class="footer-logo" alt="Footer Logo" width="250" height="25">
	            				<b>(주)so1omon</b>
	            				<p><b>서울 강남구 테헤란로 14길 6 2F</b></p>
	            				<p><b>사업자 등록번호 119-86-91234</b></p>
	            				<p><b>통신판매업 신고번호</b></p>
	            				<p><b>제2023-서울역삼-1234호</b></p>

	            				<div class="social-icons">
	            					<a href="groupProductDetail?gno=G1" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
	            					<a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
	            					<a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
	            					<a href="#" class="social-icon" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
	            					<a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
	            				</div><!-- End .soial-icons -->
	            			</div><!-- End .widget about-widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->

	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget" style="margin-left: 80px;">
	            				<h4 class="widget-title" >Information</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="about.html">About So1omon</a></li>
	            					<li><a href="#">FAQ</a></li>
	            					<li><a href="contact.html">Contact us</a></li>
	            					<li><a href="signUp.me" >회원가입</a></li>
	            					<li><a href="main.admin">Admin</a></li>
	            				</ul><!-- End .widget-list -->
	            			</div><!-- End .widget -->
	            		</div><!-- End .col-sm-6 col-lg-3 -->


	            		<div class="col-sm-6 col-lg-3">
	            			<div class="widget">
	            				<h4 class="widget-title">My Account</h4><!-- End .widget-title -->

	            				<ul class="widget-list">
	            					<li><a href="#signin-modal" data-toggle="modal">로그인</a></li>
	            					<li><a href="myCart.me">장바구니 확인</a></li>
	            					<li><a href="wishList.me">찜 리스트 확인</a></li>
	            					<li><a href="myOrder.me">주문내역 확인</a></li>
	            					<li><a href="qnaList.bo">Q&A</a></li>
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
	        			<img src="assets/images/payments.png" alt="Payment methods" width="272" height="20">
	        		</figure><!-- End .footer-payments -->
	        	</div><!-- End .container -->
	        </div><!-- End .footer-bottom -->

        </footer><!-- End .footer -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>
    
    <c:if test="${ not empty gubunOrder }">
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
	
   	<div class="alertTest"></div>
	
	<script>
  
  	var ws = null;
  	
  	$(function(){
  		if(${not empty loginMember}){
  			connectWs();  			
  		}
  	})
  	
  	function connectWs(){
  		var socket = new SockJS("http://localhost:8888/so1omon/alram");
  		ws = socket;
  		
  		// 웹소켓 연결됐을 때 실행되는 함수
  		ws.onopen = function(){
  			console.log("open@@");
  		}
  		
  		// 메시지 받는 함수
  		ws.onmessage = function(event){
  			let value = "";
  			if(event.data != null){
  				console.log("메시지 받음");
  				$("#alert").html("<i class='fa-solid fa-bell fa-beat'></i>");
  				
	  			// 토스트
	  			value += "<div id='toast-container' style='position: fixed; bottom: 1rem; right: 1rem; z-index: 9999;'>"		
	  				   + "<div class='toast'>"
	  				   + "<div class='toast-header'>"
	  				   + "<img src='assets/images/So1omon (3).gif' alt='Molla Logo' width='100'>"
	  				   + "</div>"
	  				   + "<div class='toast-body'>"
	  				   + event.data
	  				   + "</div></div></div>";
	  				   
	  			//$("#toastDiv").html(value);
	  			$(".alertTest").html(value);
                $('.toast').toast({ delay: 3000 }).toast('show');
                selectAlert(); // 알림 리스트 ajax 함수 호출
	  		
  			}
  			console.log(value);
  		}
  		
  		// 메시지 보내는 함수
	  	function sendAlert(msg){
	 		socket.send(msg);
	  	}
  		
  	}
  	
  	
  </script>
  
  
  
<script>
    function addWish(num, name) {
		//console.log(num);
		//console.log(name);

        $.ajax({
            url: "wishController.yj",
            data: {
                productNo: num,
            },
            success: data => {
                //console.log("ajax wish 컨트롤 성공");
                //console.log(data);
                //console.log(name);
                
                let value = "";
                
                if (data > 0) {
                    console.log("ajax wish 제외 성공");
                    //console.log(name);
                    value += `
                    	<div id="toast-container" style="position: fixed; bottom: 1rem; right: 1rem; z-index: 9999;">
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
                    console.log("ajax wish 등록 성공");
                    //console.log(name);
                    value += `
                    	<div id="toast-container" style="position: fixed; bottom: 1rem; right: 1rem; z-index: 9999;">
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
            },
            error: () => {
                console.log("ajax wish 컨트롤 실패");
            }
        });
    }

</script>
  
  
	
	

    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <script src="assets/js/jquery.plugin.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    




    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
    <script src="assets/js/demos/demo-2.js"></script>







</body>
</html>