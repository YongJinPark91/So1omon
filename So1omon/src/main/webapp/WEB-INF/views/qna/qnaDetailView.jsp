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

<style>
    .content{
        width: 1080px;
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
    padding-left: 30px;
    }

</style>
</head>
<body>
    <!-- 이쪽에 메뉴바 포함 할꺼임 -->
    <jsp:include page="../common/header.jsp"/>
    <br><br>
    <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        <div class="container">
            <h1 class="page-title">QNA 상세보기<span>고객 센터</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    <div class="content">

        <div class="innerOuter">    
            <br>
            <a class="btn btn-outline-primary-2" style="float:right" href="qnaList.bo">목록으로</a>
            <br><br>
            <table id="contentArea" align="center" class="table">
                <tr>
                    <th width="100">제목</th>
                    <td colspan="3">${ q.qtitle }</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>${ q.qwriter }</td>
                    <th>작성일</th>
                    <td>${ q.qdate }</td>
                </tr>
                <tr>
                    <th>첨부파일</th>
                    <td colspan="3">
                    	<c:choose>
                    		<c:when test="${ empty a.originName }">
		                    	<!-- 첨부파일이 없는 경우 -->
                    			첨부파일이 없습니다.
                    		</c:when>
                    		<c:otherwise>
    		                    <!-- 첨부파일이 있는 경우-->
	        	                <a href="${ a.filePath }" download="${ a.originName }">${ a.originName }</a>
                    		</c:otherwise>
                    	</c:choose>
                    </td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px">${ q.qcontent }</p></td>
                </tr>
            </table>
            <br>

            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
	                <a class="btn btn-outline-primary-2" id="buttonA" onclick="postFormSubmit(1);">수정하기</a> 
	                <a class="btn btn-outline-danger" id="buttonB" onclick="postFormSubmit(2);">삭제하기</a>
            </div><br><br>
            
            <form id="postForm" action="" method="post">
           		<input type="hidden" name="bno" value="${ q.qno }">
           		<input type="hidden" name="filePath" value="${ a.changeName }" >
           	</form>
           	
           	<script>
           		function postFormSubmit(num){
           			if(num == 1){ // 수정하기 클릭시
           				$("#postForm").attr("action","qnaUpdateForm.bo").submit();
           			}else{ // 삭제하기 클릭시
           				$("#postForm").attr("action","qnaDelete.bo").submit();
           			}
           		}
           	</script>
          
            
            
            
            
            <!-- 댓글 기능은 나중에 ajax 배우고 접목시킬예정! 우선은 화면구현만 해놓음 -->
            <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
                        <th colspan="2" style="padding-left: 25px;">
                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
                        </th>
                        <th style="vertical-align: middle; padding-left: 25px;">
                            <button class="btn btn-outline-primary-2" >등록하기</button>
                        </th>
                    </tr>
                    <tr>
                       <td colspan="3">댓글 (<span id="rcount">3</span>) </td> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th style="width: 100px;">user02</th>
                        <td style="text-align: left;">답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내용답변내내용답변내용답변내용답변내용답변내내용답변내용</td>
                        <td>&nbsp;&nbsp;&nbsp; 2023-03-03</td>
                    </tr>
                    

                </tbody>
            </table>
    

        </div>
        <br><br>
    </div>

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>