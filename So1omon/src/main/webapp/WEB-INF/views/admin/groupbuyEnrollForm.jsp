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
      display: inline-block;
      margin-bottom: 5px;
    }

    .numInput{
      width: 90px;
      display: inline-block;
    }
  </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
	
	    <div class="pagetitle">
	      <h1>공동구매 상품등록</h1>
	      <nav>
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	          <li class="breadcrumb-item">상품관리</li>
	          <li class="breadcrumb-item">공동구매 상품</li>
	          <li class="breadcrumb-item active">공동구매 상품등록</li>
	        </ol>
	      </nav>
	    </div><!-- End Page Title -->
	
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <form action="insertGroupbuy.admin" method="post">
	            <div class="card">
	              <div class="card-body">
	                <!-- <h5 class="card-title">General Form Elements</h5> -->
	                <br>
	                <!-- General Form Elements -->
	                <div class="row mb-3">
	                  <label class="col-sm-2 col-form-label">카테고리</label>
	                  <div class="col-sm-10">
	                    <select class="form-select" id="categoryL" aria-label="Default select example" style="width: 300px;">
	                      <option selected>대분류선택</option>
	                    </select>
	                    <select class="form-select" id="categoryS" aria-label="Default select example" style="width: 300px;">
	                      <option selected>소분류선택</option>
	                    </select>
	                    <br>
	                    <select class="form-select" id="product" aria-label="Default select example" name="productNo">
	                      <option selected>상품 선택</option>
	                    </select>
	                  </div>
	                </div>
	                <div class="row mb-3">
	                  <label for="inputPassword" class="col-sm-2 col-form-label">할인율</label>
	                  <div class="col-sm-10">
	                    <input type="number" class="form-control numInput" name="sale"> %
	                  </div>
	                </div>
	                <div class="row mb-3">
	                  <label for="inputPassword" class="col-sm-2 col-form-label">최소인원</label>
	                  <div class="col-sm-10">
	                    <input type="number" value=0 class="form-control numInput" name="gbuyMin"> 명
	                  </div>
	                </div>
	                <div class="row mb-3">
	                  <label for="inputDate" class="col-sm-2 col-form-label">시작날짜</label>
	                  <div class="col-sm-5">
	                    <input type="date" class="form-control" name="gbuyStart">
	                  </div>
	                  <div class="col-sm-5">
	                    <input type="time" class="form-control" name="sTime">
	                  </div>
	                </div>
	                <div class="row mb-3">
	                  <label for="inputDate" class="col-sm-2 col-form-label">종료날짜</label>
	                  <div class="col-sm-5">
	                    <input type="date" class="form-control" name="gbuyEnd">
	                  </div>
	                  <div class="col-sm-5">
	                    <input type="time" class="form-control" name="eTime">
	                  </div>
	                </div>
	              </div>
	              
	            </div>
	            <div class="d-grid gap-2 mt-3">
	              <button class="btn btn-primary btn-lg" type="submit">공동구매 상품등록</button>
	            </div>
	          </form><!-- End General Form Elements -->
	
	        </div>

			<script>
			 $(function(){
             	
                 // 대분류 카테고리 불러오기
                 	$.ajax({
                 		url:"selectCategoryL.admin",
                 		success:function(list){
								let value = "<option>대분류 선택</option>";
								for(var i in list){
									value += "<option>" + list[i].categoryL  + "</option>";
								}
								
								$("#categoryL").html(value);
                 		},
                 		error:function(){
                 			console.log("카테고리 대분류 ajax 통신 실패!");
                 		}
                 	})
                 	
                 	
                 })
                 
                 // 대분류에 따른 소분류 가져오기
                	$("#categoryL").on("change", function(){
                		
                		$.ajax({
                			url:"selectCategoryS.admin",
                			data:{categoryL:$(this).val()},
                			success:function(list){
								let value = "";
								for(var i in list){
									value += "<option value='" + list[i].categoryNo + "'>" + list[i].categoryS + "</option>"
								}
                				$("#categoryS").html(value);
                				
                				// 대분류 선택시 첫번째 해당하는 소분류에 따른 상품명 가져오기
                				$.ajax({
        	                		url:"selectProduct.admin",
        	                		data:{categoryNo:$("#categoryS").children().eq(0).val()},
        	                		success:function(list){
        	                			let value = "";
        	                			for(var i in list){
        	                				value += "<option value='" + list[i].productNo + "'>" + list[i].productName + "</option>"
        	                			}
        	                			$("#product").html(value);
        	                		}
                        		})
                				
                			},
                			error:function(){
                				console.log("카테고리 소분류 불러오기 ajax 통신 실패!");
                			}
                		})
                		
                		
                	})
                	
                // 소분류에 따른 해당 상품 가져오기
                $("#categoryS").on("change", function(){
                	console.log("변함");
                	$.ajax({
                		url:"selectProduct.admin",
                		data:{categoryNo:$(this).val()},
                		success:function(list){
                			console.log(list);
                			let value = "";
                			for(var i in list){
                				value += "<option value='" + list[i].productNo + "'>" + list[i].productName + "</option>"
                			}
                			$("#product").html(value);
                		},
                		error:function(){
                			console.log("상품조회 ajax 통신 실패");
                		}
                	})
                })
                
                
			</script>	
	        
	      </div>
	    </section>
	
	  </main>
</body>
</html>