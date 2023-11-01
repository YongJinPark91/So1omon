<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<<<<<<< HEAD
=======
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
>>>>>>> ryu
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
    #tright{
        text-align: center;
    }

    input[type="number"]::-webkit-outer-spin-button,
    input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<main class="main">
    <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
       <div class="container">
          <h1 class="page-title">Checkout<span>Shop</span></h1>
       </div><!-- End .container -->
    </div><!-- End .page-header -->
     <nav aria-label="breadcrumb" class="breadcrumb-nav">
         <div class="container">
             <ol class="breadcrumb">
                 <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                 <li class="breadcrumb-item"><a href="#">Shop</a></li>
                 <li class="breadcrumb-item active" aria-current="page">Checkout</li>
             </ol>
         </div><!-- End .container -->
     </nav><!-- End .breadcrumb-nav -->
   <div class="page-content">
               <div class="checkout">
                   <div class="container">
                     <form action="#">
                         <div class="row">
                            <div class="col-lg-9">
                               <h4>결제 세부 정보</h4><!-- End .checkout-title -->
                                    <hr>
                                  <div class="row">
                                     <div class="col-sm-6">
                                        <label>받는 사람 *</label>
                                        <input type="text" class="form-control" value="${ loginMember.userName }" required>
                                     </div><!-- End .col-sm-6 -->
                                  </div><!-- End .row -->

                                 <!-- <label>주소 *</label>
                                 <input type="text" class="form-control" placeholder="도로명, 지번주소" required>
                                 <input type="text" class="form-control" placeholder="상세주소" required> -->
                                        
                                        <label>주소찾기 *</label><br>
                                        <input type="button"  onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
                                        <input type="text" id="sample6_postcode" class="form-control col-sm-6" placeholder="우편번호" readonly >

                                        <label>주소 *</label>
                                        <input type="text" class="form-control col-sm-6 sample6_address" id="sample6_address" placeholder="주소" name="address" value="" style="margin-bottom: 0px; padding-bottom: 0px;" readonly><br>
                                        
                                        <label>상세주소 *</label>
                                        <input type="text" class="form-control col-sm-6" id="sample6_detailAddress" placeholder="상세주소" name="address" value="${ loginMember.address }">
                                        <input type="text" class="form-control col-sm-6" name="address" id="sample6_extraAddress" placeholder="참고주소" readonly><br>
                                  <label>핸드폰 *</label>
                                  <input type="text" class="form-control col-sm-6" value="${ loginMember.phone }" required>

                                  <label>이메일 주소 *</label>
                                <input type="email" class="form-control col-sm-6" value="${ loginMember.email }" required>

                                  <label>주문 메모 (선택사항)</label>
                                <textarea class="form-control" cols="30" rows="4" placeholder="주문/배송에 대한 참고사항"></textarea>
                            </div><!-- End .col-lg-9 -->
                            <aside class="col-lg-3">
                               <div class="summary">
                                  <h3 class="summary-title">주문내용</h3><!-- End .summary-title -->

                                  <table class="table" style="width: 100%;">
                                     <thead>
                                        <tr>
                                           <th style="width:180px; padding-right:10px;">제품</th>
                                           <th style="text-align:right;">총금액</th>
                                           <th style="width:10px;"></th>
                                        </tr>
                                     </thead>

                                     <tbody>
