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
	    <h1>주문 관리</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">주문 관리</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="search-bar">
	              <form class="search-form d-flex align-items-center" method="" action="#">
	                <input type="text" name="" placeholder="주문번호 검색">
	                <button type="submit"><i class="bi bi-search"></i></button>
	              </form>
	            </div>
	            <div class="card">
	              <div class="card-body">
	                <br>
	                <select class="form-select" aria-label="Default select example">
	                  <option value="">전체 주문</option>
	                  <option value="">미처리 주문</option>
	                </select>
	                <!-- <button type="button" class="btn btn-outline-primary">미발송 주문</button>
	                <button type="button" class="btn btn-outline-primary">배송중 주문</button>
	                <button type="button" class="btn btn-outline-primary">환불처리 주문</button>
	                <br><br> -->
	                <!-- <h5 class="card-title">문의 리스트</h5> -->
	                <!-- Default Accordion -->
	                <table class="table table-hover" id="order-list">
	                  <thead> 
	                    <tr align="center">
	                      <!-- <th width="10"><input type="checkbox"></th> -->
	                      <th>주문번호</th>
	                      <th>구매자</th>
	                      <th>주문날짜</th>
	                      <th>결제금액</th>
	                      <th>결제수단</th>
	                      <th>상태</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    
	                  </tbody>
	                </table>
	                
	                <script>
	                
	                  $(function(){
	                	  
	                	  let num = 1;
		                  orderList(num);
		                    
		                	// 스크롤바 함수
		                    $(window).scroll(function(){
		                    	let $window = $(this);
		                    	let scrollTop = $window.scrollTop();
		                    	let windowHeight = $window.height();
		                    	let documentHeight = $(document).height();
		                    	
		                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
		                    		num = num + 1;
		                    		orderList(num);
		                    	}
		                    })
			                    
						// 주문 상세 이동
	                    $("#order-list>tbody>tr").click(function(){
	                      let orderNo = $(this).children().eq(1).text();
	                      window.open("order-detail.html?ordernNo="+orderNo, "_blank","width=1200,height=600,left=150,top=200");
	                  
	                    })
	                  })
	                  
	                  
	                  // 주문 조회 ajax 함수
	                  function orderList(num){
                        $.ajax({
                             url:"allOrderList.admin",
                             data:{
                                num:num,
                                limit:20
                                },
                             success:function(list){
                                let value = $("#order-list tbody").html();
                                
                                for(let i in list){
                                   value += "<tr align='center'>"
                                          + "<td>" + list[i].orderNo + "</td>"
                                          + "<td>" + list[i].userId + "</td>"
                                          + "<td>" + list[i].orderDate + "</td>"
                                          + "<td>" + list[i].totalPrice + "원</td>" 
                                          + "<td>" + list[i].cashType + "</td>";
                                          
	                              if(list[i].status == 'N'){
	                                 value += "<td>결제완료</td></tr>";
	                              }else{
	                                 value += "<td>처리완료</td></tr>";
	                              }
                                } 	
                                
                                $("#order-list tbody").html(value);
                                
                             },
                             error:function(){
                                console.log("상품조회 ajax 실패!");
                             }
                          })
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