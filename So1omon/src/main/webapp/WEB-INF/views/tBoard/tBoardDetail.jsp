<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    .content{
        width: 1000px;
        margin: auto; 
        
    }

    table * {
        margin: 5px;
    }
    
    table {
        width: 100%;
    }
    .table th{
        padding-top: 30px;
    }
    #buttonA:hover{
        color: white;
    }

    #buttonB:hover{
        color: white;
        background-color: lightcoral;
        border: 1px solid  lightcoral;
    }


    .btn {
        min-width: 110px;
    }

    .table th, .table td {
    padding-top: 3.4rem;
    }
    


    
    

</style>
</head>
<body>
    <!-- 이쪽에 메뉴바 포함 할꺼임 -->
    <jsp:include page="../common/header.jsp"/>
    <br><br>



    
    
    <!--  wssssssssssssss -->
    <div class="bg-light pb-5 mb-4">
        <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
            <div class="container d-flex align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Gallery</li>
                </ol>


            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->
        <div class="container">
            <div class="product-gallery-carousel owl-carousel owl-full owl-nav-dark">
	            <c:forEach var="at" items="${ atList }">
	                <figure class="product-gallery-image">
	                    <img src="${ at.filePath }" data-zoom-image="" style="height: 368px" alt="product image">
	                </figure><!-- End .product-gallery-image -->
				</c:forEach>

            </div><!-- End .owl-carousel -->
        </div><!-- End .container -->
    </div><!-- End .bg-light pb-5 -->




    
    <div class="content">

        <div class="innerOuter">    
            <br>
            <a class="btn btn-outline-primary-2" style="float:right" href="tboardList.bo">목록으로</a>
            <br><br>
            <table id="contentArea" align="center" class="table">
                <tr>
                    <th width="100" style="padding-top: 3.4rem;">제목</th>
                    <td colspan="3">${ t.tboardTitle }</td>
                </tr>
                <tr>
                    <th style="padding-top: 3.4rem;">작성자</th>
                    <td>${ t.userId }</td>
                    <th style="text-align: center; padding-top: 3.4rem;">작성일</th>
                    <td>${ t.createDate }</td>
                </tr>
                <tr>
                    <th style="padding-top: 3.4rem;">가격</th>
                    <td colspan="3">${ t.price }</td>
                </tr>

                
                <c:choose>
				    <c:when test="${t.tag eq 'electronic'}">
				        <tr>
				            <th style="padding-top: 3.4rem;">카테고리</th>
				            <td colspan="3">전자기기</td>
				        </tr>
				    </c:when>
				    <c:when test="${t.tag eq 'book'}">
				        <tr>
				            <th style="padding-top: 3.4rem;">카테고리</th>
				            <td colspan="3">도서</td>
				        </tr>
				    </c:when>
				    <c:when test="${t.tag eq 'clothes'}">
				        <tr>
				            <th style="padding-top: 3.4rem;">카테고리</th>
				            <td colspan="3">의류</td>
				        </tr>
				    </c:when>
				    <c:when test="${t.tag eq 'daily necessity'}">
				        <tr>
				            <th style="padding-top: 3.4rem;">카테고리</th>
				            <td colspan="3">생필품</td>
				        </tr>
				    </c:when>
				    <c:when test="${t.tag eq 'stationery'}">
				        <tr>
				            <th style="padding-top: 3.4rem;">카테고리</th>
				            <td colspan="3">문구류</td>
				        </tr>
				    </c:when>
				</c:choose>
				                
                
                
                
                <tr>
                    <th style="padding-top: 2rem;">내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px">${ t.tboardContent }</p></td>
                </tr>
            </table>
            <br>

            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
                    <a class="btn btn-outline-primary-2" id="buttonA"  onclick="postFormSubmit(1);">수정하기</a>
                    <a class="btn btn-outline-danger" id="buttonB" onclick="postFormSubmit(2);">삭제하기</a>
            </div><br><br>
            
           	<form id="postForm" action="" method="post">
           		<input type="hidden" name="tboardNo" value="${ t.tboardNo }">
           	</form>
            
            <script>
       		function postFormSubmit(num){
       			if(num == 1){ // 수정하기 클릭시
       				$("#postForm").attr("action","tboardUpdateForm.bo").submit();
       			}else{ // 삭제하기 클릭시
       				$("#postForm").attr("action","tboardDelete.bo").submit();
       			}
       		}
            </script>
            
    

            <!-- 댓글 기능은 나중에 ajax 배우고 접목시킬예정! 우선은 화면구현만 해놓음 -->
            <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
                        <th colspan="2">
                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
                        </th>
                        <th style="vertical-align: middle">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" id="secret" value="" name="">
                            <label for="secret">비밀댓글</label><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <button class="btn btn-outline-primary-2" onclick="tboardAnswer();" >등록하기</button>
                            
                                
                        </th>
                    </tr>
                    <tr>
                        <td colspan="3">댓글 (<span id="rcount">3</span>) </td> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>user02</th>
                        <td>댓글입니다.너무웃기다앙</td>
                        <td>2023-03-03</td>
                    </tr>
                    <tr>
                        <th>user01</th>
                        <td>많이봐주세용</td>
                        <td>2023-01-08</td>
                    </tr>
                    <tr>
                        <th>admin</th>
                        <td>댓글입니다ㅋㅋㅋ</td>
                        <td>2022-12-02</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br><br>
    </div>
    
    <script>
    	$(function(){
    		selectTboardAnswer();
    	})
    	
    	function tboardAnswer(){
    		if($("#content").var().trim().length != 0){
    			$.ajax({
    				url:"insertTboardAnswer.bo",
    				data:{
    					qno:${t.tboardNo},
    					acontent:$("#content").val()
    				},success:function(status){
    					
    					if(status == "success"){
    						selectTboardAnswer();
    					}
    					
    				},error:function(){
    					console.log("댓글 작성용 ajax 요청 실패!")
    				}
    				
    			})
    		}else{
    			alertify.alert("댓글 작성 후 등록 요청해주세요!")
    		}
    	}
    	
    	
    	function selectTboardAnswer(){
    		$ajax({
    			url:"TboardAnswerList.bo",
    			data: {
    				qno:${t.tboardNo}
    			},success:function(list){
    				console.log(list);
    				
    				let value = "";
    				for(let i in list){
    					value += "<tr>"
    					    + "<th style='width: 100px; padding-top: 30px;'>" + "admin" + "</th>"
    					    + "<td style='text-align: left;'>" + list[i].acontent + "</td>"
    					    + "<td>&nbsp;&nbsp;&nbsp;" + list[i].adate + "</td>"
							+ "</tr>";
    				}
    				
    				$("#replyArea tbody").html(value);
    				$("#rcount").text(list.length);
    			}, error:function(){
    				console.log("댓글리스트 조회용 ajax 통신 실패!")
    			}
    		})
    	}
    	
    	
    </script>
    
    
    
    
    
    

    
    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
    
    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.elevateZoom.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>
</html>