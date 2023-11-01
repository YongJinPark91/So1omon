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
        		<div class="container-fluid">
        			<h1 class="page-title">타임핫딜<span>Shop</span></h1>
        		</div><!-- End .container-fluid -->
        	</div><!-- End .page-header -->

            <div class="page-content">
                <div class="container">
        			<div class="toolbox">
        			
                        <div class="toolbox-center">
                            <div class="toolbox-info">
                                Showing <span>Total : ${fn:length(hotList)} </span> Products
                            </div><!-- End .toolbox-info -->
                        </div><!-- End .toolbox-center -->
        			</div><!-- End .toolbox -->

                    <div class="products">
                        <div class="row" id="productDetail">
	                        <c:forEach var="h" items="${hotList }">
	                            <div class="col-6 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
	                                <div class="product">
	                                    <figure class="product-media">
	                                    	<c:if test="${h.score >= 20 }">
	                                        	<span class="product-label label-top">Top</span>
	                                        </c:if>
	                                    	<c:if test="${h.newTerm <= 604800 }">
	                                        	<span class="product-label label-new">New</span>
	                                        </c:if>
	                                        <a href="productDetailView.yj?pno=${h.productNo }">
	                                            <img src="${h.thumbnail }" alt="Product image" class="product-image">
	                                        </a>
	                                        <c:choose>
		                                        <c:when test="${h.status == 'S' }">
			                                        <div class="product-countdown" data-until="${h.endTerm }s" data-format="DHMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->
		                                        </c:when>
		                                        <c:otherwise>
		                                        	<div class="product-countdown" data-until="${h.startTerm }s" data-format="DHMS" data-relative="true" data-labels-short="true"></div><!-- End .product-countdown -->
		                                        </c:otherwise>
	                                        </c:choose>
	
	                                        <div class="product-action-vertical">
	                                            <a onclick="addWish('${h.hotNo }','${h.productName }');" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
	                                        </div><!-- End .product-action -->
	
	                                    </figure><!-- End .product-media -->
	
	                                    <div class="product-body">
	                                        <div class="product-cat">
	                                            <a href="hotBuyList.yj?categoryL=${h.categoryL }">${h.categoryS }</a>
	                                        </div><!-- End .product-cat -->
	                                        <h3 class="product-title"><a href="#">${h.productName }</a></h3><!-- End .product-title -->
			                                <div class="product-price">
			                                    <span class="new-price">${h.salePrice }원</span>
			                                    <span class="old-price">${h.originPrice }원</span>
			                                </div><!-- End .product-price -->
	                                        <div class="ratings-container">
	                                            <div class="ratings">
	                                                <div class="ratings-val" style="width: ${h.avgReview*20}%;"></div><!-- End .ratings-val -->
	                                            </div><!-- End .ratings -->
	                                            <span class="ratings-text">( ${h.reviewCount } Reviews ) | 👁 ${h.count }</span>
	                                        </div><!-- End .rating-container -->
	                                        <c:if test="${h.status == 'N' }">
				                                <div class="product-action pt-lg-15" style="background-color:black; opacity:0.65;">
				                                    <a class="btn-product btn-cart pt-lg-15" title="add to cart" style="margin-bottom: 170px;"><span><strong>판매 예정 상품 입니다.</strong></span></a>
				                                </div><!-- End .product-action -->
			                                </c:if>
	                                    </div><!-- End .product-body -->
	                                </div><!-- End .product -->
	                            </div><!-- End .col-sm-6 col-lg-4 col-xl-3 -->
                            </c:forEach>
                        </div><!-- End .row -->

                        <div class="load-more-container text-center">
                            <!--  <a href="#" class="btn btn-outline-darker btn-load-more">더보기 <i class="icon-refresh"></i></a> -->
                        </div><!-- End .load-more-container -->
                    </div><!-- End .products -->
                </div><!-- End .container-fluid -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>