<<<<<<< HEAD
                                        <tr>
                                           <td>반짝이 신발, 빨간색, 2개</td>
                                           <td id="tright">
                                                        <p style="font-size: 12px;">84,000*2</p>
                                                        168,000원
	<jsp:include page="../common/header.jsp"></jsp:include>

	<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        		<div class="container">
        			<h1 class="page-title">占쏙옙占쏙옙占쏙옙占쏙옙占쌉뤄옙<span>Shop</span></h1>
        		</div><!-- End .container -->
    </div><!-- End .page-header -->
    <br>
    
	<div class="page-content">
            	<div class="checkout">
	                <div class="container">
            			<form action="#">
		                	<div class="row">
		                		<div class="col-lg-9">
		                			<h4>占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙</h4><!-- End .checkout-title -->
                                    <hr>
		                				<div class="row">
		                					<div class="col-sm-6">
		                						<label>占쌨댐옙 占쏙옙占� *</label>
		                						<input type="text" class="form-control" required>
		                					</div><!-- End .col-sm-6 -->
		                				</div><!-- End .row -->

	            						<!-- <label>占쌍쇽옙 *</label>
	            						<input type="text" class="form-control" placeholder="占쏙옙占싸몌옙, 占쏙옙占쏙옙占쌍쇽옙" required>
	            						<input type="text" class="form-control" placeholder="占쏙옙占쌍쇽옙" required> -->
                                        
                                        <label>占쌍쇽옙 *</label><br>
                                        <input type="button"  onclick="sample6_execDaumPostcode()" value="占쏙옙占쏙옙占쏙옙호 찾占쏙옙"><br><br>
                                        <input type="text" id="sample6_postcode" class="form-control col-sm-6" placeholder="占쏙옙占쏙옙占쏙옙호" readonly >

                                        <input type="text" class="form-control col-sm-6" id="sample6_address" placeholder="占쌍쇽옙" name="" style="margin-bottom: 0px; padding-bottom: 0px;" readonly><br>
                                        
                                        <label>占쏙옙占쌍쇽옙 *</label>
                                        <input type="text" class="form-control col-sm-6" id="sample6_detailAddress" placeholder="占쏙옙占쌍쇽옙" name="">
                                        <input type="text" class="form-control col-sm-6" id="sample6_extraAddress" placeholder="占쏙옙占쏙옙占쌓몌옙"><br>
                                        
		                				<label>占쌘듸옙占쏙옙 *</label>
		                				<input type="text" class="form-control col-sm-6" required>

	                					<label>占싱몌옙占쏙옙 占쌍쇽옙 *</label>
	        							<input type="email" class="form-control col-sm-6" required>

	                					<label>占쌍뱄옙 占쌨몌옙 (占쏙옙占시삼옙占쏙옙)</label>
	        							<textarea class="form-control" cols="30" rows="4" placeholder="占쌍뱄옙/占쏙옙謗占� 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙" style="resize: none;"></textarea>
		                		</div><!-- End .col-lg-9 -->
		                		<aside class="col-lg-3">
		                			<div class="summary">
		                				<h3 class="summary-title">占쌍뱄옙占쏙옙占쏙옙</h3><!-- End .summary-title -->

		                				<table class="table table-summary" style="width: 100%;">
		                					<thead>
		                						<tr>
		                							<th>占쏙옙품</th>
		                							<th id="tright">占싼금억옙</th>
		                						</tr>
		                					</thead>

		                					<tbody>
		                						<tr>
		                							<td>占쏙옙짝占쏙옙 占신뱄옙, 占쏙옙占쏙옙占쏙옙, 2占쏙옙</td>
		                							<td id="tright">
                                                        <p style="font-size: 12px;">84,000*2</p>
                                                        168,000占쏙옙
                                                    </td>
                                        </tr>
=======
                                     	<c:forEach items="${mpCart}" var="mc">
	                                        <tr>
	                                           <td style="padding:10px 10px 10px 0px;">${mc.productName}, ${mc.optionName}, ${mc.volume}개</td>
	                                           <td id="tNum" style="text-align:right; padding:10px 0px 10px 0px;">
                                                   ${(mc.price+mc.optionPrice)*mc.volume}
                                               </td>
                                               <td style="width:15px; padding:10px 0px 10px 0px;">원</td>
	                                        </tr>
                                     	</c:forEach>
                                     	
                                        <tr class="summary-subtotal">
                                            <td style="padding:10px 10px 10px 0px;"> 소계 :</td>
                                            <td id="tNum" style="text-align:right; padding:10px 0px 10px 0px;">
                                            	<c:forEach items="${ mpCart }" var="mc" varStatus="stauts">
                                               		<c:set var="total" value="${total+(mc.price + mc.optionPrice)*mc.volume }"/>
                                               	</c:forEach>
                                                <c:out value="${total}" />
											</td>
											<td style="width:15px; padding:10px 0px 10px 0px;">원</td>
                                        </tr><!-- End .summary-subtotal -->
