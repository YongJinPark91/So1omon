<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
		<main class="main">
        	<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        		<div class="container">
        			<h1 class="page-title">공동구매<span></span></h1>
        		</div><!-- End .container -->
        	</div><!-- End .page-header -->

            <div class="page-content">
                <div class="container">
        			<div class="toolbox">
        			
                        <div class="toolbox-center">
                            <div class="toolbox-info">
                                Showing <span>Total : ${fn:length(groupBuyList)} </span> Products
                            </div><!-- End .toolbox-info -->
                        </div><!-- End .toolbox-center -->

        				<div class="toolbox-right">
        					<div class="toolbox-sort">
        						<label for="sortby">Sort by:</label>
        						<div class="select-custom">
									<select name="sortby" id="sortby" class="form-control">
										<option value="" selected="selected">==정렬==</option>
										<option value="total">상품전체</option>
										<option value="sale">판매중</option>
										<option value="soon">판매예정</option>
									</select>
								</div>
        					</div><!-- End .toolbox-sort -->
        				</div><!-- End .toolbox-right -->
        			</div><!-- End .toolbox -->
                	
                	<!-- 상품 시작 -->
                	<h2 class="title text-center mb-3"></h2><!-- End .title -->

                    <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow" data-toggle="owl" 
                        data-owl-options='{
                            "nav": false, 
                            "dots": false,
                            "margin": 20,
                            "loop": false,
                            "responsive": {
                                "0": {
                                    "items":2
                                },
                                "480": {
                                    "items":2
                                },
                                "992": {
                                    "items":3
                                },
                                "1200": {
                                    "items":4
                                }
                            }
                        }'>
                        <c:forEach var="g" items="${groupBuyList }">
	                        <c:choose>
	                        
		                        <c:when test="${g.status == 'S' }">
			                        <div class="product">
			                            <figure class="product-media">
	                                    	<c:if test="${g.score >= 20 }">
	                                        	<span class="product-label label-top">Top</span>
	                                        </c:if>
	                                    	<c:if test="${g.newterm <= 604800 }">
	                                        	<span class="product-label label-new">New</span>
	                                        </c:if>
	                                    	<c:if test="${g.sale >= 20 }">
	                                        	<span class="product-label label-sale">Sale</span>
	                                        </c:if>
			                                <a href="product.html">
			                                    <img src="${g.thumbnail }" alt="Product image" class="product-image">
			                                </a>
			                                <div class="product-countdown" data-until="${g.endTerm }s" data-format="DHMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->
			
			                                <div class="product-action-vertical">
			                                    <a onclick="addWish('${g.productNo }','${g.productName }');" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
			                                </div><!-- End .product-action-vertical -->
			
			                            </figure><!-- End .product-media -->
			
			                            <div class="product-body">
			                                <div class="product-cat">
			                                    <a href="#">${g.category }</a>
			                                </div><!-- End .product-cat -->
			                                <h3 class="product-title"><a href="product.html">${g.productName }</a></h3><!-- End .product-title -->
			                                <div class="product-price">
			                                    <span class="new-price">${g.salePrice }원</span>
			                                    <span class="old-price">${g.originPrice }원</span>
			                                </div><!-- End .product-price -->
			                                <div class="ratings-container">
			                                    <div class="ratings">
			                                        <div class="ratings-val" style="width: ${g.rating}%;"></div><!-- End .ratings-val -->
			                                    </div><!-- End .ratings -->
			                                    <span class="ratings-text">( ${g.reviewCount } Reviews ) | 👁 ${g.count }</span>
			                                </div><!-- End .rating-container -->
           				                    <div class='product-action'>
           				                        <a href='#' class='btn-product'><span>${g.gbuyMin }명단위 구매</span></a>
           				                    </div>
			                            </div><!-- End .product-body -->
			                        </div><!-- End .product -->
		                		</c:when>
		                		
		                		<c:otherwise>
			                        <div class="product">
			                            <figure class="product-media">
	                                    	<c:if test="${g.score >= 20 }">
	                                        	<span class="product-label label-top">Top</span>
	                                        </c:if>
	                                    	<c:if test="${g.newterm <= 604800 }">
	                                        	<span class="product-label label-new">New</span>
	                                        </c:if>
	                                    	<c:if test="${g.sale >= 20 }">
	                                        	<span class="product-label label-sale">Sale</span>
	                                        </c:if>
			                                <a href="product.html">
			                                    <img src="${g.thumbnail }" alt="Product image" class="product-image">
			                                </a>
			                                <div class="product-countdown" data-until="${g.startTerm }s" data-format="DHMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->
			
			                                <div class="product-action-vertical">
			                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
			                                </div><!-- End .product-action-vertical -->
			                            </figure><!-- End .product-media -->
			
			                            <div class="product-body">
			                                <div class="product-cat">
			                                    <a href="#">${g.category }</a>
			                                </div><!-- End .product-cat -->
			                                <h3 class="product-title"><a href="product.html">${g.productName }</a></h3><!-- End .product-title -->
			                                <div class="product-price">
			                                    <span class="new-price">${g.salePrice }원</span>
			                                    <span class="old-price">${g.originPrice }원</span>
			                                </div><!-- End .product-price -->
			                                <div class="ratings-container">
			                                    <div class="ratings">
			                                        <div class="ratings-val" style="width: ${g.rating}%;"></div><!-- End .ratings-val -->
			                                    </div><!-- End .ratings -->
			                                    <span class="ratings-text">( ${g.reviewCount } Reviews ) | 👁 ${g.count }</span>
			                                </div><!-- End .rating-container -->
			
			                                <div class="product-action pt-lg-15" style="background-color:black; opacity:0.65;">
			                                    <a onclick="addWish('${g.productNo }','${g.productName }');" class="btn-product btn-cart pt-lg-15" title="add to cart" style="margin-bottom: 170px;"><span><strong>판매 예정 상품 입니다.</strong></span></a>
			                                </div><!-- End .product-action -->
			                            </div><!-- End .product-body -->
			                        </div><!-- End .product -->
		                        </c:otherwise>
		                        
	                        </c:choose>
                        </c:forEach>
                        
                    </div><!-- End .owl-carousel -->                 
                </div><!-- End .container -->      
            </div><!-- End .page-content -->     
        </main><!-- End .main -->
        
