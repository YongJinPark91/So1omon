<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title>
<style>
    .form-select{
    width: 200px;
    font-size: 14px;
    /* float: right; */
    margin-top: 0px;
    margin-bottom: 20px;
    display: inline-block;
    }

    #product-list p{
      margin: 5px 0px 0px 0px;
      font-size: 13px;
      color: gray;
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
	    <h1>공동구매 상품</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">상품 관리</li>
	        <li class="breadcrumb-item">공동구매 상품</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div align="right">
	            <select class="form-select" aria-label="Default select example">
	                <option value="">전체</option>
	                <option value="group">공동구매</option>
	                <option value="hot">핫딜</option>
	              </select>
	              <button class="btn btn-secondary" style="margin-bottom: 10px;" onclick="location.href='groupbuyEnrollForm.admin'">상품 등록</button>
	            </div>
	            <div class="card">
	              <div class="card-body">
	                <br>
		            
	                <table class="table" id="product-list">
	                  <thead>
	                    <tr align="center">
	                      <th width="100"></th>
	                      <th>상품명</th>
	                      <th>할인</th>
	                      <th>시작날짜</th>
	                      <th>종료날짜</th>
	                      <th width="80">상태</th>
	                      <th></th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    
	                  </tbody>
	                </table>
	                
	                <script>
	                $(function(){
	                	  
	                    let num = 1;
	                    let limit = 20;
	                    let type = "all";
	                	productList(num, limit, type);
	                	  
	                    
	                	// 스크롤바 함수
	                    $(window).scroll(function(){
	                    	let $window = $(this);
	                    	let scrollTop = $window.scrollTop();
	                    	let windowHeight = $window.height();
	                    	let documentHeight = $(document).height();
	                    	
	                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
	                    		num = num + 1;
	                    		productList(num, limit, type);
	                    	}
	                    })
	                    
	                    // 타입별 조회
	                     $(".form-select").on("change", function(){
		                  		if($(this).val() == "hot"){
		                  			type = "selectHotDeal";
		                  			num = 1;
		                  			$("#product-list tbody").html("");
		                        	productList(num, limit, type);
		                  		}else if($(this).val() == "group"){
		                  			type = "selectGroupDeal";
		                  			num = 1;
		                  			$("#product-list tbody").html("");
		                        	productList(num, limit, type);
		                  		}else{
		                  			type = "all";
		                  			num = 1;
		                  			$("#product-list tbody").html("");
		                  			productList(num, limit, type);
		                  		}
		                  			
		                  		
		                  	})
		                  	
	                  	 
	                    
	                  })
	                   
	                  
	                  // 상품 조회 ajax 함수
	                  function productList(num, limit, type){
                        $.ajax({
                             url:"selectGroupbuyList.admin",
                             data:{
                                num:num,
                                limit:10,
                                type:type
                                },
                             success:function(list){
                                let value = $("#product-list tbody").html();
                                
                                for(let i in list){
                                   value += "<tr align='center'>"
                                          + "<td><img src='" + list[i].thumbnail + "' width='100' height='100'></td>"
                                          + "<td>" + list[i].productName 
                                          + "<p>" + list[i].options + "</p></td>"
                                          + "<td>" + list[i].sale + "%</td>"
                                          + "<td>" + list[i].gbuyStart + "</td>"
                                          + "<td>" + list[i].gbuyEnd + "</td>";
                                          
                                   if(list[i].status == 'N'){
                                      value += "<td style='color:green;'>대기중</td>";
                                   }else if(list[i].status == 'S'){
                                      value += "<td style='color:blue;'>판매중</td>";
                                   }else{
                                      value += "<td style='color:red;'>종료</td>";
                                   }
                                   
                                   value += "<td><button class='btn btn-sm btn-outline-primary' onclick='editGroupbuy(`" + list[i].gbuyNo + "`);'>수정</button></td></tr>";
                                   
                                }
                                
                                $("#product-list tbody").html(value);
                                
                             },
                             error:function(){
                                console.log("상품조회 ajax 실패!");
                             }
                          })
                          
                          
                     }
	            	 // 수정페이지
	            	 function editGroupbuy(gbuyNo) {
					    window.open("gbuyUpdateForm.admin?gbuyNo="+ gbuyNo, "_blank", "width=800,height=450,left=500,top=100");
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