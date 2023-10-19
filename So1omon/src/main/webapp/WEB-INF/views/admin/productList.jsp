<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>So1omon - 상품조회</title>
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

    .form-select{
    width: 200px;
    font-size: 14px;
    /* float: right; */
    margin-top: 0px;
    margin-bottom: 20px;
    }

    #product-list p{
      margin: 5px 0px 0px 0px;
      font-size: 13px;
      color: gray;
    }

    #product-list td{
      vertical-align: middle;
    }
    
    #porduct-list img{
    	display: block;
    	margin:auto;
    }
  </style>
   
</head>
<body>
	<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main" style="padding-bottom:100px;">
  
	  <div class="pagetitle">
	    <h1>상품 조회</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">상픔 관리</li>
	        <li class="breadcrumb-item">상품 등록</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	
	  <!-- 검색바 -->
	<!--   
	  <div class="search-bar">
	    <form class="search-form d-flex align-items-center" method="" action="#">
	      <input type="text" name="">
	      <button type="submit"><i class="bi bi-search"></i></button>
	    </form>
	  </div>
	  -->
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body">
	
	                <br>
	                <table class="table table-hover" id="product-list">
	                  <thead>
	                    <tr align="center">
	                      <th width="10"><input type="checkbox"></th>
	                      <th width="200"></th>
	                      <th>카테고리</th>
	                      <th>상품명</th>
	                      <th>가격</th>
	                      <th>할인</th>
	                      <th>배송비</th>
	                      <th>판매량</th>
	                      <th width="80">상태</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                   
	                  </tbody>
	                </table>
	                
	                <script>
	                
	                  $(function(){
	                	  
	                    let num = 1;
	                	productList(num);
	                	  
	                    
	                	// 스크롤바 함수
	                    $(window).scroll(function(){
	                    	let $window = $(this);
	                    	let scrollTop = $window.scrollTop();
	                    	let windowHeight = $window.height();
	                    	let documentHeight = $(document).height();
	                    	
	                    	if(scrollTop + windowHeight + 10 >= documentHeight ){
	                    		num = num + 1;
	                    		productList(num);
	                    	}
	                    })
	                    
	                  })
	                  
		                  // 상품 상세페이지
		                  $(document).on("click", "#product-list tbody tr", function(){
		                      let productNo = $(this).children("input[type=hidden]").val();
		                      window.open("productDetail.admin?productNo="+productNo, "_blank","width=700,height=800,left=500,top=100");		                	  
		                  })
		                  
		                  
	                   
	                  
	                  // 상품 조회 ajax 함수
	                  function productList(num){
                        $.ajax({
                             url:"productList.admin",
                             data:{
                                num:num,
                                limit:10
                                },
                             success:function(list){
                                let value = $("#product-list tbody").html();
                                
                                for(let i in list){
                                   value += "<tr align='center'>"
                                          + "<input type='hidden' value='" + list[i].productNo + "'>"
                                          + "<td><input type='checkbox'></td>"
                                          + "<td><img src='" + list[i].thumbnail + "' width='100' height='100'></td>"
                                          + "<td>" + list[i].category + "</td>"
                                          + "<td>" + list[i].productName 
                                          + "<p>" + list[i].options + "</p></td>"
                                          + "<td>" + list[i].price + "원</td>"
                                          + "<td>" + list[i].sale + "%</td>";
                                          
                                   if(list[i].delivery == '0'){
                                      value += "<td>무료배송</td>";
                                   }else{
                                      value += "<td>" + list[i].delivery + "원</td>";
                                   }
                                   
                                   value += "<td>" + list[i].sales + "</td>";
                                          
	                              if(list[i].status == 'Y'){
	                                 value += "<td>판매중</td></tr>";
	                              }else{
	                                 value += "<td>미판매</td></tr>";
	                              }
                                }
                                
                                $("#product-list tbody").html(value);
                                
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
	  
	  <jsp:include page="footerAdmin.jsp"/>
	  
</body>
</html>