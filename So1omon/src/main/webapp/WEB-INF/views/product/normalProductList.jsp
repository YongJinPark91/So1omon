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
       <!-- 메인 배너 -->
        <main class="main">
        	<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        		<div class="container-fluid">
        			<h1 class="page-title">${category }<span>Shop</span></h1>
        			<input id="category" type=hidden value="${category }">
        		</div><!-- End .container-fluid -->
        	</div><!-- End .page-header -->

            <div class="page-content">
                <div class="container">
        			<div class="toolbox">
        			
                        <div class="toolbox-center">
                            <div class="toolbox-info">
                                Showing <span>Total : ${fn:length(productList)} </span> Products
                            </div><!-- End .toolbox-info -->
                        </div><!-- End .toolbox-center -->

        				<div class="toolbox-right">
        					<div class="toolbox-sort">
        						<label for="sortby">Sort by:</label>
        						<div class="select-custom">
									<select name="sortby" id="sortby" class="form-control">
										<option value="" selected="selected">==정렬==</option>
										<option value="popularity">인기순</option>
										<option value="rating">평점순</option>
										<option value="count">조회순</option>
										<option value="date">최신순</option>
									</select>
								</div>
        					</div><!-- End .toolbox-sort -->
        				</div><!-- End .toolbox-right -->
        			</div><!-- End .toolbox -->

                    <div class="products">
                        <div class="row" id="productDetail">
                        <c:forEach var="p" items="${productList }">
                            <div class="col-6 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                                <div class="product">
                                    <figure class="product-media">
                                    	<c:if test="${p.score >= 20 }">
                                        	<span class="product-label label-top">Top</span>
                                        </c:if>
                                    	<c:if test="${p.newterm <= 604800 }">
                                        	<span class="product-label label-new">New</span>
                                        </c:if>
                                        <a href="productDetail.mj?pno=${p.productNo }">
                                            <img src="${p.thumbnail }" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a onclick="addWish('${p.productNo }','${p.productName }');" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">${p.categoryS }</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="#">${p.productName }</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            ${p.price }
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: ${p.avgReview*20}%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( ${p.reviewCount } Reviews ) | 👁 ${p.count }</span>
                                        </div><!-- End .rating-container -->
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
	
<script>
    $(document).ready(function() {
        let category = $("#category").val();
        console.log("카테고리명 : "+category);
    	
        $('#sortby').on('change', function() {
       		console.log($(this).val());
       		$.ajax({
       			url:"normalList.controller",
       			data:{
       				keyword:$(this).val(),
       				changeKey:category
       			},
       			success:data => {
       				console.log("ajax 일반상품 조회 형태 변경 성공");
       				console.log(data);
       				let value = "";
       				
       				for(let i in data){
       					value += `
                            <div class='col-6 col-md-4 col-lg-4 col-xl-3 col-xxl-2'>
	                            <div class='product'>
	                                <figure class='product-media'>`;
	                                
								    if(data[i].score >= 20) {
								        value += "<span class='product-label label-top'>Top</span>";
								    }
									if(data[i].newterm <= 604800) {
								        value += "<span class='product-label label-new'>New</span>";
								    }
									
                                    value += `
	                                    <a href='productDetailView.yj?pno="`+data[i].productNo+`"'>
	                                        <img src='`+data[i].thumbnail+`' alt='Product image' class='product-image'>
	                                    </a>
	
	                                    <div class='product-action-vertical'>
	                                        <a onclick='addWish("`+data[i].productNo+`","`+ data[i].productName +`");' class='btn-product-icon btn-wishlist btn-expandable'><span>add to wishlist</span></a>
	                                    </div><!-- End .product-action -->
	
	                                </figure><!-- End .product-media -->
	
	                                <div class='product-body'>
	                                    <div class='product-cat'>
	                                        <a href='#'>`+data[i].category+`</a>
	                                    </div><!-- End .product-cat -->
	                                    <h3 class='product-title'><a href='#'>`+data[i].productName+`</a></h3><!-- End .product-title -->
	                                    <div class='product-price'>
	                                        `+data[i].price+`
	                                    </div><!-- End .product-price -->
	                                    <div class='ratings-container'>
	                                        <div class='ratings'>
	                                            <div class='ratings-val' style='width: `+data[i].avgReview*20+`%;'></div><!-- End .ratings-val -->
	                                        </div><!-- End .ratings -->
	                                        <span class='ratings-text'>( `+data[i].reviewCount+` Reviews ) | 👁 `+data[i].count+`</span>
	                                    </div><!-- End .rating-container -->
	                                </div><!-- End .product-body -->
	                            </div><!-- End .product -->
	                        </div><!-- End .col-sm-6 col-lg-4 col-xl-3 -->`;
       				}
       				$("#productDetail").html(value);
       				
       			},
       			error:()=>{
       				console.log("ajax 일반상품 조회 형태 변경 실패");
       			}
       		})
        });
    });
</script>




</body>
</html>