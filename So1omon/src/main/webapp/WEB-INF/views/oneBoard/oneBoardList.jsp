<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .innerOuter{
            width: 1500px;
            margin: auto; 
        }

        #oneBoardList {
            text-align: center;
        }
        
        #oneBoardList>tbody>tr:hover {
            cursor: pointer;
        }
        
        #pagingArea {
            width: fit-content;
            margin: auto;
        }
        
        #searchForm {
            width: 80%;
            margin: auto;
            display: flex;
        }
        

        /* 검색 폼 반응형 스타일 */
        @media (max-width: 768px) {
            #searchForm {
                width: 100%;
                flex-direction: column;
                align-items: center;
            }

            .select {
                width: 100%;
            }

            .text {
                width: 100%;
            }

            .searchBtn {
                width: 100%;
            }
        }
        
        .table td {
            padding-top: 2rem;
            padding-bottom: 2rem;
        }
        .btn {
            min-width: 110px;
        }
        #searchForm {
            width: 70%;

        } 
</style>

</head>


<body>
	<!-- 이쪽에 메뉴바 포함 할꺼임 -->
     <jsp:include page="../common/header.jsp"/>

     <div class="content">
        <br><br>
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">1인가구 알림판<span>Community</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->


        <div class="innerOuter" style="padding:5% 10%;">
         
            <br>
            <table id="oneBoardList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th style="width: 100px;">지역</th>
                    <th style="width: 100px;">구분</th>
                    <th style="width: 800px;">제목</th>
                    <th style="width: 200px;">카테고리</th>
                    <th style="width: 150px;">시작접수</th>
                    <th style="width: 150px;">종료접수</th>
                  </tr>
                </thead>
                <tbody>
                    <th><input type="hidden" name="dataArr[i].PARTCPTN_ID"></th>
                </tbody>
            </table>
  
            <br clear="both"><br>
            
            
            <br><br>
        </div>
        <br><br>
    </div>
    
    
    
    <script>
    	$(()=>{
    		$(document).on("click", "#oneBoardList>tbody>tr", function(){
    			location="detail.bo?bno=" + $(this).children().eq(0).text();
    		})
    	})
    
       
         $(()=>{
            $.ajax({
               url:"one.do",
               success:data => {
                  console.log("ajax통신 성공");
                  const dataArr = data.tbPartcptn.row;
                  console.log(dataArr);
                  let value = "";
                  for(let i in dataArr){
                	 console.log(dataArr[i].PARTCPTN_ID);
                     value += "<tr>"
                              + "<td>" + dataArr[i].ATDRC_NM + "</td>"
                              + "<td>" + dataArr[i].TY_NM + "</td>"
                              + "<td>" + dataArr[i].PARTCPTN_SJ + "</td>"
                              + "<td>" + dataArr[i].SE_NM + "</td>"
                              + "<td>" + dataArr[i].RCEPT_DE1 + "</td>"
                              + "<td>" + dataArr[i].RCEPT_DE2 + "</td>"
                           + "</tr>"
                  }
                  $("#oneBoardList tbody").html(value);
               },
               error : () => {
                  console.log("ajax통신 실패");
               }
            })
         })
    </script>
    
      <jsp:include page="../common/footer.jsp"/>
	
</body>
</html>