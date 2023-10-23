<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
    .entry-cats >span{
        color: rosybrown;
    }

    .entry-content{
        width: 250px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
    }

	    
</style>

</head>
<body>
<!-- 이쪽에 메뉴바 포함 할꺼임 -->
     <jsp:include page="../common/header.jsp"/>

     <br><br>
     <main class="main">
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">중고거래 게시판<span>Community</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Community</a></li>
                    <li class="breadcrumb-item active" aria-current="page">중고거래 게시판</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="container">
                <nav class="blog-nav">
                    <ul class="menu-cat entry-filter justify-content-center">
                        <li class="active"><a href="#" data-filter="*">전체</a></li>
                        <li><a href="#" data-filter=".electronic">전자기기</a></li>
                        <li><a href="#" data-filter=".book">도서</a></li>
                        <li><a href="#" data-filter=".clothes">의류</a></li>
                        <li><a href="#" data-filter=".daily necessity">생필품</a></li>
                        <li><a href="#" data-filter=".stationery">문구류</a></li>
                    </ul><!-- End .blog-menu -->
                </nav><!-- End .blog-nav -->

                <div class="entry-container max-col-4" data-layout="fitRows">
                	
                	<c:forEach var="t" items="${ tlist }" >
                	
                	
                    <div class="entry-item  ${ t.tag } col-sm-6 col-md-4 col-lg-3">
                    <input type="hidden" name="tboardNo" value="${t.tboardNo}">
                    
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media">
                                <a href="#">
                                    <img src="${ t.thumbnail }" alt="image desc" style="height: 200px;">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>${ t.createDate }</span>
                                    <span class="meta-separator">|</span>
                                    <span>${ t.count } 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="#">${ t.tboardTitle }</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>${ t.tag }</span>
                                    
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>${ t.tboardContent } </p>
                                   
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->

					</c:forEach>

            

			<script>
			    $(function() {
			        $(".entry-item a>img, .entry-title a").click(function() {
			            var tboardNo = $(this).closest(".entry-item").find("input[name='tboardNo']").val();
			            location.href = 'tBoardDetail.bo?tboardNo=' + tboardNo;
			        });
			    });
			</script>
			
            



                
                
                
                
				<!-- 여기확인 -->
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br>
				
                <nav aria-label="Page navigation">
	                <ul class="pagination" style="margin-left: 500px;">
						
						<c:choose>
						    <c:when test="${pi.currentPage eq 1}">
						        <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
						    </c:when>
						    <c:otherwise>
						        <li class="page-item"><a class="page-link" href="tboardList.bo?cpage=${pi.currentPage - 1}&pageNo=">이전</a></li>
						    </c:otherwise>
						</c:choose>
						
						<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
						    <li class="page-item"><a class="page-link" href="tboardList.bo?cpage=${p}">${p}</a></li>
						</c:forEach>
						
						<c:choose>
						    <c:when test="${pi.currentPage eq pi.maxPage ||  pi.listCount eq 0 }">
						        <li class="page-item disabled"><a class="page-link" href="#">다음</a></li>
						    </c:when>
						    <c:otherwise>
						        <li class="page-item"><a class="page-link" href="tboardList.bo?cpage=${pi.currentPage + 1}">다음</a></li>
						    </c:otherwise>
						</c:choose>
	                </ul>
	                <c:if test="${ not empty loginMember }">
	                    <a class="btn btn-outline-primary-2" style="float:right;" style="float: right;" href="tboardEnrollForm.bo">작성하기</a>
	                </c:if>
                </nav>
                
                
                
                
            </div><!-- End .container -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->
    
    <br><br><br><br>
    
    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
    
    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>

</body>
</html>