<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title>
</head>
<style>
  #main{
    margin: 0px;
  }

  #report-info{
    font-size: 12px;
  }


</style>
</head>
<body>
	<main id="main" class="main">
	
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body">
	                <h5 class="card-title" style="font-weight: bolder;">신고상세</h5>
	                <div id="report-info">
	                  <table>
	                    <tr height="24">
	                      <th width="120">신고번호</th>
	                      <td id="reportNo">${ r.reportNo }</td>
	                    </tr>
	                    <tr height="24">
	                      <th>신고게시글</th>
	                      <td><a href="detail.bo?bno=${ r.refNo }" target="_blank">${ r.reportTitle }</a></td>
	                    </tr>
	                    <tr height="24">
	                      <th>신고종류</th>
	                      <td>${ r.guilty }</td>
	                    </tr>
	                    <tr height="24">
	                      <th>신고자</th>
	                      <td>${ r.reporterId }</td>
	                    </tr>
	                    <tr height="24">
	                      <th>피신고자</th>
	                      <td><a href="selectMember.admin?userNo=${ r.suspect }" onclick="window.open(this.href, '_blank','width=630,height=800,left=500,top=200'); return false;">${ r.suspectId }</a></td>
	                    </tr>
	                    <tr height="24">
	                      <th>신고내용</th>
	                      <td>${ r.reportContent }</td>
	                    </tr>
	                    <tr height="24">
	                      <th>처리여부</th>
	                      <c:choose>
	                      	<c:when test="${ r.result eq 'N' }">
		                      <td style="color: tomato;">미처리</td>
	                        </c:when>
	                        <c:otherwise>
		                      <td style="color: blue;">처리완료</td>
	                        </c:otherwise>
	                      </c:choose>
	                    </tr>
	                  </table>
	                  <br>
	                      <c:choose>
	                      	<c:when test="${ r.result eq 'N' }">
			                  <button class="btn btn-sm btn-outline-primary" onclick="send();">신고처리</button>
	                        </c:when>
	                        <c:otherwise>
			                  <button class="btn btn-sm btn-primary" disabled>처리완료</button>
	                        </c:otherwise>
	                      </c:choose>
	                  
	                </div>
	
	              </div>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	    </section>
	
	    <script>
	      function send(){
	        if(confirm("해당 신고를 처리 하시겠습니까?")){
	        	
	        	$.ajax({
	        		url:"updateReport.admin",
	        		data:{reportNo:$("#reportNo").text()},
	        		success:function(result){
	        			if(result == "Success"){
							alert("처리 완료");
							window.opener.loadingPage();
							window.close();
	        			}
	        		},
	        		error:function(){
						console.log("신고처리 ajax 통신 실패");	        			
	        		}
	        	})
	        }
	        
	      }
	    </script>
	
	
	  </main>

</body>
</html>