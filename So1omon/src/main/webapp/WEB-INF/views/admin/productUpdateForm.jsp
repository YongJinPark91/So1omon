<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title>
 <style>
    #main{
      margin: 0px;
    }
    
    #product-info{
      font-size: 13px;
    }
    
    #option-list{
      font-size: 13px;
      margin-top: 30px;
    }
    
    #product-title-img, #product-detail-img{
      margin-top: 30px;
      font-size: 14px;
    }
    
    .btn-sm{
      font-size: 11px;
      width: 80px;
    }
    
    .form-select{
    	width:200px;
    	display: inline-block;
    }
    
    .form-control{
    	display: inline-block;
    }
    
    #productForm td{
    	font-size: 14px;
    }
    
    .numInput{
      width: 110px;
      display: inline-block;
    }
    
    </style>
</head>
<body>
	<main id="main" class="main">
    <button class="btn btn-sm btn-primary" onclick="history.back();" style="margin-bottom: 10px;">< 뒤로가기</button>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title" style="font-weight: bolder;">상품상세</h5>
                <div id="product-info">
                  <form action="updateProduct.admin" method="post" enctype="multipart/form-data">
                    <table id="productForm">
                      <tr height="24">
                        <th width="100">상품번호</th>
                        <td>${ p.productNo }</td>
                      </tr>
                      <tr height="24">
                        <th>카테고리</th>
                        <td>
                          ${ p.categoryL } -  
                          <select  aria-label="Default select example" class="form-select" name="categoryS">
                          	<c:forEach var="c" items="${ cList }">
                            	<option value="${ c.categoryNo }">${ c.categoryS }</option>
                            </c:forEach>
                          </select>
                          <script>
                          		let co = '${p.categoryNo}';
                          		$(".form-select option").each(function(i,e){
                          			if($(this).val() == co){
										$(this).attr("selected", true);                          				
                          			}
                          		})
                          </script>
                        </td>
                      </tr>
                      <tr height="24">
                        <th>상품명</th>
                        <td><input class="form-control" name="productName" type="text" value="${ p.productName }" style="width: 450px;"></td>
                      </tr>
                      <tr height="24">
                        <th>배송비</th>
                        <td><input class="form-control numInput" name="sale" type="number" value="${ p.delivery }" > 원</td>
                      </tr>
                    </table>
                </div>

                <div id="product-title-img">
                  <b>대표이미지</b><br>
                  <img width="170" height="170" src="${ p.thumbnail }"><br>
                </div>

                <div id="product-detail-img">
                  <b>상세이미지</b><br>
                  <c:forEach var="at" items="${ atList }" varStatus="i">
                  	<div style="display:inline-block;" id="file${ at.fileNo }">
<%-- 	                  <a style="cursor:pointer;" onclick="removeImg(${ at.fileNo }, this);"><i class="fa-solid fa-xmark"></i></a><br> --%>
	                  <img width="200" height="350" src="${ at.filePath }" id="Img${ i.index }">
	                  <input type="file" name="detailFiles" class="form-control" id="file${i.index }" onchange="loadImg(this, ${i.index }, ${ at.fileNo });"><br><br>
	                </div>
	                <div style="display:none;">
	                </div>
                  </c:forEach>
                </div>
                <input type="hidden" name="fno" value=""/>


              </div>
            </div>

          </div>
          <div class="d-grid gap-2 mt-3">
            <button class="btn btn-primary" type="submit">수정 완료</button>
          </div>
		</form>
			<script>
				function removeImg(fno, e){
							$("#file"+fno).css("display", "none");
					$(e).parent().next().css("display", "");
// 					$.ajax({
// 						url:"removeProductImg",
// 						data:{fno:fno},
// 						success:function(){
// 						},
// 						error:function(){
// 							console.log("이미지 삭제 ajax 통신 실패");
// 						}
// 					})
				}
				
                	let fArr = [];
				function loadImg(inputFile, num, fno){
           			let a = "#Img" + num;
                	if(inputFile.files.length == 1){
                		if(!fArr.includes(fno)){
	                		fArr.push(fno);
                		}
                		$("input[name=fno]").val(fArr.join(","));
                		console.log(fArr);
                		console.log($("input[name=fno]").val());
                		const reader = new FileReader();
                		
                		reader.readAsDataURL(inputFile.files[0]);
                		
                		reader.onload = function(e){
                			$(a).attr("src", e.target.result);
                		}
                	}
                }
				
            </script>
        </div>
      </div>
    </section>

  </main>

</body>
</html>