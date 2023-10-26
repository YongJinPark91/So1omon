<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </style>


</head>


<body>
<!-- 이쪽에 메뉴바 포함 할꺼임 -->
    <jsp:include page="../common/header.jsp"/>
    
    <br><br>
    <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        <div class="container">
            <h1 class="page-title">1인가구 게시판 상세보기<span>Community</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    <div class="content">

        <div class="innerOuter">    
            <br>
            <!--  <a class="btn btn-outline-primary-2" style="float:right" href="">목록으로</a>-->
            <br><br>
            <table id="oneBoardDetail" align="center" class="table">
                <tbody>
                   
                </tbody>
            </table>
            <br>

            <br><br> 
            </div>
     </div>
     
     <script>
        $(()=>{
           $.ajax({
              url:"one.do",
              success:data => {
                 console.log("ajax 통신성공");
                 const rowData = data.tbPartcptn.row;
                 console.log(rowData);
                 let value = "";
                 
                 value += "<tr>";
                    value += "<th width='100'>제목</th>";
                    value += "<td colspan='3'>" + rowData.partcptn_sj + "</td>";
                    value += "</tr>";

                    value += "<tr>";
                    value += "<th style='width: 150px;'>시작접수기간</th>";
                    value += "<td style='width: 150px;'>" + rowData.rcept_de1 + "</td>";
                    value += "<th style='width: 150px;'>종료접수기간</th>";
                    value += "<td style='width: 150px;'>" + rowData.rcept_de2 + "</td>";
                    value += "</tr>";

                    value += "<tr>";
                    value += "<th>내용</th>";
                    value += "<td colspan='3'></td>";
                    value += "</tr>";

                    value += "<tr>";
                    value += "<td colspan='4'><p style='height:150px'>" + rowData.cn + "</p></td>";
                    value += "</tr>";
                 
                 
                 
                 $("#oneBoardDetail tbody tr").html(value);
              },
              error : () => {
                 console.log("ajax 통신 실패");
              }
              
              
           })
           
        })
     </script>


    <!-- 이쪽에 푸터바 포함할꺼임 -->
     <jsp:include page="../common/footer.jsp"/>

	
</body>
</html>