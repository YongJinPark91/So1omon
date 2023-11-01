<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        			<h1 class="page-title">상품페이지<span>Shop</span></h1>
        		</div><!-- End .container-fluid -->
        	</div><!-- End .page-header -->

            <div class="page-content">
                <div class="container-fluid">
        			<div class="toolbox">
        			
                        <div class="toolbox-center">
                            <div class="toolbox-info">
                                Showing <span>Total : </span> Products
                            </div><!-- End .toolbox-info -->
                        </div><!-- End .toolbox-center -->

        				<div class="toolbox-right">
        					<div class="toolbox-sort">
        						<label for="sortby">Sort by:</label>
        						<div class="select-custom">
									<select name="sortby" id="sortby" class="form-control">
										<option value="popularity" selected="selected">인기순</option>
										<option value="rating">평점순</option>
										<option value="date">최신순</option>
									</select>
								</div>
        					</div><!-- End .toolbox-sort -->
        				</div><!-- End .toolbox-right -->
        			</div><!-- End .toolbox -->

                    <div class="products">
                        <div class="row">
                        <c:forEach var="p" items="${productList }">
                            <div class="col-6 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                                <div class="product">
                                    <figure class="product-media">
                                    	<c:if test="${p.score >= 20 }">
                                        	<span class="product-label label-top">Top</span>
                                        </c:if>
                                    	<c:if test="${p.newterm <= 86400 }">
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
                                            <a href="#">${p.category }</a>
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
    // addWish 함수를 전역 스코프로 이동
    function addWish(num, name) {
        console.log(num);
        $.ajax({
            url: "wishController.yj",
            data: {
                productNo: num,
            },
            success: data => {
                console.log("ajax wish 컨트롤 성공");
                console.log(data);
                console.log(name);
                
                let value = "";
                
                if (data > 0) {
                    console.log("ajax wish 제외 성공");
                    console.log(name);
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
                    console.log(name);
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
                console.log(value);
            },
            error: () => {
                console.log("ajax wish 컨트롤 실패");
            }
        });
    }

</script>

</body>
</html>