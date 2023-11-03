<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                                     	<c:forEach items="${mpCart}" var="mc">
	                                        <tr>
	                                           <td id="productName" style="padding:10px 10px 10px 0px;" data-product-name="${mc.productName}">${mc.productName}, ${mc.optionName}, ${mc.volume}개</td>
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
                                           <td id="mcData" style="width:15px; padding:10px 0px 10px 0px;" data-product-no="${mc.productNo } data-product-name="${mc.productName }">원</td>
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

                                  <button type="button" class="btn btn-outline-primary-2 btn-order btn-block" onclick="iamport();">
                                     <span class="btn-text">결제하기</span>
                                     <span class="btn-hover-text">결제하기</span>
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
		var productNo = '';
		var productName = '';
		var optionName = '';
		var volume = '';
		var cartItems = [];
		
		$(function(){
		var mpCartstr = '${mpCart}';	
		cartItems = mpCartstr.match(/Cart\([^)]+\)/g);
		
			// productNo
			for (var i = 0; i < cartItems.length; i++) {
				var productNoMatch = cartItems[i].match(/productNo=([^,]+)/);
		        if (productNoMatch) {
		            productNo += productNoMatch[1] + ' ';
		        }
			}
			
			// productName
			for (var i = 0; i < cartItems.length; i++) {
				var productNameMatch = cartItems[i].match(/productName=([^,]+)/);
		        if (productNameMatch) {
		            productName += productNameMatch[1] + ' ';
		        }
			}
			
			// optionName
			for (var i = 0; i < cartItems.length; i++) {
				var optionNameMatch = cartItems[i].match(/optionName=([^,]+)/);
		        if (optionNameMatch) {
		        	optionName += optionNameMatch[1] + ' ';
		        }
			}
			
			// volume
			for (var i = 0; i < cartItems.length; i++) {
				var volumeMatch = cartItems[i].match(/volume=([^,]+)/);
		        if (volumeMatch) {
		        	volume += volumeMatch[1] + ' ';
		        }
			}
			
		})
			
			function createOrderNum(){
				const date = new Date();
				const year = date.getFullYear();
				const month = String(date.getMonth() + 1).padStart(2, "0");
				const day = String(date.getDate()).padStart(2, "0");
				
				let orderNum = year + month + day;
				for(let i=0;i<10;i++) {
					orderNum += Math.floor(Math.random() * 8);	
				}
				return orderNum;
			}
			
			function createOrderDate(){
				const date = new Date();
				const year = date.getFullYear();
				const month = String(date.getMonth() + 1).padStart(2, "0");
				const day = String(date.getDate()).padStart(2, "0");
				
				let orderNum = year + month + day;
				
				return orderNum;
			}
			
	
		function iamport(){
			var totalPrice = $(".tTotal").text();
			var tracking = '';
			
			//가맹점 식별코드
			IMP.init('imp73550454');
			IMP.request_pay({
			    pg : 'kakaopay',
			    pay_method : 'card',
			    merchant_uid : createOrderNum(), // 주문번호
			    name : productName + '등' + cartItems.length + "개", //결제창에서 보여질 이름
			    amount : totalPrice, //실제 결제되는 가격
			    buyer_email : '${loginMember.email}',
			    buyer_name : '${loginMember.userName}',
			    buyer_tel : '${loginMember.phone}',
			    buyer_addr : '${loginMember.address}',
			    custom_data: {
			    		userNo: '${loginMember.userNo}',
			    		productName: productName,
			            productNo: productNo,
			            volume: volume,
			            optionName: optionName,
			            tracking:new Date().getTime(),
			            orderDate:createOrderDate(),
			            status:'N',
			            memberStatus:'M' 
			    }
			}, function(rsp) {
			    
				// 결제검증
				$.ajax({
		        	type : "POST",
		        	url : "verifyIamport/" + rsp.imp_uid 
		        }).done(function(data) {
		        	var paymentData = [];
		        	console.log(data);
		        	console.log("asdasd  " + data.response.merchantUid);
		        	console.log("asdasd  " + data.response.customData);
		        	
		        	// 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (import 서버검증)
		        	if(rsp.paid_amount == data.response.amount){
		        		
		        		
			        	alert("결제 및 결제검증완료");
			        	//ajax
			        	$.ajax({
			        		url: "productCompletePaymentView.pr",
			        		type: "GET",
			        		data:{
			        			customData:data.customData,
			        			orderNo:data.merchantUid
			        		},success:function(){
			        			console.log("dkd");
			        		},error:function(){
			        			console.log("실패당");
			        		}
			        	})
			        	
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
   		var tTotal = 0;
	    	console.log("total 입니다 " + total);
   		
   		$(function() {
   	        updateTotalPrice($("#sample6_detailAddress").val());
   	        updateHiddenTotal();
   	    });
	
	<!-- 금액과 지역 조건에 따른 배송비 필터 -->
	    function updateTotalPrice(addr) {
	    	console.log("addr 입니다 " + addr);
	    	
	        if (total > 100000) {
	            $(".del").text("무료");
	            $(".tTotal").text(total.toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	            $(".hiddenTotal").val(total.toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	        } else if (total < 100000 && addr.substring(0, 2) == '제주') {
	            $(".del").text("10000원");
	            $(".tTotal").text((total + 10000).toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	            $(".hiddenTotal").val((total + 10000).toLocaleString('ko-KR').replace(/[^0-9.-]+/g,""));
	        } else if (total < 100000 && addr.substring(0, 2) != '제주') {
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
	        var previousValue = inputField.val
	        ue; // 입력값을 저장하는 변수
	
	        inputField.addEventListener("keyup", function() {
	            var inputValue = parseInt(this.value, 10);
	            
	            if (inputValue > myPoint || inputValue < 0 || hiddenTotal < inputValue) {
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
</body>
</html>