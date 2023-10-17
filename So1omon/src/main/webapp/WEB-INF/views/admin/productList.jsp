<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>So1omon - 상품조회</title>

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
	                      <th>할인</th>
	                      <th>배송비</th>
	                      <th>판매량</th>
	                      <th width="80">상태</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <tr align="center">
	                      <input type="hidden" value="상품번호">
	                      <td><input type="checkbox"></td>
	                      <td><img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/169053562587529591.jpg?gif=1&w=640&h=640&c=c&webp=1" width="100" height="100"></td>
	                      <td>밀키트 - 면요리</td>
	                      <td>
	                        따뜻하게 집에서! 베트남쌀국수 15팩/30팩
	                        <p>
	                          15팩 / 30팩
	                        </p>
	                      </td>
	                      <td>20%</td>
	                      <td>0</td>
	                      <td>50</td>
	                      <td>판매중</td>
	                    </tr>
	                    <tr align="center">
	                      <input type="hidden" value="상품번호">
	                      <td><input type="checkbox"></td>
	                      <td><img src="resources/productFiles/test1.avif" width="80" height="80"></td>
	                      <td>밀키트 - 면요리</td>
	                      <td>
	                        따뜻하게 집에서! 베트남쌀국수 15팩/30팩
	                        <p>
	                          15팩 / 30팩
	                        </p>
	                      </td>
	                      <td>20%</td>
	                      <td>0</td>
	                      <td>50</td>
	                      <td>판매중</td>
	                    </tr>
	                  </tbody>
	                </table>
	                
	                <script>
	                
	                  $(function(){
	                	  
		                  // 상품 상세페이지
	                    $("#product-list tbody tr").click(function(){
	                      let pno = $(this).children("input[type=hidden]").val();
	                      window.open("product-detail.html?pno="+pno, "_blank","width=700,height=800,left=500,top=200");
	                    })

	                    let num = 1;
	                    
	                    $.ajax({
	                    	url:"productList.admin",
	                    	data:{
	                    		num:num,
	                    		limit:20
	                    		},
	                    	success:function(list){
	                    		console.log(list)
	                    	},
	                    	error:function(){
	                    		console.log("상품조회 ajax 실패!");
	                    	}
	                    })
	                    
	                  })
	
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