<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
        			<h1 class="page-title">비회원 전용<span>information</span></h1>
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
                                        <a class="nav-link" id="tab-wishlist-link" data-toggle="tab" href="#tab-wishlist" 
                                        role="tab" aria-controls="tab-wishlist" aria-selected="false">찜목록</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-cart-link" data-toggle="tab" href="#tab-cart" 
                                            role="tab" aria-controls="tab-dashboard" aria-selected="false">장바구니</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="tab-orders-link" data-toggle="tab" href="#tab-orders" 
                                        role="tab" aria-controls="tab-orders" aria-selected="false">주문내역</a>
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
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  주문내역  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

								    <div class="tab-pane fade" id="tab-orders" role="tabpanel" aria-labelledby="tab-orders-link">
								    	<div class="page-content" onclick="confirm();">
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
                                                                            <a href="#">
                                                                                ${ mo.productName }, ${ mo.optionName }, ${ mo.volume }개
                                                                            </a>

                                                                        </h3><!-- End .product-title -->
                                                                    </div><!-- End .product -->
                                                                
                                                            </td>
                                                            <td>${ mo.orderNo }/<br><a href="#" id="deliveryNo" style="border: none; cursor: pointer;">${ mo.tracking }</a></td>
                                                            <td class="price-col">${ mo.totalPrice }원</td>
                                                            <td class="stock-col"><span class="in-stock">${ mo.orderDate }</span></td>
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
										                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ opi.currentPage - 1 }&mno=${userNo}&tabName=orders">Previous</a></li>
										                    	</c:otherwise>
									                    	</c:choose>
									                    	
									                    	<c:forEach var="p" begin="${ opi.startPage }" end="${ opi.endPage }">
									                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ p }&mno=${userNo}&tabName=orders">${ p }</a></li>
										                    </c:forEach>
										                    <c:choose>
										                    	<c:when test="${ opi.currentPage eq opi.maxPage }">
											                    	<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
											                    </c:when>
											                    <c:otherwise>
											                    	<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ opi.currentPage + 1 }&mno=${userNo}&tabName=orders">Next</a></li>
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

                                                                <button type="button" onclick="movePayment();" class="btn btn-outline-primary-2 btn-order btn-block">결제하기</button>
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
                                                    	
                                                    	
                                                        <tr id="mypost-tr">
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
										                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ wpi.currentPage - 1 }&mno=${userNo}&tabName=myWish">Previous</a></li>
										                    	</c:otherwise>
									                    	</c:choose>
									                    	
									                    	<c:forEach var="p2" begin="${ wpi.startPage }" end="${ wpi.endPage }">
									                    		<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ p2 }&mno=${userNo}&tabName=myWish">${ p2 }</a></li>
										                    </c:forEach>
										                    <c:choose>
										                    	<c:when test="${ wpi.currentPage eq wpi.maxPage }">
											                    	<li class="page-item disabled"><a class="page-link" href="">Next</a></li>
											                    </c:when>
											                    <c:otherwise>
											                    	<li class="page-item"><a class="page-link" href="myPage.me?cpage=${ wpi.currentPage + 1 }&mno=${userNo}&tabName=myWish">Next</a></li>
											                    </c:otherwise>
										                    </c:choose>
									                </ul>
									            </div>
                                                
                                                
                                            </div><!-- End .container -->
                                        </div><!-- End .page-content -->
								    </div><!-- .End .tab-pane -->

								</div>
	                		</div><!-- End .col-lg-9 -->
	                	</div><!-- End .row -->
	                </div><!-- End .container -->
                </div><!-- End .dashboard -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->


        
		
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
	    
	    <!-- 찜목록 삭제 스크립트 -->
   		 <script>
    		$(function(){
    			$(".deleteWish").click(function(){
    				 var productNo = $(this).data("product-no");
    				$.ajax({
    					url: "deleteWish.pr",
    					data:{
    						userNo:${userNo},
    						productNo:productNo
    					},success:function(result){
    						if(result > 0){
    							alert("해당목록 삭제 완료");
    							let url = "myPage.me?mno=" + ${userNo} +  "&tabName=myWish";
    							location.replace(url);
    						}
    					},error:function(){
    						console.log("ajax 마이페이지 찜목록 삭제 실패");
    					}
    				})
    			})
    		})		
    	</script>
        <jsp:include page="../common/footer.jsp"></jsp:include>

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
	
	<!-- 장바구니 리스트와 옵션리스트 불러와서 비교한 후 상품에 맞게 리스트 뿌려주는 ajax 
    -->
	<script>
	var volumes = "";
    var productNos = "";
    var optionNames = "";
        $(function() {
        let totalPriceSum = 0;
		let address = "결제시 주소 입력";
		console.log("사용자 주소" + address);
		
            $.ajax({
                url: "selectMyPageCartAjax1.pr",
                type: "GET", // GET 메서드 사용
                dataType: 'json',
                data: {
                	userNo:${userNo}
                },
                success: function(data) {
                	let value = "";
                	
                    for (let i in data) {
                    	console.log(data[i].productNo.substr(0, 1));
                    	let saleTotal = data[i].saleTotal;
                    	let normalTotal = data[i].normalTotal;
                    	let productNo = data[i].productNo;
                    	value += `
                        
                        <tr>
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
                            
                            if(productNo.substr(0, 1) === 'G'){
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
						console.log(productNo);
						console.log(optionName);
						$.ajax({
							url: "removeCart.jw",
							data:{
								productNo:productNo,
								optionName:optionName
							},success:function(result){
								console.log(result);
								if(result > 0){
									alert("해당목록 삭제 완료");
									let url = "nomemberPage.yj";
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
		            			let url = "nomemberPage.yj";
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
                if (total > 100000) {
                    $(".del").text("무료");
                    $(".tTotal").text(total.toLocaleString('ko-KR') + "원");
                } else if (total < 100000) {
                    $(".del").text("5000원");
                    $(".tTotal").text((total + 5000).toLocaleString('ko-KR') + "원");
                } else if (total < 100000 && address.substring(0, 2)=== '제주') {
                    $(".del").text("10000원");
                    $(".tTotal").text((total + 10000).toLocaleString('ko-KR') + "원");
                }
            }
        });
    </script>
    
    <!-- 결제페이지로 넘어가는 스크립트 -->
   		 <script>
   		 	console.log("유저넘버" + userNo);
    		function movePayment(){
    			location.href = "movePayment.pr?userNo=" + userNo;
    		}
    	</script>
    	
    <script>
    	function confirm() {
			confirm
		}
    </script>
		
        
</body>
</html>