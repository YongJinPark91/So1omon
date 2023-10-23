<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>


        <main class="main">
        	<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        		<div class="container-fluid">
        			<h1 class="page-title">검색 결과<span>search</span></h1>
        		</div><!-- End .container-fluid -->
        	</div><!-- End .page-header -->
            <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
                <div class="container-fluid">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item"><a href="#">No Sidebar</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Fullwidth</li>
                    </ol>
                </div><!-- End .container-fluid -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
                <div class="container-fluid">
        			<div class="toolbox">
        				<div class="toolbox-left">
                            <h5 style="margin-bottom: 0px;">'${ keyword }'의 검색결과는 총 '${ blist.size() + tblist.size() + plist.size() }'건 입니다. </h5>
        				</div><!-- End .toolbox-left -->
        			</div><!-- End .toolbox -->
                    <br><br><br>
                    
                    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  상품 리스트 폼 시작  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                    
                    <h4 style="box-sizing: border-box; float: left;">검색 관련 상품 '${ plist.size() }'건 </h4><a href="" style="float: right;">더보기</a>
                    <br>
                    <hr style="margin-top: 5px;">
                    <div class="products">
                        <div class="row">
                        <c:forEach var="p" items="${ plist }" >
                            <div class="col-6 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                                <div class="product">
                                    <figure class="product-media">
                                    	<c:choose>
                                    		<c:when test="${ p.sale > 0 }">
		                                        <span class="product-label label-new">${ p.sale }% off</span>
                                    		</c:when>
                                    		<c:otherwise>
                                    		
                                    		</c:otherwise>
                                    	</c:choose>
                                        <a href="product.html">
                                            <img src="${ p.thumbnail }" alt="Product image" class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>찜하기</span></a>
                                        </div><!-- End .product-action -->

                                       
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <p>${ p.category }</p>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a href="product.html">${ p.productName }</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            ${ p.status }원 <!-- 이거 price인데 7,000원 폼으로 바꾸려면 String이라서 type이 String인 status로 사용함 -->
                                        </div><!-- End .product-price -->
                                        <div class="ratings-container">
                                            <div class="ratings">
                                            	<c:choose>
                                            		<c:when test="${ p.avgReview == 1 }">
		                                                <div class="ratings-val" style="width: 20%;">
		                                                	::before
		                                                </div>
                                            		</c:when>
                                            		<c:when test="${ p.avgReview == 2 }">
                                            			<div class="ratings-val" style="width: 40%;">
		                                                	::before
		                                                </div>
                                            		</c:when>
                                            		<c:when test="${ p.avgReview == 3 }">
                                            			<div class="ratings-val" style="width: 60%;">
		                                                	::before
		                                                </div>
                                            		</c:when>
                                            		<c:when test="${ p.avgReview == 4 }">
                                            			<div class="ratings-val" style="width: 80%;">
		                                                	::before
		                                                </div>
                                            		</c:when>
                                            		<c:when test="${ p.avgReview == 5 }">
                                            			<div class="ratings-val" style="width: 100%;">
		                                                	::before
		                                                </div>
                                            		</c:when>
                                            		<c:otherwise></c:otherwise>
                                            	</c:choose>
                                            </div><!-- End .ratings -->
                                            <span class="ratings-text">( ${ p.reviewCount } Reviews )</span>
                                        </div><!-- End .rating-container -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .col-sm-6 col-lg-4 col-xl-3 -->
						</c:forEach>
						
                        </div><!-- End .row -->
                    </div><!-- End .products -->
                    <br><br>
          
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  상품 리스트폼 끝  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->


<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  중고게시판 리스트폼 시작  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

            <h4 style="box-sizing: border-box; float: left;">중고게시판 '${ tblist.size() }'건 </h4><a href="" style="float: right;">더보기</a>
            <br>
            <hr style="margin-top: 5px;">
            <div class="entry-container max-col-4" data-layout="fitRows">
                                  
                <c:forEach var="b" items="${ tblist }" > 
	                <div class="entry-item lifestyle shopping col-sm-6 col-md-4 col-lg-3">
	                    <article class="entry entry-grid text-center">
	                        <figure class="entry-media">
	                            <a href="single.html">
	                                <img src="assets/images/blog/grid/4cols/post-1.jpg" alt="image desc">
	                            </a>
	                        </figure><!-- End .entry-media -->
	
	                        <div class="entry-body">
	                            <div class="entry-meta">
	                                <p>${ b.createDate }</p>
	                                <span class="meta-separator">|</span>
	                                <p>댓글 (2)</p>
	                            </div><!-- End .entry-meta -->
	
	                            <h2 class="entry-title">
	                                <a href="single.html">${ b.tboardTitle }</a>
	                            </h2><!-- End .entry-title -->
	
	                            <div class="entry-cats">
	                                #코트, #흰색, #신생아룩
	                            </div><!-- End .entry-cats -->
	
	                            <div class="entry-content">
	                                <a href="single.html" class="read-more">자세히보기</a>
	                            </div><!-- End .entry-content -->
	                        </div><!-- End .entry-body -->
	                    </article><!-- End .entry -->
	                </div><!-- End .entry-item -->
                </c:forEach> 
            </div>
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  중고게시판 리스트폼 끝  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->



<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  자유게시판 리스트폼 시작  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

            <h4 style="box-sizing: border-box; float: left;">자유게시판 '${ blist.size() }'건 </h4><a href="" style="float: right;">더보기</a>
            <br>
            <hr style="margin-top: 5px;">
            <div class="entry-container max-col-4" data-layout="fitRows">
                         
                
                <table id="boardList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th>글번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                  </tr>
                </thead>
                <tbody>
					<c:forEach var="b" items="${blist}">
					    <tr>
					        <td>${b.boardNo}</td>
					        <td>
					       	 	${b.boardTitle}
					       	 	(${ b.reply })
					       	 	<c:choose>
					       	 		<c:when test="${not empty b.filePath}">
					       	 			👀      	 		</c:when>
					       	 		<c:otherwise>
					       	 		</c:otherwise>
					       	 	</c:choose>
					        </td>
					        <td>${b.userId}</td>
					        <td>${b.createDate}</td>
					        <td>${ b.count }</td>
					    </tr>
					</c:forEach>
                </tbody>
            </table>

            </div>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  게시판 리스트폼 끝  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                </div><!-- End .container-fluid -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->

	<jsp:include page="../common/footer.jsp"></jsp:include>
	
</body>
</html>