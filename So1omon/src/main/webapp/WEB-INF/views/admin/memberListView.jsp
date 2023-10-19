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
	    <form class="search-form d-flex align-items-center" method="" action="#">
	      <input type="text" name="">
	      <button type="submit"><i class="bi bi-search"></i></button>
	    </form>
	  </div>
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body" style="padding:20px;">
	
	                <table class="table" id="memberList">
	                  <thead>
	                    <tr align="center">
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
	                	  
	                    let num = 1;
	                	memberList(num);
	                	  
	                    
	                	// 스크롤바 함수
	                    $(window).scroll(function(){
	                    	let $window = $(this);
	                    	let scrollTop = $window.scrollTop();
	                    	let windowHeight = $window.height();
	                    	let documentHeight = $(document).height();
	                    	
	                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
	                    		num = num + 1;
	                    		memberList(num);
	                    	}
	                    })
	                    
                  	})
		                  
		          function memberList(num){
	                	$.ajax({
	                		url:"selectMemberList.admin",
	                		data:{
	                			num:num,
	                			limit:20
	                		},
	                		success:function(list){
	                			
	                			console.log(list);
	                			
	                			let value = $("#memberList tbody").html();
	                			
	                			for(let i in list){
	                                   value += "<tr align='center'>"
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
	                			
	                		},
	                		error:function(list){
	                			console.log("멤버 조회 ajax 통신 실패!");	
	                		}
	                		
	                		
	                	})
	                }
	                
	                
                  // 쪽지보내기 창
                  function formNote(uno){
                    window.open("note.html?uno="+uno, "_blank","width=510,height=400,left=500,top=200,scrollbars=none");
                  }

                  // 멤버 상세페이지
                  function formMember(uno){
                    window.open("selectMember.admin?userNo="+uno, "_blank","width=700,height=800,left=500,top=200");
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