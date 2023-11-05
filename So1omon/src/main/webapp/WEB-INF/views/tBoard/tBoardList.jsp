<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고 게시판</title>


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
    

	.entry-container {
	    display: flex;
	    flex-wrap: wrap;
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


        <div class="page-content" style="float:buttom; width:100%;" >
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
		
<!--                 <div class="entry-container max-col-4" data-layout="fitRows"> -->
				<div class="entry-container max-col-4" data-layout="fitRows" id="entry-container">

            
	
					<script>
					    $(function() {
					        $(".entry-item a>img, .entry-title a").click(function() {
					            var tboardNo = $(this).closest(".entry-item").find("input[name='tboardNo']").val();
					            location.href = 'tBoardDetail.bo?tboardNo=' + tboardNo;
					        });
					    });
					</script>
				
	
	            </div><!-- End .container -->


                
                
                <input type="hidden" id="cpage" name="cpage" value="1">
                
                
                
                <script>
                
                $(function(){
                	
              	  
                    let num = 1; // RowBounds offset 셋팅
                    let limit = 4; // 처음 띄울 개수
                	boardList(num, limit);
                	
                	
                	// 스크롤 이벤트 수정
                	$(window).scroll(function () {
                	    let $window = $(this);
                	    let scrollTop = $window.scrollTop();
                	    let windowHeight = $window.height();
                	    let documentHeight = $(document).height();

                	    if (scrollTop + windowHeight + 10 >= documentHeight) {
                	        num = num + 1;
                	        boardList(num, limit);
                	    }
                	});

                	
                    
              	
              	
              	})
	                
	       		function boardList(num, limit){
	                	$.ajax({
	                		url:"tboardListAll.bo",
	                		data:{
	                			num:num,
	                			limit:limit
	                		},
	                		success:function(tlist){

								
								let value = "";
              			        
              			        for(let i in  tlist){
              			        	value += `
              	                        <div class="entry-item `+tlist[i].tag+` col-sm-6 col-md-4 col-lg-3">

              		                    <input type='hidden' name='tboardNo' value='`+tlist[i].tboardNo+`'>
              		                    
              		                        <article class='entry entry-grid text-center'>
              		                            <figure class='entry-media'>
              		                                <a href='#'>
              		                                    <img src='`+tlist[i].thumbnail+`' alt='image desc' style='height: 200px;'>
              		                                </a>
              		                            </figure>

              		                            <div class='entry-body'>
              		                                <div class='entry-meta'>
              		                                    <span>`+tlist[i].createDate+`</span>
              		                                    <span class='meta-separator'>|</span>
              		                                    <span>`+tlist[i].count+` 조회수</span>
              		                                </div>

              		                                <h2 class='entry-title'>
              		                                    <a href='#'>`+tlist[i].tboardTitle+`</a>
              		                                </h2>

              		                                <div class='entry-cats'>`;
              		                                
              		                                	if(tlist[i].tag === 'electronic'){
															value += "<span>전자기기</span>";            		                                		
              		                                	}else if(tlist[i].tag === 'book'){
              		                                		value += "<span>도서</span>";
              		                                	}else if(tlist[i].tag === 'clothes'){
              		                                		value += "<span>의류</span>";
              		                                	}else if(tlist[i].tag === 'dailyNecessity'){
              		                                		value += "<span>생필품</span>";
              		                                	}else if(tlist[i].tag === 'stationery'){
              		                                		value += "<span>문구류</span>";
              		                                	}
              		                                
              		                                	
              		                               value += `     
              		                                </div>

              		                                <div class='entry-content'>
              		                                    <p>`+tlist[i].tboardContent+`</p>
              		                                   
              		                                </div>
              		                            </div>
              		                        </article>
              		                    </div>`;

              							
              			        }
              			        
              			        $(".entry-container").append(value);
                         
            				    $(function() {
            				        $(".entry-item a>img, .entry-title a").click(function() {
            				            var tboardNo = $(this).closest(".entry-item").find("input[name='tboardNo']").val();
            				            location.href = 'tBoardDetail.bo?tboardNo=' + tboardNo;
            				        });
            				    });
								
								
	                		},
	                		error:function(list){
	                			console.log("멤버 조회 ajax 통신 실패!");	
	                		}
	                		
	                		
	                	})
	                }
                

	                
	
                </script>
                

                
                
         </div><!-- End .page-content -->
       </div><!-- End .page-content -->
    </main><!-- End .main -->
    
    
    
    

        <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>