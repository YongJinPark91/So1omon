<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="includeScript.jsp"/>
 <style>
    .form-select{
      display: inline-block;
      margin-bottom: 5px;
    }

    .numInput{
      width: 110px;
      display: inline-block;
    }

  </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>상품등록</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">홈</a></li>
          <li class="breadcrumb-item">상품관리</li>
          <li class="breadcrumb-item active">상품등록</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <form action="insertProduct.admin" method="post" enctype="multipart/form-data">
            <div class="card">
              <div class="card-body" style="width:80%">
                <!-- <h5 class="card-title">General Form Elements</h5> -->
                <br>
                <!-- General Form Elements -->
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">카테고리</label>
                  <div class="col-sm-10">
                    <select name="categoryL" class="form-select" aria-label="Default select example" style="width: 300px;" id="categoryL" required>
                    </select>
                    <select name="categoryNo" class="form-select" aria-label="Default select example" style="width: 300px;" id="categoryS" required>
                      <option selected>소분류선택</option>
                    </select>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputEmail" class="col-sm-2 col-form-label">상품명</label>
                  <div class="col-sm-10">
                    <input name="productName" type="text" class="form-control" required>
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">가격</label>
                  <div class="col-sm-10">
                    <input name="price" type="number" class="form-control numInput" required> 원
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">할인율</label>
                  <div class="col-sm-10">
                    <input name="sale" type="number" class="form-control numInput" required> %
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">배송비</label>
                  <div class="col-sm-10">
                    <input name="delivery" type="number" class="form-control numInput" required> 원
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">대표 이미지</label>
                  <div class="col-sm-10">
                    <input name="thumbnailFile" class="form-control" type="file" required>
                    <!-- <img width="200" height="200" onclick="chooseThumbFile();">
                    <div style="display: none;">
                      <input class="form-control" type="file" id="thumbFile">
                    </div> -->
                  </div>
                </div>

                <!-- <script>
                  function chooseThumbFile(){
                    $("#thumbFile").click();
                  }

                </script> -->

                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">상세 이미지 (다중선택)</label>
                  <div class="col-sm-10">
                    <input type="file" class="form-control" multiple name="detailFiles" required>
                  </div>
                </div>

                <fieldset class="row mb-3">
                  <legend class="col-form-label col-sm-2 pt-0">옵션구분</legend>
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="productOption" id="productOption1" value="사이즈" required>
                      <label class="form-check-label" for="productOption1">사이즈</label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="productOption" id="productOption2" value="색상">
                      <label class="form-check-label" for="productOption2">색상</label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="productOption" id="productOption3" value="선택">
                      <label class="form-check-label" for="productOption3">선택</label>
                    </div>
                  </div>
                </fieldset>
                
                <input type="hidden" name="optNum" value="1">

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">옵션추가</label>
                  <div class="col-sm-10">
                    <table class="table table-borderless" id="option-list">
                      <thead>
                        <tr align="center">
                          <th width="600">옵션명</th>
                          <th>재고</th>
                          <th>가격</th>
                        </tr>
                      </thead>
                      <tbody id="tbody">
                        <tr align="center">
                          <td><input id="optionName0" name="optionName" type="text" class="form-control"  required></td>
                          <td><input id="stock0" type="number" class="form-control numInput"  required></td>
                          <td><input id="optPrice0" type="number" class="form-control numInput"  required> 원</td>
                        </tr>
                      </tbody>
                    </table>
                    
                    <div align="center">
                      <button type="button" class="btn btn-secondary rounded-pill" onclick="setInput();">추가</button>
                    </div>
  
                    <script>
                      
                    let opt = {};	
                    let optArr = [];
                    let num = 0;
                    
                		let optName = "";
                		let stock = "";
                		let optPrice = "";
                      function setInput(){
	                    	optName = $("#optionName" + num).val();
	                    	stock = $("#stock" + num).val();
	                    	optPrice = $("#optPrice" + num).val();
	                    	if(optName == ""){
	                    		displayOpt();
	                    	}else{
		                    	opt = {
	                    			optName:optName,
		                    		stock:stock,
		                    		optPrice:optPrice
		                    	}
			                    	optArr.push(opt);
		                    	
			                    	num = num +1;
			                    	displayOpt();
	                    	
                      		}
                      }
	                    	
	                    	
                      function displayOpt(){
                    	  let value = "";
                    	  for(let i in optArr){
	                    	  value += "<tr align='center'><td><input name='optionName' type='text' value ='" + optArr[i].optName + "' class='form-control'required></td>"
	                    		     + "<td><input name='stock' type='number' value =" + optArr[i].stock + " class='form-control numInput'  required></td>"
	                                 + "<td><input name='optPrice' type='number' value =" + optArr[i].optPrice + " class='form-control numInput'  required> 원</td>";
                    	  }
                    	  
	                        $("#option-list tbody").html(value);
                    	  
                      } 	
                    
                      
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
                   			},
                   			error:function(){
                   				console.log("카테고리 소분류 불러오기 ajax 통신 실패!");
                   			}
                   		})
                   	})
                    
                    
                    </script>
                  </div>
                </div>

              </div>
            </div>
            <div class="d-grid gap-2 mt-3">
              <button class="btn btn-primary btn-lg" type="submit">상품등록</button>
            </div>
          </form><!-- End General Form Elements -->

        </div>

        
      </div>
    </section>

  </main>
</body>
</html>