<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title>
<style>
  
    .form-select{
    width: 200px;
    font-size: 14px;
    /* float: right; */
    margin-top: 0px;
    margin-bottom: 20px;
    }
  </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
	  
	  <div class="pagetitle">
	    <h1>신고 관리</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">신고 관리</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body">
	                <br>
	                <select class="form-select" aria-label="Default select example">
	                  <option value="">전체 신고</option>
	                  <option value="selectResultN">미처리 신고</option>
	                </select>
	                <table class="table table-hover" id="report-list">
	                  <thead> 
	                    <tr align="center">
	                      <th width="100">신고번호</th>
	                      <th>신고종류</th>
	                      <th width="200">신고글</th>
	                      <th>신고자</th>
	                      <th>신고일자</th>
	                      <th>처리상태</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                  
	                  </tbody>
	                </table>
	                
	                <script>
		                $(function(){
		                	  
		                	  let num = 1;
		                	  let limit = 20;
		                	  let result = "";
			                  reportList(num, limit, result);
			                    
			                	// 스크롤바 함수
			                    $(window).scroll(function(){
			                    	let $window = $(this);
			                    	let scrollTop = $window.scrollTop();
			                    	let windowHeight = $window.height();
			                    	let documentHeight = $(document).height();
			                    	
			                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
			                    		num = num + 1;
			                    		reportList(num, limit, result);
			                    	}
			                    });
				                
			                    $(".form-select").on("change", function(){
			                  		if($(this).val() == "selectResultN"){
			                  			result = "selectResultN";
			                  			num = 1;
			                  			$("#report-list tbody").html("");
			                        	reportList(num, limit, result);
			                  		}else{
			                  			result = "";
			                  			num = 1;
			                  			$("#report-list tbody").html("");
			                        	reportList(num, limit, result);
			                  		}
			                  			
			                  		
			                  	})
		                  })
		                  
		                  function reportList(num, limit, result){
	                        $.ajax({
	                             url:"reportList.admin",
	                             data:{
	                                num:num,
	                                limit:limit,
	                                result:result
	                                },
	                             success:function(list){
	                            	 if(num == 1 && list.length == 0){ // 조회 결과 없을 때
	 	                				$("#report-list tbody").html("<tr align='center'><td colspan='5'><b>조회된 결과가 없습니다</b></td></tr>")
	 	                			}
	 								displayTable(list);
	                             },
	                             error:function(){
	                                console.log("신고조회 ajax 실패!");
	                             }
	                          })
	                     }
		                
		                function displayTable(list){
	                         let value = $("#report-list tbody").html();
	                         
	                         for(let i in list){
	                            value += "<tr align='center'>"
	                                   + "<td>" + list[i].reportNo + "</td>"
	                                   + "<td>" + list[i].guilty + "</td>"
	                                   + "<td>" + list[i].reportTitle + "</td>"
	                                   + "<td>" + list[i].reporterId + "</td>"
	                                   + "<td>" + list[i].reportDate + "원</td>" ;
	                                   
	                           if(list[i].result == 'N'){
	                              value += "<td style='color:tomato;'>미처리</td></tr>";
	                           }else{
	                              value += "<td style='color:blue;'>처리완료</td></tr>";
	                           }
	                         } 	
	                         
	                         $("#report-list tbody").html(value);
	                         
	                     }
		                
		             // 신고 상세 이동
	                   $(document).on("click", "#report-list>tbody>tr", function(){
	                      let reportNo = $(this).children().eq(0).text();
	                      window.open("reportDetail.admin?reportNo="+reportNo, "_blank","width=700,height=350,left=300,top=200");
	                      
	                    })
	                     
	                 function loadingPage(){
		            	location.reload();	 
		             }
		                
	                </script>
	
	              </div>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	    </section>
	
	  </main>
</body>
</html>