<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title>
<style>
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

    #product-list td{
      vertical-align: middle;
    }
    
    .form-select{
	    width: 200px;
	    font-size: 14px;
	    float: right;
	    margin-top: 0px;
	    margin-bottom: 20px;
    }
    </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
	  
	  <div class="pagetitle">
	    <h1>자유게시판</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">게시판 관리</li>
	        <li class="breadcrumb-item">자유게시판</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
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
	              <div class="card-body" style="padding:20px;">
	              	<br>
					<select class="form-select" aria-label="Default select example">
	                  <option value=0>전체</option>
	                  <option value=1>자유게시판</option>
	                  <option value=2>공지사항</option>
	                </select>
	                <table class="table table-hover" id="board-list">
	                  <thead>
	                    <tr align="center">
	                      <th>게시글번호</th>
	                      <th width="400">제목</th>
	                      <th>작성자</th>
	                      <th>작성일</th>
	                      <th>조회수</th>
	                      <th>첨부파일</th>
	                      <th width="80">상태</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                  </tbody>
	                </table>
	                
	                <script>
	                
	                  $(function(){
	                	  
	                	  let num = 1;
	                	  let limit = 20;
	                	  let type = 0;
		                  boardList(num, limit, type);

		                    
		                	// 스크롤바 함수
		                    $(window).scroll(function(){
		                    	let $window = $(this);
		                    	let scrollTop = $window.scrollTop();
		                    	let windowHeight = $window.height();
		                    	let documentHeight = $(document).height();
		                    	
		                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
		                    		num = num + 1;
		                    		boardList(num, limit, type);
		                    	}
		                    });
			                    
		                 	// 엔터키 누르면 검색되게
		                    $(document).on("keydown",function(key){
		                        if(key.keyCode==13) {
		                        	//keyword = $("input[name=keyword]").val();
		                        	num = 1;
		                        	$("#board-list tbody").html("");
		                        	boardList(num, limit, type);
		                       
		                        }
		                    });
		                 	
		                 	// 주문 처리별 조회 
		                    $(".form-select").on("change", function(){
		                  		type = $(this).val();
		                  		num = 1;
		                  		$("#board-list tbody").html("");
		                  		boardList(num, limit, type);
		                  			
		                  	})

	                  })
	                  
	                  
	                  // 주문 조회 ajax 함수
	                  function boardList(num, limit, type){

                        $.ajax({
                             url:"boardList.admin",
                             data:{
                                num:num,
                                limit:limit,
                                type:type
                                },
                             success:function(list){
                            	 console.log(list);
                            	 if(num == 1 && list.length == 0){ // 검색결과 없을 때 출력값
 	                				$("#board-list tbody").html("<tr align='center'><td colspan='6'><b>조회된 결과가 없습니다</b></td></tr>")
 	                			}
 								displayTable(list);

                             },
                             error:function(){
                                console.log("게시판조회 ajax 실패!");
                             }
                          })
                     }
	                  
                  	function displayTable(list){
                         let value = $("#board-list tbody").html();
                         
                         for(let i in list){
                            value += "<tr align='center'>"
                            	   + "<td>" + list[i].boardNo + "</td>";
                            	   
                           	   if(list[i].boardType == 1){
                           		   value += "<td>" + list[i].boardTitle + "</td>";
                           	   }else{
                           		   value += "<td>[공지사항] " + list[i].boardTitle + "</td>";
                           	   }
                           	   
                            value += "<td>" + list[i].boardWriter + "</td>"
                                   + "<td>" + list[i].createDate + "</td>"
                                   + "<td>" + list[i].count + "</td>";
                                   
                                if(list[i].fileNo > 0){
                             	   value += "<td>○</td>";
                                }else{
                             	   value += "<td></td>";
                                }	
                                   
	                           if(list[i].status == 'N'){
	                              value += "<td style='color:lightgray;'>삭제됨</td></tr>";
	                           }else{
	                              value += "<td><button class='btn btn-secondary btn-sm' onclick='deleteBoard();'>삭제</button></td></tr>"
	                           }
                         } 	
                         
                         $("#board-list tbody").html(value);
                         
                     }
                  	
                  	
	                  
	               // 주문 상세 이동
                   $(document).on("click", "#order-list>tbody>tr", function(){
                      let orderNo = $(this).children().eq(0).text();
                      window.open("orderDetail.admin?orderNo="+orderNo, "_blank","width=1200,height=600,left=150,top=200");
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