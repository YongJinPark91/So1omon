<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="includeScript.jsp"/>
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
    </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
	  
	  <div class="pagetitle">
	    <h1>사용자 관리</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">사용자 관리</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	  <div class="search-bar">
	    <form class="search-form d-flex align-items-center" action="#" onsubmit="return false">
	      <input type="text" name="keyword" placeholder="이름, 아이디, 닉네임, 번호, 주소">
	      <button type="subtmit"><i class="bi bi-search"></i></button>
	    </form>
	  </div>
	  <script>
	  	
	  </script>
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body" style="padding:20px;">
	                <table class="table" id="memberList">
	                  <thead>
	                    <tr align="center">
	                      <th width="10"></th>
	                      <th>번호</th>
	                      <th>아이디</th>
	                      <th>이름</th>
	                      <th>닉네임</th>
	                      <th>포인트</th>
	                      <th>가입날짜</th>
	                      <th width="80">탈퇴여부</th>
	                      <th>
	                        관리
	                      </th>
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
	                	memberList(num, limit, keyword);
	                	
	                	
	                	// 스크롤바 함수
	                    $(window).scroll(function(){
	                    	let $window = $(this);
	                    	let scrollTop = $window.scrollTop();
	                    	let windowHeight = $window.height();
	                    	let documentHeight = $(document).height();
	                    	
	                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
	                    		num = num + 1;
	                    		memberList(num, limit, keyword);
	                    	}
	                    })
	                    
	                    // 엔터키 누르면 검색되게
	                    $(document).on("keydown",function(key){
	                        if(key.keyCode==13) {
	                        	keyword = $("input[name=keyword]").val();
	                        	num = 1;
	                        	$("#memberList tbody").html("");
	                        	memberList(num, limit, keyword);
	                       
	                        }
	                    });
	                	
	                    
                  	
                  	
                  	})
                  	
	                
		          function memberList(num, limit, keyword){
	                	$.ajax({
	                		url:"selectMemberList.admin",
	                		data:{
	                			num:num,
	                			limit:limit,
	                			keyword:keyword
	                		},
	                		success:function(list){
	                			if(num == 1 && list.length == 0){ // 검색결과 없을 때 출력값
	                				$("#memberList tbody").html("<tr align='center'><td colspan='9'><b>조회된 결과가 없습니다</b></td></tr>")
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
                			
               			let value = $("#memberList tbody").html();
               			
               			for(let i in list){
                                  value += "<tr align='center'>"
                                  		 + "<td><input type='checkbox'></td>"
                                         + "<td>" + list[i].userNo + "</td>"
                                         + "<td>" + list[i].userId + "</td>"
                                         + "<td>" + list[i].userName + "</td>" 
                                         + "<td>" + list[i].nickName + "</td>"
                                         + "<td>" + list[i].point + " P</td>"
                                         + "<td>" + list[i].enrollDate + "</td>";
                                         
                                  if(list[i].status == "Y"){
                               	   value += "<td></td>";
                                  }else{
                               	   value += "<td>탈퇴</td>";
                                  }
                                  
                                  value += "<td>"
                                  		  + "<button class='btn btn-outline-info btn-sm' onclick='formNote(" + list[i].userNo + ");'>쪽지</button>"
                                  		  + "<button class='btn btn-outline-primary btn-sm' onclick='formMember(" + list[i].userNo + ");'>관리</button>"
                                  		  + "</td>"
                                  		  + "</tr>";
                                         
                              }
                               
                              $("#memberList tbody").html(value); 
                			
               		}
	              
	                
                  // 쪽지보내기 창
                  function formNote(uno){
                    window.open("sendMessage.admin?userNo="+uno, "_blank","width=510,height=400,left=500,top=200,scrollbars=none");
                  }

                  // 멤버 상세페이지
                  function formMember(uno){
                    window.open("selectMember.admin?userNo="+uno, "_blank","width=700,height=800,left=500,top=200");
                  }
                  
               // 체크된 멤버번호 뽑는 함수
                	function findCheck(){
	                	let checkMem = new Array(); 
	                	console.log("실행됨");
	                	$("input[type=checkbox]:checked").each(function(index, el){
	                		let a = $(this).parent().next().text();
	                		checkMem.push(a);
	                	})
	                	console.log("결과 : " + checkMem);
	                	
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