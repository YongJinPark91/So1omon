<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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




</style>
</head>
<body>
        <!-- 이쪽에 메뉴바 포함 할꺼임 -->
        <jsp:include page="../common/header.jsp"/>

        <br><br>
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">공지사항 상세보기<span>Community</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        
        <div class="content">
    
            <div class="innerOuter">
                <br>
                
                <a class="btn btn-outline-primary-2" style="float:right" href="list.bo">목록으로</a>
                <br><br>
                <table id="contentArea" align="center" class="table">
                    <tr>
                        <th width="100">제목</th>
                        <td colspan="3">${ b.boardTitle }</td>
    
                          
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td>admin</td>
                        <th style="text-align: center;">작성일</th>
                        <td>${ b.createDate }</td>
                    </tr>
                    <tr>
    
                    <tr>
                        <th>내용</th>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="4"><div id="markdown-content" style="height:150px">${ b.boardContent }</div></td>
                    </tr>
                </table>
                <br>
   
				<c:if test="${loginMember.userNo eq b.boardWriter || loginMember.userId eq 'admin'}">
		            <div align="center">
		                <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
			                <a class="btn btn-outline-primary-2" id="buttonA" onclick="postFormSubmit(1);">수정하기</a> 
			                <a class="btn btn-outline-danger" id="buttonB" onclick="postFormSubmit(2);">삭제하기</a>
		            </div><br><br>
		            
		            <form id="postForm" action="" method="post">
		           		<input type="hidden" name="bno" value="${ b.boardNo }">
		           	</form>
		           	
		           	<script>
		           		function postFormSubmit(num){
		           			if(num == 1){ // 수정하기 클릭시
		           				$("#postForm").attr("action","noticeUpdateForm.bo").submit();
		           			}else{ // 삭제하기 클릭시
		           				$("#postForm").attr("action","noticeDelete.bo").submit();
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
		                
                
                
                
    

        <!-- 이쪽에 푸터바 포함할꺼임 -->
        <jsp:include page="../common/footer.jsp"/>

</body>
</html>