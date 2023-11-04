<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dkdkdkdkdk</title>


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
    
     .entry-title{
        width: 270px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 1;
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


        <div class="page-content" >
            <div class="container">
                <nav class="blog-nav">
                    <ul class="menu-cat entry-filter justify-content-center">
                        <li class="active"><a href="#" data-filter="*">전체</a></li>
                        <li><a href="#" data-filter=".electronic">전자기기</a></li>
                        <li><a href="#" data-filter=".book">도서</a></li>
                        <li><a href="#" data-filter=".clothes">의류</a></li>
                        <li><a href="#" data-filter=".dailyNecessity">생필품</a></li>
                        <li><a href="#" data-filter=".stationery">문구류</a></li>
                    </ul><!-- End .blog-menu -->
                </nav><!-- End .blog-nav -->

                <div class="entry-container max-col-4" data-layout="fitRows">
                	
<%--                 	<c:forEach var="t" items="${ tlist }" > --%>
                	
<%--                     <div class="entry-item  ${ t.tag } col-sm-6 col-md-4 col-lg-3"> --%>
<%--                     <input type="hidden" name="tboardNo" value="${t.tboardNo}"> --%>
                    
<!--                         <article class="entry entry-grid text-center"> -->
<!--                             <figure class="entry-media"> -->
<!--                                 <a href="#"> -->
<%--                                     <img src="${ t.thumbnail }" alt="image desc" style="height: 200px;"> --%>
<!--                                 </a> -->
<!--                             </figure>End .entry-media -->

<!--                             <div class="entry-body"> -->
<!--                                 <div class="entry-meta"> -->
<%--                                     <span>${ t.createDate }</span> --%>
<!--                                     <span class="meta-separator">|</span> -->
<%--                                     <span>${ t.count } 조회수</span> --%>
<!--                                 </div>End .entry-meta -->

<!--                                 <h2 class="entry-title"> -->
<%--                                     <a href="#">${ t.tboardTitle }</a> --%>
<!--                                 </h2>End .entry-title -->

<!--                                 <div class="entry-cats"> -->
<%-- 		                            <c:choose> --%>
<%-- 									    <c:when test="${t.tag eq 'electronic'}"> --%>
<!-- 											<span>전자기기</span> -->
<%-- 									    </c:when> --%>
<%-- 									    <c:when test="${t.tag eq 'book'}"> --%>
<!-- 											<span>도서</span> -->
	
<%-- 									    </c:when> --%>
<%-- 									    <c:when test="${t.tag eq 'clothes'}"> --%>
<!-- 											<span>의류</span> -->
	
<%-- 									    </c:when> --%>
<%-- 									    <c:when test="${t.tag eq 'dailyNecessity'}"> --%>
<!-- 											<span>생필품</span> -->
	
<%-- 									    </c:when> --%>
<%-- 									    <c:when test="${t.tag eq 'stationery'}"> --%>
<!-- 											<span>문구류</span> -->
	
<%-- 									    </c:when> --%>
<%-- 									</c:choose> --%>
                                    
<!--                                 </div>End .entry-cats -->

<!--                                 <div class="entry-content"> -->
<%--                                     <p>${ t.tboardContent } </p> --%>
                                   
<!--                                 </div>End .entry-content -->
<!--                             </div>End .entry-body -->
<!--                         </article>End .entry -->
<!--                     </div>End .entry-item -->

<%-- 					</c:forEach> --%>

            

			<script>
			    $(function() {
			        $(".entry-item a>img, .entry-title a").click(function() {
			            var tboardNo = $(this).closest(".entry-item").find("input[name='tboardNo']").val();
			            location.href = 'tBoardDetail.bo?tboardNo=' + tboardNo;
			        });
			    });
			</script>
			

            </div><!-- End .container -->

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

					<div class="entry-container max-col-4" data-layout="fitRows">
                        <div class="entry-item  book col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media">
                                    <a href="중고게시판상세보기.html">
                                        <img src="assets/images/blog/grid/4cols/post-1.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <span>2023-10-11</span>
                                        <span class="meta-separator">|</span>
                                        <span>0 조회수</span>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="중고게시판상세보기.html">중고거래 게시판 제목1</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        <span>카테고리명</span>,
                                        <span>카테고리명</span>
                                    </div><!-- End .entry-cats -->

                                    <div class="entry-content">
                                        <p>Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh.  </p>
                                       
                                    </div><!-- End .entry-content -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->

                        <div class="entry-item clothes col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media entry-video">
                                    <a href="중고게시판상세보기.html">
                                        <img src="assets/images/blog/grid/4cols/post-2.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <span>2023-10-11</span>
                                        <span class="meta-separator">|</span>
                                        <span>0 조회수</span>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="중고게시판상세보기.html">중고거래 게시판 제목2</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        <span>카테고리명</span>
                                    </div><!-- End .entry-cats -->

                                    <div class="entry-content">
                                        <p>Morbi purus libero, faucibus commodo quis, gravida id, est. Vestibulumvo lutpat, lacus a ultrices sagittis</p>
                    
                                    </div><!-- End .entry-content -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->
                        
                                               <div class="entry-item clothes col-sm-6 col-md-4 col-lg-3">
                            <article class="entry entry-grid text-center">
                                <figure class="entry-media entry-video">
                                    <a href="중고게시판상세보기.html">
                                        <img src="assets/images/blog/grid/4cols/post-2.jpg" alt="image desc">
                                    </a>
                                </figure><!-- End .entry-media -->

                                <div class="entry-body">
                                    <div class="entry-meta">
                                        <span>2023-10-11</span>
                                        <span class="meta-separator">|</span>
                                        <span>0 조회수</span>
                                    </div><!-- End .entry-meta -->

                                    <h2 class="entry-title">
                                        <a href="중고게시판상세보기.html">중고거래 게시판 제목2</a>
                                    </h2><!-- End .entry-title -->

                                    <div class="entry-cats">
                                        <span>카테고리명</span>
                                    </div><!-- End .entry-cats -->

                                    <div class="entry-content">
                                        <p>Morbi purus libero, faucibus commodo quis, gravida id, est. Vestibulumvo lutpat, lacus a ultrices sagittis</p>
                    
                                    </div><!-- End .entry-content -->
                                </div><!-- End .entry-body -->
                            </article><!-- End .entry -->
                        </div><!-- End .entry-item -->




                	</div><!-- End .entry-container -->






				
                
                
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->      

				<!-- 
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
                 -->
    			
                
                
                
                <input type="hidden" id="cpage" name="cpage" value="1">
                <script>
                
	                let page = 0;
	                let nowPageLimit = 0;
	                let nextPageLimit = 0;
		        	    
	        	   //현재 스크롤 위치 저장
              		let lastScroll = 0;
              		$(()=>{
	              		console.log("여기나오나?");
              			getData();
	              		console.log("여기나오나?123123123");
              		})
              		function getData(limit){
                  		console.log("여기나오나?");
                	    var cpage = $("#cpage").val();

              			
              			//다음페이지
              			nextPageLimit = (page + 1) * limit;
              			console.log("여기나오나?");
              			
              			$.ajax({
              			    url: "tboardListAll.bo",
              			    data: {
              			        cpage: 1
              			    },
              			    success: function (tlist) {
              			        console.log("Ajax 통신 성공");
              			        console.log(tlist+"확인");
              			        
              			        
              			    },
              			    error: function () {
              			        console.log("Ajax 통신 실패");
              			    }
              			});



              		}
              		
              		
              		
              		
              		
              		$(document).scroll(function(e){
              		    //현재 높이 저장
              		    var currentScroll = $(this).scrollTop();
              		    //전체 문서의 높이
              		    var documentHeight = $(document).height();

              		    //(현재 화면상단 + 현재 화면 높이)
              		    var nowHeight = $(this).scrollTop() + $(window).height();


              		    //스크롤이 아래로 내려갔을때만 해당 이벤트 진행.
              		    if(currentScroll > lastScroll){

              		        //nowHeight을 통해 현재 화면의 끝이 어디까지 내려왔는지 파악가능 
              		        //즉 전체 문서의 높이에 일정량 근접했을때 글 더 불러오기)
              		        if(documentHeight < (nowHeight + (documentHeight*0.1))){
              		            console.log("이제 여기서 데이터를 더 불러와 주면 된다.");
              		            
              		        }
              		    }

              		 	getData();
              		    //현재위치 최신화
              		    lastScroll = currentScroll;
              		});
              	  
                </script>
                
                
         </div><!-- End .page-content -->
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