>>>>>>> ryu

                                        <tr>
                                            <td style="padding:10px 10px 10px 0px;">배송 :</td>
                                            <td class="del" id="tNum" colspan='2' style="padding:10px 0px 10px 0px; text-align:right;"></td>
                                        </tr>
                                        
                                                
                                       <tr>
                                           <!-- input 박스 max값에 보유 포인트 넣어야함 -->
                                           <td style="padding:10px 10px 10px 0px;">포인트 사용 : 
	                                           <p>(현재포인트 : 
	                                          	 <em id="tNum" style="font-size: 12px;margin-top: 5px;">${loginMember.point }</em>
	                                           원)</p>
                                           </td>
                                           <td id="tright" style="padding:10px 0px 10px 0px;"> <input id="pointInput" type="number" value="" min="0" max="${loginMember.point }"  maxlength="5"  style="width:80px; background-color: rgb(249, 249, 249); border: 1px solid lightgray;" placeholder="포인트 입력"></td>
                                           <td style="width:15px; padding:10px 0px 10px 0px;">원</td>
                                        </tr><!-- End .summary-subtotal -->
                                        
                                        <tr class="summary-total">
                                           <td>총 금액 :</td>
                                           <td class="tTotal" id="tNum" style="text-align:right;"></td>
                                           <td style="width:15px; padding:10px 0px 10px 0px;">
                                           		원
                                           		<input id="tNum" type="hidden" class="hiddenTotal" value=""/>
                                           </td>
                                        </tr><!-- End .summary-total -->
                                     </tbody>
                                  </table><!-- End .table table-summary -->

                                  <button type="button" class="btn btn-outline-primary-2 btn-order btn-block">
                                     <span class="btn-text">결제하기</span>
                                     <span class="btn-hover-text" onclick="iamport();">결제하기</span>
                                  </button>
                               </div><!-- End .summary -->
                            </aside><!-- End .col-lg-3 -->
                         </div><!-- End .row -->
                     </form>
                   </div><!-- End .container -->
                </div><!-- End .checkout -->
            </div><!-- End .page-content -->
            </main>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  상품결제화면 끝  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

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
                   updateTotalPrice(addr);
               }
           }).open();
       }
   </script>
   
	<script>	
		function iamport(){
			//가맹점 식별코드
			IMP.init('imp73550454');
			IMP.request_pay({
			    pg : 'kakaopay',
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '상품1' , //결제창에서 보여질 이름
			    amount : 100, //실제 결제되는 가격
			    buyer_email : 'iamport@siot.do',
			    buyer_name : '구매자이름',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울 강남구 도곡동',
			    buyer_postcode : '123-456'
			}, function(rsp) {
			    if ( rsp.success ) {
			    	var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			    } else {
			    	 var msg = '결제에 실패하였습니다.';
			         msg += '에러내용 : ' + rsp.error_msg;
			    }
			    alert(msg);
				// 결제검증
				$.ajax({
		        	type : "POST",
		        	url : "verifyIamport/" + rsp.imp_uid 
		        }).done(function(data) {
		        	
		        	console.log(data);
		        	
		        	// 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (import 서버검증)
		        	if(rsp.paid_amount == data.response.amount){
		        		// console.log("첫번쨰 가격" + rsp.paid_amount);
		        		// console.log("두번쨰 가격" + data.response.amount);
		        		
			        	alert("결제 및 결제검증완료");
			        	//ajax
			        	
		        	} else {
		        		alert("결제 실패");
		        	}
		        });
			});
		}
	</script>
	
	<!-- html의 값 천단위 , 찍기 -->
	<script>
		window.addEventListener('load', function () {
	        // 모든 id가 "Num"인 요소를 선택
	        var elements = document.querySelectorAll("#tNum");
	        
	        // 각 요소에 대해 작업 수행
	        elements.forEach(function (element) {
	            var number = parseInt(element.textContent); // 텍스트 내용을 정수로 변환
	            element.textContent = numberWithCommas(number); // 쉼표가 추가된 문자열로 설정
	        });
	    });
	
	    // 천단위마다 쉼표를 추가하는 함수
	    function numberWithCommas(x) {
	        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	    }
	</script>
	
	<!-- 주문내용 계산되는 스크립트 -->
	<script>
	var myPoint = ${loginMember.point};
		var total = Number(${total});
   		var hiddenTotal = 0;
   		tTotal = 0;
   		$(function() {
   	        updateTotalPrice($("#sample6_detailAddress").val());
   	        updateHiddenTotal();
   	    });
	
	<!-- 금액과 지역 조건에 따른 배송비 필터 -->
	    function updateTotalPrice(addr) {
	        if (total > 100000) {
	            $(".del").text("무료");
	            $(".tTotal").text(total.toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	            $(".hiddenTotal").val(total.toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	        } else if (addr.substring(0, 2) === '제주') {
	            $(".del").text("10000원");
	            $(".tTotal").text((total + 10000).toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	            $(".hiddenTotal").val((total + 10000).toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	        } else if (total < 100000) {
	            $(".del").text("5000원");
	            $(".tTotal").text((total + 5000).toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	            $(".hiddenTotal").val((total + 5000).toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	        }
	        hiddenTotal = Number($(".hiddenTotal").val());
	        tTotal = Number($(".tTotal").text());
	        $("#pointInput").val('');
	    }
	    
	<!-- 총 금액 input hidden으로 백업 -->
	    function updateHiddenTotal() {
	        hiddenTotal = Number($(".tTotal").text()); 
	    }
    
    <!-- 포인트 계산 스크립트 -->
        $('#pointInput').on('input', function() {
            var inputValue = $(this).val();
            
            $.ajax({
            	url:'pointUpdate.pr',
            	data:{point:inputValue},
            	success:function(point){
            		
                    if(inputValue === ''){
                    	$(".tTotal").text(hiddenTotal);
                    }else{
	            		ttttotal = hiddenTotal - point;
	                    $(".tTotal").text(ttttotal);
                    }
                    console.log("포인트 계산 완료" + ttttotal);
            	},error(){
            		console.log("포인트 계산 못함");
            	}
            })
        });

    
	<!-- 포인트 입력 input에 조건 함수 -->
	    $(function(){
	        var inputField = document.getElementById("pointInput");
	        var previousValue = inputField.value; // 입력값을 저장하는 변수
	
	        inputField.addEventListener("keyup", function() {
	            var inputValue = parseInt(this.value, 10);
	            
	            if (inputValue > myPoint || inputValue < 0) {
	                this.value = ''; // 입력 값을 비웁니다.
	                $(".tTotal").text(tTotal); // 총합 값을 원래 값으로 복원합니다.
	                alert("보유포인트 안에서 입력해주세요.");
	            }else if(isNaN(inputValue)){
	            	
	            	this.value = ''; // 입력 값을 비웁니다.
	                $(".tTotal").text(tTotal) // 총합 값을 원래 값으로 복원합니다.
	            }
	        });
	    });
    </script>


    
    <jsp:include page="../common/footer.jsp"/>
		                						<tr>
		                							<td>Blue utility pinafore denimdress</td>
		                							<td id="tright">76,000占쏙옙</td>
		                						</tr>
                                                <tr>
                                                    <td>占쏙옙占� :</td>
                                                    <td id="tright">占쏙옙占쏙옙占쏙옙</td>
                                                </tr>
                                                <tr class="summary-subtotal">
                                                    <td>占쌀곤옙 :</td>
                                                    <td id="tright">244,000占쏙옙</td>
                                                </tr><!-- End .summary-subtotal -->
                                                <tr>
                                                    <!-- input 占쌘쏙옙 max占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙트 占쌍억옙占쏙옙占� -->
		                							<td>占쏙옙占쏙옙트 占쏙옙占� : <input type="number" name="" min="100" max="500" style="width:90px; background-color: rgb(249, 249, 249); border: 1px solid lightgray;" placeholder="占쏙옙占쏙옙트 占쌉뤄옙"><p style="font-size: 10px;margin-top: 5px;">(占쏙옙占쏙옙占쏙옙占쏙옙트 : 2200占쏙옙)</p></td>
		                							<td id="tright"> 2,000占쏙옙</td>
		                						</tr><!-- End .summary-subtotal -->
		                						<tr class="summary-total">
		                							<td>占쏙옙 占쌥억옙 :</td>
		                							<td id="tright">244,000占쏙옙</td>
		                						</tr><!-- End .summary-total -->
		                					</tbody>
		                				</table><!-- End .table table-summary -->

		                				<button type="submit" id="kaobtn" class="btn btn-outline-primary-2 btn-order btn-block">
		                					<span class="btn-text">占쌍뱄옙占싹깍옙</span>
		                					<span class="btn-hover-text">占쌍뱄옙占싹깍옙</span>
		                				</button>
		                			</div><!-- End .summary -->
		                		</aside><!-- End .col-lg-3 -->
		                	</div><!-- End .row -->
            			</form>
	                </div><!-- End .container -->
                </div><!-- End .checkout -->
            </div><!-- End .page-content -->
            
            <script>
            	$("#kaobtn").click(function(){
            		$.ajax({
            			type:'get',
            			url:'/pay/read',
            			data:{
            				item_name:"占쏙옙占쏙옙占쏙옙 14 pro",
            				quantity:"1",
            				total_amount:"1400000",
            				tax_free_amount:"0"
            			},
            			success:function(res){
            				location.href=res.next_redirect_moblie_url;
            			}
            		})
            	})
            </script>
            
            <script>
			    function sample6_execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                // 占싯억옙占쏙옙占쏙옙 占싯삼옙占쏙옙占� 占쌓몌옙占쏙옙 클占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쌘드를 占쌜쇽옙占싹댐옙 占싸븝옙.
			
			                // 占쏙옙 占쌍쇽옙占쏙옙 占쏙옙占쏙옙 占쏙옙칙占쏙옙 占쏙옙占쏙옙 占쌍소몌옙 占쏙옙占쏙옙占싼댐옙.
			                // 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙荑� 占쏙옙占쏙옙('')占쏙옙占쏙옙 占쏙옙占쏙옙占실뤄옙, 占싱몌옙 占쏙옙占쏙옙占싹울옙 占싻깍옙 占싼댐옙.
			                var addr = ''; // 占쌍쇽옙 占쏙옙占쏙옙
			                var extraAddr = ''; // 占쏙옙占쏙옙占쌓몌옙 占쏙옙占쏙옙
			
			                //占쏙옙占쏙옙微占� 占쏙옙占쏙옙占쏙옙 占쌍쇽옙 타占쌉울옙 占쏙옙占쏙옙 占쌔댐옙 占쌍쇽옙 占쏙옙占쏙옙 占쏙옙占쏙옙占승댐옙.
			                if (data.userSelectedType === 'R') { // 占쏙옙占쏙옙微占� 占쏙옙占싸몌옙 占쌍소몌옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占�
			                    addr = data.roadAddress;
			                } else { // 占쏙옙占쏙옙微占� 占쏙옙占쏙옙 占쌍소몌옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占�(J)
			                    addr = data.jibunAddress;
			                }
			
			                // 占쏙옙占쏙옙微占� 占쏙옙占쏙옙占쏙옙 占쌍소곤옙 占쏙옙占싸몌옙 타占쏙옙占싹띰옙 占쏙옙占쏙옙占쌓몌옙占쏙옙 占쏙옙占쏙옙占싼댐옙.
			                if(data.userSelectedType === 'R'){
			                    // 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占� 占쌩곤옙占싼댐옙. (占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙)
			                    // 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙占쌘곤옙 "占쏙옙/占쏙옙/占쏙옙"占쏙옙 占쏙옙占쏙옙占쏙옙.
			                    if(data.bname !== '' && /[占쏙옙|占쏙옙|占쏙옙]$/g.test(data.bname)){
			                        extraAddr += data.bname;
			                    }
			                    // 占실뱄옙占쏙옙占쏙옙 占쌍곤옙, 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쌩곤옙占싼댐옙.
			                    if(data.buildingName !== '' && data.apartment === 'Y'){
			                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                    }
			                    // 표占쏙옙占쏙옙 占쏙옙占쏙옙占쌓몌옙占쏙옙 占쏙옙占쏙옙 占쏙옙占�, 占쏙옙호占쏙옙占쏙옙 占쌩곤옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쌘울옙占쏙옙 占쏙옙占쏙옙占�.
			                    if(extraAddr !== ''){
			                        extraAddr = ' (' + extraAddr + ')';
			                    }
			                    // 占쏙옙占쌌듸옙 占쏙옙占쏙옙占쌓몌옙占쏙옙 占쌔댐옙 占십드에 占쌍는댐옙.
			                    document.getElementById("sample6_extraAddress").value = extraAddr;
			                
			                } else {
			                    document.getElementById("sample6_extraAddress").value = '';
			                }
			
			                // 占쏙옙占쏙옙占쏙옙호占쏙옙 占쌍쇽옙 占쏙옙占쏙옙占쏙옙 占쌔댐옙 占십드에 占쌍는댐옙.
			                document.getElementById('sample6_postcode').value = data.zonecode;
			                document.getElementById("sample6_address").value = addr;
			                // 커占쏙옙占쏙옙 占쏙옙占쌍쇽옙 占십듸옙占� 占싱듸옙占싼댐옙.
			                document.getElementById("sample6_detailAddress").focus();
			            }
			        }).open();
			    }
			</script>
            
            
            <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>