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
                    <th style="padding-top: 30px;">작성자</th>
                    <td>${ q.qwriter }</td>
                    <th style="padding-top: 30px;">작성일</th>
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


			<c:if test="${loginMember.userId eq q.qwriter || loginMember.userId eq 'admin'}">
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
			</c:if>
          
            
            <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
                    	<c:choose>
                    		<c:when test="${ loginMember.userId eq 'admin' }">
		                        <th colspan="2" style="padding-left: 25px;">
		                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
		                        </th>
		                        <th style="vertical-align: middle; padding-left: 25px;">
		                            <button class="btn btn-outline-primary-2" onclick="addAnswer();">등록하기</button>
		                        </th>
                    		</c:when>
                    		
                    		<c:when test="${ not empty loginMember  }">
		                        <th colspan="2" style="padding-left: 25px;">
		                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%" readonly>관리자 전용입니다</textarea>
		                        </th>
		                        <th style="vertical-align: middle; padding-left: 25px;">
		                            <button class="btn btn-outline-primary-2" onclick="addAnswer();" disabled>등록하기</button>
		                        </th>
                    		</c:when>
                    		
                    		
                    		<c:otherwise>
                    			<th colspan="2" style="padding-left: 25px;">
		                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%" readonly>로그인한 사용자만 이용가능한 서비스입니다. 로그인후 이용바랍니다.</textarea>
		                        </th>
		                        <th style="vertical-align: middle; padding-left: 25px;">
		                            <button class="btn btn-outline-primary-2" disabled>등록하기</button>
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
    
    <script>
    	$(function(){
    		selectAnswerList();
    		//setInterval(selectAnswerList ,1000);
    	})
    	
    	
    	function addAnswer(){ // 댓글작성용 ajax
    		if($("#content").val().trim().length != 0){ // 유효한 댓글 작성시 => insert ajax요청!
    			$.ajax({
    				url:"answerInsert.bo",
    				data:{
    					qno:${q.qno},
    					acontent:$("#content").val()
    				},success:function(status){
    					
    					if(status != ""){
    						selectAnswerList();
    						alertify.alert("등록완료!")
    					}
    					$("#content").val(""); 
    					
    				},error:function(){
    					console.log("댓글 작성용 ajax 요청 실패!")
    				}
    			})
    			
    		}else{
    			alertify.alert("댓글 작성 후 등록 요청해주세요!")
    		}
    		
    	}
    	
    	
    	
    	
    	
    	
    	
    	
    	function selectAnswerList(){
    		$.ajax({
    			url:"answerlist.bo",
    			data: { qno: ${q.qno} },
    			success:function(list){
    				console.log(list);
    				let lm = "${loginMember.userId}";
    				let value = "";
    				for(let i in list){
    					value += "<tr>"
	    					    + "<th style='width: 100px; padding-top: 30px;'>" + "admin" + "</th>"
	    					    + "<td style='text-align: left;'>" + list[i].acontent + "</td>"
	    					    + "<td>&nbsp;&nbsp;&nbsp;" + list[i].adate + "</td>"
	    					    
	    					    if(lm == 'admin'){
	 				     	        value +=  "<td class='remove-col'><button class='btn-remove' onclick='deleteAnswer("+list[i].ano+");' ><i class='icon-close'></i></button></td>"
	    					    }

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
    
   
    <input type="hidden" id="qno" value="${q.qno}">
   	<script>

   	
	    function deleteAnswer(ano) {
 	        $.ajax({
	            url: "deleteAnswer.bo",
	            data: {
					ano:ano,
					qno:$("#qno").val(),
					
	            },
	            success: function (response) {
	                // 삭제가 성공한 경우에 수행할 동작을 추가할 수 있습니다.
	                console.log("댓글 삭제 성공");
	                // 여기에서 삭제된 댓글을 클라이언트에서 제거하는 로직을 작성할 수 있습니다.
	                selectAnswerList(); // 댓글 목록을 다시 로드
	            },
	            error: function () {
	                console.log("댓글 삭제 실패");
	            }
	        });
	    }


    
    </script>
    
    
    
    
    
    

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>