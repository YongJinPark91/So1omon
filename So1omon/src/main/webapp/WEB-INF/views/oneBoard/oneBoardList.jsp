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
            font-weight: 500;
           font-size: 15px;
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
     <jsp:include page="../common/header.jsp"/>

     <div class="content">
        <br><br>
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">1인가구 알림판<span>Community</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->


        <div class="innerOuter" style="padding:5% 10%;">
        
           <select id="mySelect" style="float: left;">
                <option value="">전체</option>
                <option value="강남구">강남구</option>
                <option value="강동구">강동구</option>
                <option value="강북구">강북구</option>
                <option value="강서구">강서구</option>
                <option value="관악구">관악구</option>
                <option value="광진구">광진구</option>
                <option value="구로구">구로구</option>
                <option value="금천구">금천구</option>
                <option value="노원구">노원구</option>
                <option value="도봉구">도봉구</option>
                <option value="동대문구">동대문구</option>
                <option value="동작구">동작구</option>
                <option value="마포구">마포구</option>
                <option value="서대문구">서대문구</option>
                <option value="서초구">서초구</option>
                <option value="성동구">성동구</option>
                <option value="성북구">성북구</option>
                <option value="송파구">송파구</option>
                <option value="양천구">양천구</option>
                <option value="영등포구">영등포구</option>
                <option value="용산구">용산구</option>
                <option value="은평구">은평구</option>
                <option value="종로구">종로구</option>
                <option value="중구">중구</option>
                <option value="중랑구">중랑구</option>
             </select>
           
           
           <form id="searchForm" action="#" method="get" style="float: right;">
            
                <div class="text" style="height: 10px;">
                    <input type="text" class="form-control" id="searchText" style="width: 350px;">
                </div>
                <div class="searchBtn">
                    <button type="button" class="btn btn-outline-primary-2" id="searchBtn">검색</button>
                </div>
            </form>
            
            <br><br>
            
            <div>
               <button id="pastBtn" type="button" class="btn btn-outline-warning" style="display: flex; float: right;">지난 사업 보기</button>
            </div>
                     
            <br>
            <table id="oneBoardList" class="table table-hover" align="center">
                <thead>
                  <tr>
                    <th style="width: 100px; font-size: 16px; font-weight: 500;">지역</th>
                    <th style="width: 100px; font-size: 16px; font-weight: 500;">구분</th>
                    <th style="width: 800px; font-size: 16px; font-weight: 500;">제목</th>
                    <th style="width: 200px; font-size: 16px; font-weight: 500;">카테고리</th>
                    <th style="width: 150px; font-size: 16px; font-weight: 500;">시작접수</th>
                    <th style="width: 150px; font-size: 16px; font-weight: 500;">종료접수</th>
                  </tr>
                </thead>
                <tbody>
                    
                </tbody>
            </table>
           
           <input type="hidden" id="partcptnIdInput">
           
            <br clear="both"><br>
            
            
            <br><br>
        </div>
        <br><br>
    </div>
    
    
    
    <script>

       let start = 1;
       let end = 50;
       let pageSize = 50;
       let mySelect = "";
       let isOld = false;
       let searchText = "";
          //현재 스크롤 위치 저장
        let lastScroll = 0;             
       
       function addData() {
          console.log('addData 호출');
          
          if(start == 1){
             console.log('clear');
             $("#oneBoardList tbody").html("");
          }
          
          $.ajax({
                url:"scroll.do?start=" + start + "&end=" + end + "&ATDRC_NM=" + mySelect + "&PARTCPTN_SJ=" + searchText,
                success:data => {
                   console.log("ajax통신 성공");
                   if( data.tbPartcptn === undefined ) {
                      //$("#oneBoardList tbody").html("<tr></tr>");
                      return;
                   }
                   
                   let dataArr = data.tbPartcptn.row;
                   if(isOld) {
                      dataArr = dataArr.filter((obj) => obj.RCEPT_DE1.indexOf('2023') == -1);
                   } else {
                         //dataArr = dataArr.filter((obj) => obj.PARTCPTN_SJ.indexOf('마감') == -1 && obj.RCEPT_DE1.indexOf('2023') != -1);
                         dataArr = dataArr.filter((obj) => obj.RCEPT_DE1.indexOf('2023') != -1 && obj.PARTCPTN_SJ.indexOf('마감') == -1);
                   }
                  
                   //console.log(dataArr);
                   let value = "";
                   for(let i in dataArr){
                     //console.log(dataArr[i].PARTCPTN_ID);
                      value += "<tr>"
                               + "<td>" + dataArr[i].ATDRC_NM + "</td>"
                               + "<td>" + dataArr[i].TY_NM + "</td>"
                               + "<td>" + dataArr[i].PARTCPTN_SJ + "</td>"
                               + "<td>" + dataArr[i].SE_NM + "</td>"
                               + "<td>" + dataArr[i].RCEPT_DE1 + "</td>"
                               + "<td>" + dataArr[i].RCEPT_DE2 + "</td>"
                               + "<td class='PARTCPTN_ID' style='display:none;'>" + dataArr[i].PARTCPTN_ID + "</td>"
                               + "<td class='PARTCPTN_SJ' style='display:none;'>" + dataArr[i].PARTCPTN_SJ + "</td>"
                               + "<td class='RCEPT_DE1' style='display:none;'>" + dataArr[i].RCEPT_DE1 + "</td>"
                               + "<td class='RCEPT_DE2' style='display:none;'>" + dataArr[i].RCEPT_DE2+ "</td>"
                               + "<td class='CN' style='display:none;'>" + dataArr[i].CN+ "</td>"
                            + "</tr>"
                   }
                   $("#oneBoardList tbody").append(value);
                   start += pageSize;
                   end += pageSize;
                },
                error : () => {
                   console.log("ajax통신 실패");
                }
                
              })
              
          }
       
       

    
       $(document).ready(function() {
          
          function searchByText() {
             console.log('searchByText호출');
             searchText = $("#searchText").val();
             console.log('searchText', searchText);
             isOld = false;
             start = 1;
              end = 50;
             addData();
          }
          // 클릭시 검색
          
          function searchPast() {
             console.log('searchPast호출');
             isOld = true;
             start = 1;
              end = 50;
             addData();
          }
          
          function filterData() {
              mySelect = $("#mySelect").val();
              searchText = $("#searchText").val();
              isOld = false;
              start = 1;
              end = 50;
              addData();
          }
          
          $('#searchBtn').on('click', function() {
             searchByText();
          });
          
          $('#pastBtn').on('click', function() {
             searchPast();
          });
       
           //getData();
           addData();
           
           $("#searchText").on("keyup",function(key){
               if(key.keyCode==13) {
                  searchByText();
                 
               }
           });
           
           $("#mySelect").on('change', function(e) {
              
              filterData();
           });
           
           // 검색 버튼 클릭 이벤트 핸들러 추가
           /* 
           document.querySelector('.searchBtn button').addEventListener('click', function() {
               searchByText();
           });
           
          // Enter 키 눌렀을 때 검색 실행
           document.querySelector('#searchText').addEventListener('keyup', function(event) {
               if (event.key === 'Enter') {
                   searchByText();
               }
           }); 
         */

           
            $(document).on("click", "#oneBoardList>tbody>tr", function () {
               var partcptnId = $(this).children(".PARTCPTN_ID").text()
               var PARTCPTN_SJ = $(this).children(".PARTCPTN_SJ").text()
               var RCEPT_DE1 = $(this).children(".RCEPT_DE1").text()
               var RCEPT_DE2 = $(this).children(".RCEPT_DE2").text()
               var CN = $(this).children(".CN").text()
               location.href = "oneDetail.do?partcptnId=" + partcptnId;
                
             });
             
             $(document).scroll(function(e){
                //현재 높이 저장
                var currentScroll = $(this).scrollTop();
                //전체 문서의 높이
                var documentHeight = $(document).height();
   
                //(현재 화면상단 + 현재 화면 높이)
                var nowHeight = $(this).scrollTop() + $(window).height();
   
                
   
                //스크롤이 아래로 내려갔을때만 해당 이벤트 진행.
                if(currentScroll > lastScroll + 50){
   
                    //nowHeight을 통해 현재 화면의 끝이 어디까지 내려왔는지 파악가능 
                    //즉 전체 문서의 높이에 일정량 근접했을때 글 더 불러오기)
                    if(documentHeight < (nowHeight + (documentHeight*0.1))){
                        console.log("이제 여기서 데이터를 더 불러와 주면 된다.");
                        console.log("documentHeight", documentHeight);
                        console.log("nowHeight", nowHeight);
                        console.log("currentScroll", currentScroll);
                        console.log("lastScroll", lastScroll);
                        
                        ////////////////////////////////
                        
                        addData();
                       //현재위치 최신화
                       lastScroll = currentScroll;
                    }

               }
   
            })
     });

         
               
   

           
    </script>
    
    <jsp:include page="../common/footer.jsp"/>
   
</body>
</html>