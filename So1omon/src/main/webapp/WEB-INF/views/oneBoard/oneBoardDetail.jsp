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
            font-weight: 500;
        	font-size: 18px;
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
        #cn-detail img {
        	display: none;
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
             <button onclick="history.back()" class="btn btn-outline-primary-2" style="float:right">목록으로</button>
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
     //console.log("--------------------------------------");
     const urlParams = new URLSearchParams(window.location.search);
     const partcptnId = urlParams.get('partcptnId');
     
        $(()=>{
           $.ajax({
              url:"one.do?partcptnId=" + partcptnId,
              success:data => {
                 console.log("ajax 통신성공 디테일");
                 let rowData = data.tbPartcptn.row;
                 
                let row = rowData.filter((row) => row.PARTCPTN_ID === partcptnId ); 
                //console.log(row[0].CN);
                rowData = row[0];
                console.log(rowData);
                 
                 let value = "";
                 
                 value += "<tr>";
                 value += "<th style='width: 100px; padding-top: 3rem; padding-bottom: 3rem; font-size: 18px; font-weight: 500;' >제목</th>";
                    value += "<td colspan='3'>" + rowData.PARTCPTN_SJ + "</td>";
                    value += "</tr>";
					
                    value += "<tr>";
                    value += "<th style='width: 150px; padding-top: 3rem; padding-bottom: 3rem; font-size: 18px; font-weight: 500;'>시작접수기간</th>";
                    value += "<td style='width: 150px;'>" + rowData.RCEPT_DE1 + "</td>";
                    value += "<th style='width: 150px; padding-top: 3rem; padding-bottom: 3rem; font-size: 18px; font-weight: 500;'>종료접수기간</th>";
                    value += "<td style='width: 150px;'>" + rowData.RCEPT_DE2 + "</td>";
                    value += "</tr>";

                    value += "<tr>";
                    value += "<th style='padding-top: 3rem; padding-bottom: 3rem; font-size: 18px; font-weight: 500;'>내용</th>";
                    value += "<td colspan='3'></td>";
                    value += "</tr>";

                    value += "<tr>";
                    value += "<td colspan='4' id='cn-detail'><p>" + rowData.CN + "</p></td>";
                  value += "</tr>";
                 
                 
                 
                 $("#oneBoardDetail tbody").html(value);
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