<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title><style>
    .search-form {
        width: 100%;
    }
    .search-form input {
      border: 0;
      font-size: 14px;
      color: #012970;
      border: 1px solid rgba(1, 41, 112, 0.2);
      padding: 7px 38px 7px 8px;
      border-radius: 3px;
      transition: 0.3s;
      width: 300px;
    }
    .search-form button {
      border: 0;
      padding: 0;
      margin-left: -30px;
      background: none;
    }

    .search-form{
      margin-bottom: 20px;
    }

    .form-select{
    width: 200px;
    font-size: 14px;
    /* float: right; */
    margin-top: 0px;
    margin-bottom: 20px;
    }
    
    #question-list{
	  font-size: 15px;	
	}

    #question-list td{
      vertical-align: middle;
    }
    
    #question-list img{
    	display: block;
    	margin:auto;
    }
  </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
	  
	  <div class="pagetitle">
	    <h1>문의사항 관리</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">문의 관리</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	
	  <!-- 검색바 -->
	  <!--
	  <div class="search-bar">
	    <form class="search-form d-flex align-items-center" method="" action="#">
	      <input type="text" name="">
	      <button type="submit"><i class="bi bi-search"></i></button>
	    </form>
	  </div>
	  -->
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body">
	                <br>
	                <select class="form-select" aria-label="Default select example">
	                  <option value="">전체 문의</option>
	                  <option value="selectStatusN">미처리 문의</option>
	                </select>
	                <!-- <button type="button" class="btn btn-outline-primary">전체 문의</button>
	                <button type="button" class="btn btn-outline-primary">미답변 문의</button>
	                <br><br> -->
	                <!-- <h5 class="card-title">문의 리스트</h5> -->
	                <!-- Default Accordion -->
	                <table class="table table-hover" id="question-list">
	                  <thead>
	                    <tr align="center">
	                      <th width="200">질문유형</th>
	                      <th width="150"></th>
	                      <th>제목</th>
	                      <th>작성자</th>
	                      <th>작성일</th>
	                      <th width="80">답변여부</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                  </tbody>
	                </table>
	                
	                <script>
	                
	                  $(function(){
	                	  
	                	  let num = 1;
	                	  let limit = 20;
	                	  let status = "";
		                  questionList(num, limit, status);

		                    
		                	// 스크롤바 함수
		                    $(window).scroll(function(){
		                    	let $window = $(this);
		                    	let scrollTop = $window.scrollTop();
		                    	let windowHeight = $window.height();
		                    	let documentHeight = $(document).height();
		                    	
		                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
		                    		num = num + 1;
		                    		questionList(num, limit, status);
		                    	}
		                    });
			                    
		                 	
		                 	// 주문 처리별 조회 
		                    $(".form-select").on("change", function(){
		                  		// console.log($(this).val());
		                  		if($(this).val() == "selectStatusN"){
		                  			status = "selectStatusN";
		                  			num = 1;
		                  			$("#question-list tbody").html("");
		                        	questionList(num, limit, status);
		                  		}else{
		                  			status = "";
		                  			num = 1;
		                  			$("#question-list tbody").html("");
		                        	questionList(num, limit, status);
		                  		}
		                  			
		                  		
		                  	})

	                  })
	                  
	                  
	                  // 주문 조회 ajax 함수
	                  function questionList(num, limit, status){

                        $.ajax({
                             url:"questionList.admin",
                             data:{
                                num:num,
                                limit:limit,
                                status:status
                                },
                             success:function(list){
                            	 if(num == 1 && list.length == 0){ // 검색결과 없을 때 출력값
 	                				$("#question-list tbody").html("<tr align='center'><td colspan='6'><b>조회된 결과가 없습니다</b></td></tr>")
 	                			}
 								displayTable(list);

                             },
                             error:function(){
                                console.log("상품조회 ajax 실패!");
                             }
                          })
                     }
	                  
                  	function displayTable(list){
                         let value = $("#question-list tbody").html();
                         
                         for(let i in list){
                            value += "<tr align='center'>"
                            	   + "<input type='hidden' value='" + list[i].qno + "'>"
                                   + "<td>[" + list[i].qcategory + "]</td>";
                                   if( list[i].thumbnail == null){
                                	   value += "<td></td>";
                                   }else{
                                	   value += "<td><img src='" + list[i].thumbnail + "' width=100 heigth=100></td>";
                                   }
                                   
                             value += "<td>" + list[i].qtitle + "</td>"
                            	    + "<td>" + list[i].qwirter + "</td>"
                                    + "<td>" + list[i].qdate + "</td>";
                                   
                           if(list[i].qstatus == 'N'){
                              value += "<td style='color:tomato;'>미답변</td></tr>";
                           }else{
                              value += "<td style='color:blue;'>답변완료</td></tr>";
                           }
                         } 	
                         
                         $("#question-list tbody").html(value);
                         
                     }
                  	
                  	
	                  
	               // 문의 상세 이동
                   $(document).on("click", "#question-list>tbody>tr", function(){
                    })
	                  

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