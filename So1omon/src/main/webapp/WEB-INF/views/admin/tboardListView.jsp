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
    </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
	  
	  <div class="pagetitle">
	    <h1>중고게시판</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">게시판 관리</li>
	        <li class="breadcrumb-item">중고게시판</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	  <div class="search-bar">
	    <form class="search-form d-flex align-items-center" action="#" onsubmit="return false">
	      <input type="text" name="keyword" placeholder="제목, 작성사 검색">
	      <button type="submit"><i class="bi bi-search"></i></button>
	    </form>
	  </div>
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body" style="padding:20px;">
	
	                <table class="table table-hover" id="boardList">
	                  <thead>
	                    <tr align="center">
	                      <th>글번호</th>
	                      <th width="100">대표사진</th>
	                      <th width="400">제목</th>
	                      <th>작성자</th>
	                      <th>작성일</th>
	                      <th>조회수</th>
	                      <th width="80">상태</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                  </tbody>
	                </table>
	                
	                <script>
	                $(function(){
	                	
	                	  
	                    let num = 1; // RowBounds offset 셋팅
	                    let limit = 20; // 처음 띄울 개수
	                    let keyword = "";
	                	boardList(num, limit, keyword);
	                	
	                	
	                	// 스크롤바 함수
	                    $(window).scroll(function(){
	                    	let $window = $(this);
	                    	let scrollTop = $window.scrollTop();
	                    	let windowHeight = $window.height();
	                    	let documentHeight = $(document).height();
	                    	
	                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
	                    		num = num + 1;
	                    		boardList(num, limit, keyword);
	                    	}
	                    })
	                    
	                    // 엔터키 누르면 검색되게
	                    $(document).on("keydown",function(key){
	                        if(key.keyCode==13) {
	                        	keyword = $("input[name=keyword]").val();
	                        	num = 1;
	                        	$("#boardList tbody").html("");
	                        	boardList(num, limit, keyword);
	                       
	                        }
	                    });
	                	
	                    
                  	
                  	
                  	})
                  	
	                
		          function boardList(num, limit, keyword){
	                	$.ajax({
	                		url:"tboardList.admin",
	                		data:{
	                			num:num,
	                			limit:limit,
	                			keyword:keyword
	                		},
	                		success:function(list){
	                			if(num == 1 && list.length == 0){ // 검색결과 없을 때 출력값
	                				$("#boardList tbody").html("<tr align='center'><td colspan='9'><b>조회된 결과가 없습니다</b></td></tr>")
	                			}
								displayTable(list);	                			
	                		},
	                		error:function(list){
	                			console.log("멤버 조회 ajax 통신 실패!");	
	                		}
	                		
	                		
	                	})
	                }
	                
	                
	              // 테이블 출력 함수
	              function displayTable(list){
                			
               			let value = $("#boardList tbody").html();
               			
               			for(let i in list){
                                  value += "<tr align='center'>"
                                         + "<td>" + list[i].tboardNo + "</td>"
                                         + "<td><img src='" + list[i].thumbnail + "' width=100 height= 100></td>"
                                         + "<td>" + list[i].tboardTitle + "</td>" 
                                         + "<td>" + list[i].userId + "</td>"
                                         + "<td>" + list[i].createDate + " P</td>"
                                         + "<td>" + list[i].count + "</td>";
                                         
                               if(list[i].status == 'N'){
   	                              value += "<td style='color:lightgray;'>삭제됨</td></tr>";
   	                           }else{
   	                              value += "<td><button class='btn btn-secondary btn-sm' onclick='deleteBoard();'>삭제</button></td></tr>"
   	                           }
                          }
                               
                              $("#boardList tbody").html(value); 
                			
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