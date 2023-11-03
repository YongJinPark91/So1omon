<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        .profileImg{
            border-radius: 50%;
        }

        .group-buy>table{
            width: 90%;
            text-align: center;
        }
        
/*         .group-buy>table>tr{ */
/*             border-bottom: 1px solid #dadada; */
/*         } */
    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>	
	<script>
			$(function(){
				selectEnrollList();
			})
			
			function selectEnrollList(){
						console.log("gg");
						let min = ${p.gbuyMin}
						let userNo = 0;
						
						$.ajax({
							url:"selectGroupEnrollList",
							data:{gno:'${p.gbuyNo}'},
							success:function(eList){
								
								let value = "";
								let count = 0;			
								
								if(eList.length == 0){
						
										value += "<tr>"
											   + "<td colspan='5'>아직 등록된 공동구매가 없습니다. 공동구매를 등록해주세요!</td>"
											   + "</tr>";
									
								}else{
									
									for(let i in eList){
										
										count = Number(eList[i].enrollCount);
										 
										value += "<tr height='60'>";
											if(eList[i].profile != null){
												value += "<td><img src='" + eList[i].profile + "' class='profileImg' width='40' height='40'></td>";												
											}else{
												value += "<td><img src='http://k.kakaocdn.net/dn/dpk9l1/btqmGhA2lKL/Oz0wDuJn1YV2DIn92f6DVK/img_640x640.jpg' class='profileImg' width='40' height='40'></td>";												
											}
									
										value += "<td>" + eList[i].userName.substr(0,1) + "*" + eList[i].userName.substr(2) + " (" + count + "/" + min + ")</td>"  
											   + "<td>" + Number(min-count) + "명 남음</td>"
											   + "<td width='100'>" + eList[i].optionName + "</td>";
											   
										if(count >= min){
											value += "<td><button type='button' class='btn btn-primary btn-rounded' disabled>모집완료</button></td>";
										}else{
											if(${empty loginMember}){
												value += "<td><button type='button' class='btn btn-primary btn-rounded' onclick='alert(`로그인 후 이용 가능합니다`);'>신청하기</button></td>"												
											}else{
												value += "<td><button type='button' class='btn btn-primary btn-rounded' onclick=\"enroll('" + eList[i].enrollNo + "', '" + eList[i].optionName + "');\">신청하기</button></td>";										
											}
										}
										
										value += "</tr>";
									}
								}
								
									$("#enrollList").html(value);
							},
							error:function(){
								console.log("모집 불러오기 ajax 통신 실패@");
							}
							
						})
				}
			
		</script>
		
		<c:if test="${ not empty loginMember }">
		<script>
			function enrollGroup(){
					
					let option = $("#pOption").val();
					
					if(option == "#"){
						alert("옵션을 선택해주세요");
						return;
					}
					
					if(confirm(option.split("/")[0] + " 옵션으로 공동구매를 등록하시겠습니까?")){
						
						if(option != "#"){
							$.ajax({
								url:"enrollGroupBuy",
								data:{
									gbuyNo:'${p.gbuyNo}',
									optionName:option.split("/")[0],
									userId:'${loginMember.userId}'
								},
								success:function(result){
									if(result == "Success"){
										alert("공동구매가 성공적으로 등록되었습니다");
										selectEnrollList();
									}else{
										alert("이미 신청한 공동구매 상품입니다");
									}
								},
								error:function(){
									console.log("공동구매 등록 ajax 실패");
								}
							})
						}
						
					}
					
					
				}
			

			function enroll(enrollNo, optionName){
				console.log("enrollNo : " + enrollNo);
				console.log("optionName : " + optionName);
				
				$.ajax({
					url:"insertGroupBuyer",
					data:{
						enrollNo:enrollNo,
						gbuyMin:${p.gbuyMin},
						userId:'${loginMember.userId}',
						productName:'${p.productName}',
						gbuyNo:'${p.gbuyNo}',
						optionName:optionName
					},
					success:function(result){
						
						if(result == "Fail"){
							alert("이미 해당 상품 공동구매를 신청하였습니다");
							return;
						}else if(result == "Full"){
							alert("모집이 마감되었습니다");
						}else if(result == "Success"){
							alert("신청이 완료되었습니다");
						}
						selectEnrollList();
						showMyCart();
					},
					error:function(){
						console.log("모집 신청 ajax 통신 실패");
					}
				})
			}
		</script>
		</c:if>
		
        <main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container d-flex align-items-center">

                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
                <div class="container">
                    <div class="product-details-top">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="product-gallery product-gallery-separated">
                                    <span class="product-label label-sale">Sale</span>
                                    <figure class="product-separated-item">
                                        <img src="${ p.thumbnail }" data-zoom-image="assets/images/products/single/sticky/1-big.jpg" alt="product image">
                                    </figure>
                                </div><!-- End .product-gallery -->
                            </div><!-- End .col-md-6 -->

                            <div class="col-md-6">
                                <div class="product-details content">
                                    <h1 class="product-title">${ p.productName }</h1><!-- End .product-title -->

                                    <div class="product-price">
                                        <span class="new-price">${ p.sale } 원</span>
                                        <span class="old-price">${ p.price } 원</span>
                                    </div><!-- End .product-price -->

                                    <div class="product-content">
                                        <p>공동구매 완료되면 배송시작🚚 </p>
                                    </div><!-- End .product-content -->

                                    <div class="product-countdown" data-until="2023, 10, 29"></div><!-- End .product-countdown -->

                                    <div class="details-filter-row details-row-size">
                                        <label for="size">옵션:</label>
                                        <div class="select-custom">
                                            <select id="pOption" class="form-control">
                                                <option value="#" selected style="color: lightgray;">${ p.options }</option>
                                            	<c:forEach var="o" items="${ opList }">
	                                                <option value="${o.optionName }/${o.price}">${ o.optionName }
		                                                <c:if test="${ o.price ne 0 }">
		                                                	<label>( + ${o.price } 원)</label>
		                                                </c:if>
	                                                </option>
                                                </c:forEach>
                                            </select>
                                        </div><!-- End .select-custom -->

                                    </div><!-- End .details-filter-row -->

                                    <!-- 공구마켓 참고 -->
                                    <div class="product-details-action">
                                        <a href="productDetail.mj?pno=${ p.productNo }" class="btn btn-outline-primary btn-rounded" style="margin-right: 20px;"><span>혼자 구매하기</span></a>
                                        
                                        <c:choose>
                                        	<c:when test="${ not empty loginMember }">
		                                        <a onclick="enrollGroup();" class="btn btn-outline-primary btn-rounded"><span>공동 구매 등록</span></a>
                                        	</c:when>
											<c:otherwise>
		                                        <a onclick="alert('로그인 후 이용가능합니다.')" class="btn btn-outline-primary btn-rounded"><span>공동 구매 등록</span></a>
											</c:otherwise>                                        	
                                        </c:choose>
<!--                                         <a href="#" class="btn-product btn-wishlist" title="Wishlist" style="margin-left: -120px;"><span>찜하기</span></a> -->

                                    </div><!-- End .product-details-action -->
                                    
                                    

                                    <div class="group-buy" style="font-size: 1.4rem; font-weight: 400;">
                                    	<table id="enrollList">
                                    		
                                    	</table>
                                    </div>

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
                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .product-details-tab -->
                </div><!-- End .container -->
            </div><!-- End .page-content -->
            </div>
        </main><!-- End .main -->
	
	
		
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>