<script>
	$(document).ready(function() {
	    $('#sortby').on('change', function() {
	    	console.log($(this).val());
	    	$.ajax({
	    		url:"groupBuy.controller",
	    		data:{
	    			keyword:$(this).val()
	    		},
	    		success:data =>{
	    			console.log("ajax 공구 조회 형태 변경 성공");
	    			console.log(data);
	    			
	    			let value = "";
	    			
	    			for(let i in data){
	    				value += `
    					<div class="owl-item active" style="width: 277px; margin-right: 20px;">
	                        <div class='product'>
	                            <figure class='product-media'>`;
	                            
							    if(data[i].score >= 20) {
							        value += "<span class='product-label label-top'>Top</span>";
							    }
								if(data[i].newterm <= 604800) {
							        value += "<span class='product-label label-new'>New</span>";
							    }
								if(data[i].sale >= 20) {
							        value += "<span class='product-label label-sale'>Sale</span>";
							    }
								value += `
	                                <a href='product.html'>
	                                    <img src='`+data[i].thumbnail+`' alt='Product image' class='product-image'>
	                                </a>`;
								if(data[i].status == 'S') {
									let endTime = data[i].endTerm;
									value += "<div class='product-countdown' data-until='+"+endTime+"' data-format='DHMS' data-relative='true' data-labels-short='true'></div>";
							    }else{
							    	let endTime = data[i].startTerm;
							    	value += "<div class='product-countdown' data-until='+"+endTime+"' data-format='DHMS' data-relative='true' data-labels-short='true'></div>";
							    }	                                
								value += `	
	                                <div class='product-action-vertical'>
										<a onclick='addWish("`+data[i].productNo+`","`+ data[i].productName +`");' class='btn-product-icon btn-wishlist btn-expandable'><span>add to wishlist</span></a>
	                                </div><!-- End .product-action-vertical -->
	
	                            </figure><!-- End .product-media -->
	
	                            <div class='product-body'>
	                                <div class='product-cat'>
	                                	<a href='#'>`+data[i].category+`</a>
	                                </div><!-- End .product-cat -->
	                                <h3 class='product-title'><a href='#'>`+data[i].productName+`</a></h3><!-- End .product-title -->
	                                <div class='product-price'>
	                                    <span class='new-price'>`+data[i].salePrice+`원</span>
	                                    <span class='old-price'>`+data[i].originPrice+`원</span>
	                                </div><!-- End .product-price -->
	                                <div class='ratings-container'>
	                                    <div class='ratings'>
	                                    	<div class='ratings-val' style='width: `+data[i].avgReview*20+`%;'></div><!-- End .ratings-val -->
	                                    </div><!-- End .ratings -->
	                                    <span class='ratings-text'>( `+data[i].reviewCount+` Reviews ) | 👁 `+data[i].count+`</span>
	                                </div><!-- End .rating-container -->`;
	                                
							    if(data[i].status == 'S') {
							        value += "<div class='product-action'>"
							              	+ "<a href='#' class='btn-product'><span>"+data[i].gbuyMin+"명단위 구매</span></a>"
							              + "</div>";
							    }else{
							    	value += "<div class='product-action pt-lg-15' style='background-color:black; opacity:0.65;'>"
                                            	+"<a onclick='addWish('"+data[i].productNo+"','"+data[i].productName+"');' class='btn-product btn-cart pt-lg-15' title='add to cart' style='margin-bottom: 170px;'><span><strong>판매 예정 상품 입니다.</strong></span></a>"
                                          + "</div><!-- End .product-action -->";
							    }
					                    
					          value += `          
	                            </div><!-- End .product-body -->
	                        </div><!-- End .product -->
                        </div>`;
	    			}
	    			$(".owl-stage").html(value);
	    			
    	            $(".product-countdown").each(function() {
    	                let endTime = $(this).data("until");
    	                $(this).countdown({
    	                    until: endTime,
    	                    format: 'DHMS'
    	                });
    	            });
	    		},
	    		error:()=>{
	    			console.log("ajax 공구 조회 형태 변경 실패");
	    		}
	    	})
	    })
	})
</script>






	<jsp:include page="../common/footer.jsp"/>     
</body>
</html>