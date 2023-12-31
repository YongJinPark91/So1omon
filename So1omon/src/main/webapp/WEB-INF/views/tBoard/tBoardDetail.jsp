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



    
    
    <div class="bg-light pb-5 mb-4">
        <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
            <div class="container d-flex align-items-center">


            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->
        <div class="container">
            <div class="product-gallery-carousel owl-carousel owl-full owl-nav-dark">
	            <c:forEach var="at" items="${ atList }">
	                <figure class="product-gallery-image">
	                    <img src="${ at.filePath }" data-zoom-image="${ at.filePath }-big" style="height: 368px" alt="product image">
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
				    <c:when test="${t.tag eq 'dailyNecessity'}">
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
                    <td colspan="4"><pre id="content2" style="height:150px; white-space: pre-wrap; overflow: hidden;">${t.tboardContent}</pre></td>
                </tr>
            </table>
            <br>
            
            <script>
			    // 텍스트 상자의 내용을 가져와서 높이를 조절
			    var content = document.getElementById('content2');
			    content.style.height = content.scrollHeight + "px";
			</script>
						
			<c:if test="${loginMember.userId eq t.userId || loginMember.userId eq 'admin' }">
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
            </c:if>




            
            <!-- 지도 -->
            
            
    		주소: ${t.address}
			<div id="map" style="width:100%;height:350px;"></div>
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=77eff446b45ccd67f1bb72f314d1d6fb&libraries=services"></script>
			
			<input type="hidden" id="address" value="${t.address}">
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };  
				
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
				
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch('${t.address}', function(result, status) {
				
				    // 정상적으로 검색이 완료됐으면 
				     if (status === kakao.maps.services.Status.OK) {
				
				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				
				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords
				        });
				
				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow = new kakao.maps.InfoWindow({
				            content: '<div style="width:150px;text-align:center;padding:1px 0;">위치</div>'
				        });
				        infowindow.open(map, marker);
				
				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				    } 
				});    
			</script>
			            
            
            
            
            
            
    

            <!-- 댓글 기능은 나중에 ajax 배우고 접목시킬예정! 우선은 화면구현만 해놓음 -->
            <table id="replyArea" class="table table-mobile" align="center">

                <thead>
                    <tr>
                      <c:choose>
					    <c:when test="${not empty loginMember}">
					        <th colspan="2">
					            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
					        </th>
					        <th style="vertical-align: middle">
					            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					            <input type="checkbox" id="secret" value="S" name="status">
					            <label for="secret">비밀댓글</label><br>
					            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					            <input type="hidden" id="tboardNo" value="${t.tboardNo}">
					            <input type="hidden" id="loginMember" value="${loginMember.userNo}">
					            <button class="btn btn-outline-primary-2" onclick="tboardAnswer();">등록하기</button>
					        </th>
					    </c:when>
					    <c:otherwise>
					        <th colspan="2">
					            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%" readonly>로그인한 사용자만 이용가능한 서비스입니다. 로그인 후 이용바랍니다.</textarea>
					        </th>
					        <th style="vertical-align: middle">
					            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					            <input type="checkbox" id="secret" value="S" name="status">
					            <label for="secret">비밀댓글</label><br>
					            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					            <input type="hidden" id="tboardNo" value="${t.tboardNo}">
					            <input type="hidden" id="loginMember" value="${loginMember.userNo}">
					            <button class="btn btn-outline-primary-2" onclick="tboardAnswer();" disabled>등록하기</button>
					        </th>
					        
					    </c:otherwise>
					</c:choose>
						<th></th>
                    </tr>
                      
                      
                      
                      
                    <tr>
                        <td colspan="4">댓글 (<span id="rcount"></span>) </td> 
                        
                    </tr>
                    
                    
                </thead>
                <tbody >
	
  	
  
                </tbody>
            </table>
            
            
            
            
        </div>
        <br><br>
    </div>
    <input type="hidden" id="loginMemberId" value="${loginMember.userId}">
    <input type="hidden" id="loginMemberNo" value="${loginMember.userNo}">
    <script>
    	$(function(){
    		selectTboardAnswer();
    	})
    	

    	function selectTboardAnswer(){
    		$.ajax({
    			url:"TboardAnswerList.bo",
    			data: {
    				boardNo:$("#tboardNo").val()
    			},success:function(list){
    				console.log(list);
    				
					let lm = "${loginMember.userId}";
					let tm = "${t.userId}";
					console.log(tm);


    				let value = "";
    				for (let i in list) {
    					
    				    value += "<tr>"
    				    	  + "<th style='width: 100px; padding-top: 30px;'>" + list[i].userId + "</th>"
    				    	  
    				    if (list[i].status != 'S' || lm == 'admin' || lm == tm ) {
    				        value  += "<td style='text-align: left;'>" + list[i].replyContent + "</td>"
    				    } else {
    				        value  += "<td style='text-align: left;'>비밀댓글입니다.</td>"
    				    }
    				     	value  += "<td>&nbsp;&nbsp;&nbsp;" + list[i].createDate + "</td>"
    				     	
    				    if(list[i].userId == lm || lm == 'admin'){
    				    	
    				     	value  +=  "<td class='remove-col'><button class='btn-remove' onclick='deleteReply("+list[i].replyNo+");' ><i class='icon-close'></i></button></td>"
    				    }

    				      	  
    				          + "</tr>";
    				    
    				    console.log(list[i].replyNo+"qq");
    				}
	

    				
    				$("#replyArea tbody").html(value);


    				

    				$("#rcount").text(list.length);
    			}, error:function(){
    				console.log("댓글리스트 조회용 ajax 통신 실패!")
    			}
    		})
    	}
    	
    	
    	
    	
    	function tboardAnswer(){
    		if($("#content").val().trim().length != 0){
    			$.ajax({
    				url:"insertTboardAnswer.bo",
    				data:{
    					boardNo:$("#tboardNo").val(),
    					replyContent:$("#content").val(),
    					replyWriter:$("#loginMemberNo").val(),
    					status:$("#secret").val()
    				},success:function(status){
    					
    					if(status != ""){
    						selectTboardAnswer();
    						alertify.alert("등록완료!")
    					}
    					
    					$("#content").val(""); 
    					
    					// 댓글 insert 성공시 웹소켓 구현 (민정)
						$.ajax({
							url:"alramReply.bo",
							data:{
								boardNo: "${t.tboardNo}",
								boardTitle:"${t.tboardTitle}",
								userId:"${t.userId}", // 게시글 작성자 세션 찾기 위해서
								replyWriter:"${loginMember.nickName}" 
							},
							success:function(){
							},
							error:function(){
								console.log("댓글 알람 웹소켓 구현 실패@@");
							}
						})
    					
    				},error:function(){
    					console.log("댓글 작성용 ajax 요청 실패!")
    				}
    				
    			})
    		}else{
    			alertify.alert("댓글 작성 후 등록 요청해주세요!")
    		}
    	}
    	
    </script>
	<script>
	    
		    function deleteReply(replyNo) {
	 	        $.ajax({
		            url: "deleteReply.re",
		            data: {
						boardNo:$("#tboardNo").val(),
						replyWriter:$("#loginMemberNo").val(),
						replyNo:replyNo 
						
		            },
		            success: function (response) {
		                // 삭제가 성공한 경우에 수행할 동작을 추가할 수 있습니다.
		                console.log("댓글 삭제 성공");
		                // 여기에서 삭제된 댓글을 클라이언트에서 제거하는 로직을 작성할 수 있습니다.
		                selectTboardAnswer(); // 댓글 목록을 다시 로드
		            },
		            error: function () {
		                console.log("댓글 삭제 실패");
		            }
		        });
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