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


        
        .likeButton {
		    border: none;
		    outline: none;
		    cursor: pointer;
		    background: transparent;
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
                    <th width="100" style="padding-top: 4rem;">제목</th>
                    <td colspan="2">${ b.boardTitle }</td>
                    <td>
		                <button type="button" class="likeButton" onclick="likeAdDel();" id=""><img style="width: 30px; " src="https://cdn-icons-png.flaticon.com/128/20/20664.png"></button>
                        <span id="likeCount">()개</span>
                    </td>
                </tr>
                <tr>
                    <th style="padding-top: 3.4rem;">작성자</th>
                    <td>${ b.userId }</td>
                    <th style="padding-top: 3.4rem; width: 100px" >작성일</th>
                    <td style="width: 200px;">${ b.createDate }</td>
                </tr>
                
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><div id="markdown-content" style="height:150px overflow-y: auto;">${ b.boardContent }</div></td>
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
                       <td colspan="4">댓글 (<span id="rcount">3</span>) </td> 
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
    						alertify.alert("등록완료!");
    						
    						// 댓글 insert 성공시 웹소켓 구현 (민정)
    						$.ajax({
    							url:"alramReply.bo",
    							data:{
    								boardNo:"B" + ${b.boardNo},
    								boardTitle:"${b.boardTitle}",
    								userId:"${b.userId}", // 게시글 작성자 세션 찾기 위해서
    								replyWriter:"${loginMember.nickName}" 
    							},
    							success:function(result){
    								if(result == "Success"){
    									console.log("댓글 알림 insert 성공");
    								}
    							},
    							error:function(){
    								console.log("댓글 알람 웹소켓 구현 실패@@");
    							}
    						})
    						
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
    	
    	
    	
    	
    	function selectBoardAnswerList(){
    		$.ajax({
    			url:"answerBoardlist.bo",
    			data: { boardNo:$("#boardNo").val() },
    			success:function(list){
    				console.log(list);
    				let lm = "${loginMember.userId}";
    				let value = "";
    				for(let i in list){
    					value += "<tr>"
	    					    + "<th style='width: 100px; padding-top: 30px;'>" + list[i].userId + "</th>"
	    					    + "<td style='text-align: left;'>" + list[i].replyContent + "</td>"
	    					    + "<td>&nbsp;&nbsp;&nbsp;" + list[i].createDate + "</td>"
	    					    
	    					    if(list[i].userId == lm || lm == 'admin'){
	    					    	
	 				     	     	value +=  "<td class='remove-col'><button class='btn-remove' onclick='deleteReply("+list[i].replyNo+");' ><i class='icon-close'></i></button></td>"
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
    
   	<script>
    
	    function deleteReply(replyNo) {
 	        $.ajax({
	            url: "deleteReplyBoard.re",
	            data: {
					boardNo:$("#boardNo").val(),
					replyWriter:$("#loginMember").val(),
					replyNo:replyNo 
					
	            },
	            success: function (response) {
	                // 삭제가 성공한 경우에 수행할 동작을 추가할 수 있습니다.
	                console.log("댓글 삭제 성공");
	                // 여기에서 삭제된 댓글을 클라이언트에서 제거하는 로직을 작성할 수 있습니다.
	                selectBoardAnswerList(); // 댓글 목록을 다시 로드
	            },
	            error: function () {
	                console.log("댓글 삭제 실패");
	            }
	        });
	    }


    
    </script>
    
    
    
    
    
    
    <!-- 좋아요 -->
    <input type="hidden" id="userNo" value="${loginMember.userNo}">
    
    	
    	
    	<script>
    		function checkLike(){
		          $.ajax({
			            url: "checkLike.li",
			            data: {
			              boardNo: $("#boardNo").val(),
			              userNo: $("#userNo").val()
			            },success: function(result) {
			            	console.log(result+"값뭐나옴????");
			              if (result > 0) {
			                $(".likeButton").children("img").attr("src", "https://cdn-icons-png.flaticon.com/128/7606/7606143.png");
			              }
			            },error: function() {
			              console.log("좋아요 등록용1 ajax 통신 실패");
			            }
			          })
			        }
    		checkLike();
    		
    		console.log($("#boardNo").val()+"나오나??");
    		console.log($("#userNo").val()+"나오나");
    		
    		function likeAdDel(){
    			
    			let lm = "${loginMember}";
    			
    			if(lm == ""){
    				alert("로그인 후 이용 가능합니다!!");
    			}else{
    				$.ajax({
    					url:"likeAdDel.li",
    					data:{
  			              boardNo: $("#boardNo").val(),
			              userNo: $("#userNo").val()
    					}, success: function(result){
    						if(result == 'insert'){
    			                $(".likeButton").children("img").attr("src", "https://cdn-icons-png.flaticon.com/128/7606/7606143.png");
								checkLike();
								likeCount();
								
    						}else if( result == "delete"){
    			                $(".likeButton").children("img").attr("src", "https://cdn-icons-png.flaticon.com/128/20/20664.png");
    			                checkLike();
    			                likeCount();
    						}
    						
    							
    					},error: function(){
  			              console.log("좋아요 등록용2 ajax 통신 실패");
    					}
    				})
    			}
    		}
    		
    		
    	</script>
    	
    	
    	<script>
		 	 
	        function likeCount() {
	            $.ajax({
	                url: "likeCount.li",
	                data: {
	                    boardNo: $("#boardNo").val()
	                },
	                success: function (likeCount) {
	                    console.log(likeCount + ":likeCount 값 뭐나옴????");
	                    $("#likeCount").text("(" + likeCount + "개)");
	                    
	                },
	                error: function () {
	                    console.log("ajax 통신 실패");
	                }
	            });
	        }
	        likeCount();

    	</script>
    	
    	
    	
    	
    	
    	








    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>