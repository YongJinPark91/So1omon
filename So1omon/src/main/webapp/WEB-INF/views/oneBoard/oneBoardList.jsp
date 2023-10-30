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
                <option value="동작구">동작구</option>
                <option value="구로구">구로구</option>
                <option value="동대문구">동대문구</option>
                <option value="성동구">성동구</option>
                <option value="동대문구">동대문구</option>
                <option value="강북구">강북구</option>
                <option value="양천구">양천구</option>
                <option value="강남구">강남구</option>
                <option value="노원구">노원구</option>
                <option value="송파구">송파구</option>
             </select>
        	
        	
        	<form id="searchForm" action="#" method="get" style="float: right;">
            
                <div class="text" >
                    <input type="text" class="form-control" id="searchText" style="width: 350px;">
                </div>
                <div class="searchBtn">
                    <button type="button" class="btn btn-outline-primary-2" onClick="searchByText()">검색</button>
                </div>
            </form>
         		
         	<button type="button" class="btn btn-outline-warning" style="display: flex; margin-left: auto">지난 사업 보기</button>
         		
         	         
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
	    let start = 11;
	    let end = 20;
	    let mySelect = "";
	    let searchText = "";
	       //현재 스크롤 위치 저장
        let lastScroll = 0;
	    
        function getData() {
    	    console.log('mySelect=====================', mySelect);
            $.ajax({
                url:"scroll.do?ATDRC_NM=" + mySelect + "&PARTCPTN_SJ=" + searchText,
                success:data => {
                   console.log("ajax통신 성공2");
                   if(data.tbPartcptn === undefined ) {
                	   $("#oneBoardList tbody").html("<tr></tr>");
                	   return;
                   }
                	   
                   let dataArr = data.tbPartcptn.row;
    			   /*if(mySelect != "") {
				   dataArr = dataArr.filter((obj) => obj.ATDRC_NM === mySelect);
                   } */
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
                               + "<td class='test' style='display:none;'>" + dataArr[i].PARTCPTN_ID + "</td>"
                               + "<td class='PARTCPTN_SJ' style='display:none;'>" + dataArr[i].PARTCPTN_SJ + "</td>"
                               + "<td class='RCEPT_DE1' style='display:none;'>" + dataArr[i].RCEPT_DE1 + "</td>"
                               + "<td class='RCEPT_DE2' style='display:none;'>" + dataArr[i].RCEPT_DE2+ "</td>"
                               + "<td class='CN' style='display:none;'>" + dataArr[i].CN+ "</td>"
                            + "</tr>"
                   }
                   $("#oneBoardList tbody").html(value);
                },
                error : () => {
                   console.log("ajax통신 실패");
                }
             })
    	};
    	
    	function addData() {
    		$.ajax({
                url:"scroll.do?start=" + start + "&end=" + end + "&ATDRC_NM=" + mySelect + "&PARTCPTN_SJ=" + searchText,
                success:data => {
                   console.log("ajax통신 성공");
                   if( data.tbPartcptn === undefined ) {
                	   $("#oneBoardList tbody").html("<tr></tr>");
                	   return;
                   }
                   
                   let dataArr = data.tbPartcptn.row;
                   /* if(mySelect != "") {
                  		dataArr = dataArr.filter((obj) => obj.ATDRC_NM === mySelect);
                   } */
                   
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
                   
                   start += 10;
                   end += 10;
                },
                error : () => {
                   console.log("ajax통신 실패");
                }
                
              })
              ///////////////////////////////////
              
          }
    	
    	function searchByText() {
    		searchText = $("#searchText").val();
    		console.log('searchText', searchText);
    		getData(); 
    	}
    
	    $(document).ready(function() {
	    	
	        getData();
	        
	        $("#searchText").on("keyup",function(key){
	            if(key.keyCode==13) {
	                /* alert("엔터키 이벤트"); */
	            	searchByText();
	            }
	        });
	        
	        $("#mySelect").on('change', function(e) {
	        	mySelect = $("#mySelect").val();
	        	console.log('mySelect', mySelect);
	        	getData();
	        	
	        });
	        
	     	// 검색 버튼 클릭 이벤트 핸들러 추가
	        document.querySelector('.searchBtn button').addEventListener('click', function() {
	            searchByText();
	        });
	     	
	    	// Enter 키 눌렀을 때 검색 실행
	        document.querySelector('#searchText').addEventListener('keyup', function(event) {
	            if (event.key === 'Enter') {
	                searchByText();
	            }
	        });


	        
            $(document).on("click", "#oneBoardList>tbody>tr", function () {
            	var partcptnId = $(this).children(".PARTCPTN_ID").text()
            	var PARTCPTN_SJ = $(this).children(".PARTCPTN_SJ").text()
            	var RCEPT_DE1 = $(this).children(".RCEPT_DE1").text()
            	var RCEPT_DE2 = $(this).children(".RCEPT_DE2").text()
            	var CN = $(this).children(".CN").text()
            	// var url = "oneDetail.do?partcptnId=" + partcptnId + "&" +
            	//		  "PARTCPTN_SJ=" + encodeURIComponent(PARTCPTN_SJ) + "&" +
            	//		  "RCEPT_DE1=" + encodeURIComponent(RCEPT_DE1) +  "&" +
            	//		  "RCEPT_DE2=" + encodeURIComponent(RCEPT_DE2) +  "&" +
            	//		  "CN" + encodeURIComponent(CN) + "&";	  
            			  
            			  
                //location.href = url;
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
	             if(currentScroll > lastScroll){
	
	                 //nowHeight을 통해 현재 화면의 끝이 어디까지 내려왔는지 파악가능 
	                 //즉 전체 문서의 높이에 일정량 근접했을때 글 더 불러오기)
	                 if(documentHeight < (nowHeight + (documentHeight*0.1))){
	                     console.log("이제 여기서 데이터를 더 불러와 주면 된다.");
	                     
	                     
	                     ////////////////////////////////
	                     
	                     addData();
	                 }
	
	             //현재위치 최신화
	             lastScroll = currentScroll;
	            }
	
	         });
	  });

         
		         
	

           
    </script>
    
    <jsp:include page="../common/footer.jsp"/>
	
</body>
</html>