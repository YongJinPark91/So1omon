<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/showdown/1.9.1/showdown.min.js"></script>

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

        img {
        cursor: pointer;
        }

        #like-icon1 {
        display: inline;
        }

        #like-icon2 {
        display: none;
        }


    </style>
</head>
<body>
    <!-- 이쪽에 메뉴바 포함 할꺼임 -->
    <jsp:include page="../common/header.jsp"/>
    <br><br>
    <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        <div class="container">
            <h1 class="page-title">자유게시판 상세보기<span>Community</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    <div class="content">

        <div class="innerOuter">    
            <br>
            <a class="btn btn-outline-primary-2" style="float:right" href="board.bo">목록으로</a>
            <br><br>
            <table id="contentArea" align="center" class="table">
                <tr>
                    <th width="100">제목 ${ b.boardNo }</th>
                    <td colspan="2">${ b.boardTitle }</td>
                    <td>
                        <img src="https://cdn-icons-png.flaticon.com/128/20/20664.png" style="width: 30px;" alt="좋아요1" id="like-icon1">
                        <img src="https://cdn-icons-png.flaticon.com/128/7606/7606143.png" style="width: 30px;" alt="좋아요2" id="like-icon2" style="display: none;">
                        <span>(5개)</span>
                    </td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>${ b.userId }</td>
                    <th>작성일</th>
                    <td>${ b.createDate }</td>
                </tr>
                
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><div id="markdown-content" style="height:150px">${ b.boardContent }</div></td>
                </tr>
            </table>
            <br>
			
			<c:if test="${loginMember.userId eq b.userId || loginMember.userId eq 'admin'}">
	            <div align="center">
	                <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
		                <a class="btn btn-outline-primary-2" id="buttonA"  onclick="postFormSubmit(1);">수정하기</a>
	                    <a class="btn btn-outline-danger" id="buttonB" onclick="postFormSubmit(2);">삭제하기</a>
	            </div><br><br>
	            
	            <form id="postForm" action="" method="post">
	           		<input type="hidden" name="boardNo" value="${ b.boardNo }">
	           	</form>
	            
	            <script>
	       		function postFormSubmit(num){
	       			if(num == 1){ // 수정하기 클릭시
	       				$("#postForm").attr("action","boardUpdateForm.bo").submit();
	       			}else{ // 삭제하기 클릭시
	       				$("#postForm").attr("action","boardDelete.bo").submit();
	       			}
	       		}
	            </script>
            </c:if>
            
            <!-- div markdown 랜더링 -->
		    <script>
		        const markdownText = document.getElementById("markdown-content").innerHTML;
		        const converter = new showdown.Converter();
		        const html = converter.makeHtml(markdownText);
		        document.getElementById("markdown-content").innerHTML = html;
		    </script>
		                
            
            
            
    

            <!-- 댓글 기능은 나중에 ajax 배우고 접목시킬예정! 우선은 화면구현만 해놓음 -->
            <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
	                    <c:choose>
	                    	<c:when test="${not empty loginMember}">
		                        <th colspan="2">
		                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
		                        </th>
		                        <th style="vertical-align: middle">
		                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                            <button class="btn btn-outline-primary-2" onclick="boardAnswer();" >등록하기</button>
		                        </th>
	                    	</c:when>
	                    	<c:otherwise>
	                    		<th colspan="2">
		                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%" readonly>로그인한 사용자만 이용가능한 서비스입니다. 로그인 후 이용바랍니다.</textarea>
		                        </th>
		                        <th style="vertical-align: middle">
		                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                            <button class="btn btn-outline-primary-2" onclick="boardAnswer();" disabled >등록하기</button>
		                        </th>
	                    	
	                    	</c:otherwise>
	                    </c:choose>
                    </tr>
                    <tr>
                       <td colspan="3">댓글 (<span id="rcount">3</span>) </td> 
                    </tr>
                </thead>
                <tbody>


                </tbody>
            </table>
        </div>
        <br><br>
    </div>
    
    <input type="hidden" id="loginMemberId" value="${loginMember.userId}">
   	<input type="hidden" id="boardNo" value="${b.boardNo}">
    <input type="hidden" id="loginMember" value="${loginMember.userNo}">
    <script>
    	$(function(){
    		selectBoardAnswerList();
    		//setInterval(selectAnswerList ,1000);
    	})
    	
    	
		function boardAnswer(){
    		if($("#content").val().trim().length != 0){
    			$.ajax({
    				url:"answerBoardInsert.bo",
    				data:{
    					boardNo:${ b.boardNo},
    					replyContent:$("#content").val(),
    					replyWriter:$("#loginMember").val()
    					
    				},success:function(status){
    					
    					if(status != ""){
    						selectBoardAnswerList();
    						alertify.alert("등록완료!")
    					}

    					
    				},error:function(){
    					console.log("댓글 작성용 ajax 요청 실패!")
    				}
    				
    			})
    		}else{
    			alertify.alert("댓글 작성 후 등록 요청해주세요!")
    		}
    	}
    	
    	
    	
    	
    	function selectBoardAnswerList(){
    		$.ajax({
    			url:"answerBoardlist.bo",
    			data: { boardNo:$("#boardNo").val() },
    			success:function(list){
    				console.log(list);
    				
    				let value = "";
    				for(let i in list){
    					value += "<tr>"
	    					    + "<th style='width: 100px; padding-top: 30px;'>" + list[i].userId + "</th>"
	    					    + "<td style='text-align: left;'>" + list[i].replyContent + "</td>"
	    					    + "<td>&nbsp;&nbsp;&nbsp;" + list[i].createDate + "</td>"
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
    
    
    
    
    
    
    
    
    
    
    
    
    

    <script>
        var likeIcon1 = document.getElementById("like-icon1");
        var likeIcon2 = document.getElementById("like-icon2");

        likeIcon1.addEventListener("click", function() {
            likeIcon1.style.display = "none";
            likeIcon2.style.display = "inline";
        });

        likeIcon2.addEventListener("click", function() {
            likeIcon1.style.display = "inline";
            likeIcon2.style.display = "none";
        });



    </script>
    
    
    


    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>