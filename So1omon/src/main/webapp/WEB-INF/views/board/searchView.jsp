<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.read-more:hover{
		cursor:pointer;
	}
	
	.product:hover{
		cursor:pointer;
	}
	
	#boardList>tbody>tr:hover {
        cursor: pointer;
    }
</style>
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

                </div><!-- End .container-fluid -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
                <div class="container-fluid">
        			<div class="toolbox">
        				<div class="toolbox-left">
                            <h5 style="margin-bottom: 0px;">'${ keyword }'의 검색결과는 총 '${ blist.size() + tblist.size() + plist.size() }'건 입니다. </h5>
        				</div><!-- End .toolbox-left -->
        			</div><!-- End .toolbox -->
                    <br>
                    
                    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                    <!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  상품 리스트 폼 시작  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                    
                    <h4 style="box-sizing: border-box; float: left;">검색 관련 상품 '${ plist.size() }'건 </h4>
    	                <c:if test="${not empty plist }">
	        	            <a href="nomalProduct.yj?categoryS=침실&categoryL=가구" style="float: right;">더보기</a>
        	            </c:if>
                    <br>
                    <hr style="margin-top: 5px;">
                    <div class="products">
                        <div class="row">
                        <c:forEach var="p" items="${ plist }" >
                            <div class="col-6 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                                <div class="product">
                                    <figure class="product-media">
                                    <input type="hidden" class="productNo" value="${p.productNo }">
                                    	<c:choose>
                                    		<c:when test="${ p.sale > 0 }">
		                                        <span class="product-label label-new">${ p.sale }% off</span>
                                    		</c:when>
                                    		<c:otherwise>
                                    		
                                    		</c:otherwise>
                                    	</c:choose>
                                            <img src="${ p.thumbnail }" alt="Product image" class="product-image">
                                        <div class="product-action-vertical">
                                            <a onclick='addWish("${p.productNo}","${p.productName }")' class="btn-product-icon btn-wishlist btn-expandable"><span>찜하기</span></a>
                                        </div><!-- End .product-action -->

                                       
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <p>${ p.category }</p>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title">${ p.productName }</h3><!-- End .product-title -->
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
	                    
	               	<script>
					    $(function() {
					        $(".product-body").click(function() {
					        	var productNo = $(".productNo").val();
					        	console.log("상품번호 나와라 " + productNo);
					            location.href = 'productDetail.mj?pno=' + productNo;
					            
					        });
					    });
					</script>  
					
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
                        <div id="toast-container" style="position:fixed; bottom:1rem; right:1reml; z-index:9999;">
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
                        <div id="toast-container">
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
		
          
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  상품 리스트폼 끝  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->


<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  중고게시판 리스트폼 시작  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

            <h4 style="box-sizing: border-box; float: left;">중고게시판 '${ tblist.size() }'건 </h4>
            	<c:if test="${ not empty tblist }">	
	            	<a href="tboardList.bo" style="float: right;">더보기</a>
            	</c:if>
            <br>
            <hr style="margin-top: 5px;">
            <div class="entry-container max-col-4" data-layout="fitRows">
                                  
                <c:forEach var="b" items="${ tblist }" > 
	                <div class="entry-item lifestyle shopping col-sm-6 col-md-4 col-lg-3">
	                    <article class="entry entry-grid text-center">
	                        <figure class="entry-media" style="height:300px; border-radius:10px;">
	                                <img src="${b.thumbnail }" alt="image desc" style="height:300px; border-radius:10px;">
	                        </figure><!-- End .entry-media -->
	
	                        <div class="entry-body" style="height:135px;">
	                        <input type="hidden" class="tboardNo" value="${b.tboardNo }">
	                            <div class="entry-meta">
	                                <p>${ b.createDate }</p>
	                                <span class="meta-separator">|</span>
	                                <p>댓글 (2)</p>
	                            </div><!-- End .entry-meta -->
	
	                            <h2 class="entry-title">
	                                <d>${ b.tboardTitle }</d>
	                            </h2><!-- End .entry-title -->
	
	                            <div class="entry-cats">
	                                ${b.tag }
	                            </div><!-- End .entry-cats -->
	
	                            <div class="entry-content">
	                                <a href="tBoardDetail.bo?tboardNo=${b.tboardNo.substring(1)}">자세히보기</a>
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

            <h4 style="box-sizing: border-box; float: left;">자유게시판 '${ blist.size() }'건 </h4>
            	<c:if test="${ not empty blist }">
            		<a href="board.bo" style="float: right;">더보기</a>
            	</c:if>
            <br>
            <hr style="margin-top: 5px;">
            <div class="entry-container max-col-4" data-layout="fitRows">
                         
                
                <table id="boardList" class="table table-hover" align="center" style="text-align:center;">
                <thead>
	                <c:if test="${ not empty blist }">
		                  <tr>
		                    <th>글번호</th>
		                    <th>제목</th>
		                    <th>작성자</th>
		                    <th>작성일</th>
		                    <th>조회수</th>
		                  </tr>
	                 </c:if>
                </thead>
                <tbody>
					<c:forEach var="b" items="${blist}">
					    <tr>
					        <td class="bno">${b.boardNo}</td>
					        <td style="text-align:left;">
					       	 	${b.boardTitle}
					       	 	(${ b.reply })
					       	 	<c:choose>
					       	 		<c:when test="${not empty b.filePath}">
					       	 			👀      	 		
					       	 		</c:when>
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
            
            <script>
			
			    $(function(){
			        $("#boardList>tbody>tr").click(function(){
			            location.href = 'boardDetailView.bo?bno=' + $(this).children(".bno").text();
			        })
			    })
			</script>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  게시판 리스트폼 끝  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
                </div><!-- End .container-fluid -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->

	<jsp:include page="../common/footer.jsp"></jsp:include>
	
</body>
</html>