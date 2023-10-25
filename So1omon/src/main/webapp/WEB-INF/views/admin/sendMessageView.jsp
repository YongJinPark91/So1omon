<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="includeScript.jsp"/>
<style>
     textarea{
         resize: none;
         border: none;
         margin-bottom: 10px;
     }
     .noteOuter{
         width: 500px;
         height: 500px;
         padding: 20px;
     }
 
     .noteForm b, .noteForm label{
         font-size: 13px;
     }
     hr{
         margin: 5px 0px 15px 0px;
     }
</style>
</head>
<body>
	<div class="noteOuter">
        <form class="noteForm" action="insertAlert.admin" id="send_form">
            <b>받는사람</b>
            <label>${ m.nickName }(${ m.userId })</label>
            <hr>
            <input type="hidden" name="userNo" value='${m.userNo }'>
            <textarea name="alertContent" id="alertContent" cols="50" rows="10"></textarea>
            <br>
            <button class="btn btn-primary btn-sm" type="button" id="send">보내기</button>
            <button type="reset" class="btn btn primary btn-sm">취소</button>
        </form>
        <script>
        /*
        	$(function(){
        		$("#send").click(function(){
        			$("#send_form").submit();
        			setTimeout(function(){
        				window.close();
        			}, 100);
        		})
        	})
        	*/
        	$(function(){
        		
	        	$("#send").click(function(){
	        		$.ajax({
	        			url:"insertAlert.admin",
	        			data:{
	        				userNo : $("input[name=userNo]").val(),
	        				alertContent : $("#alertContent").val()
	        				},
	        			success:function(result){
	        				
	        				if(result == "Success"){
	        					alert("성공적으로 쪽지를 보냈습니다");
	        					window.close();
	        				}else{
	        					alert("쪽지보내기 실패")
	        				}
	        			},
	        			error:function(){
	        				console.log("쪽지 보내기 ajax 통신 실패");
	        			}
	        		})
	        	})
        	})
        	
        </script>
    </div>
</body>
</html>