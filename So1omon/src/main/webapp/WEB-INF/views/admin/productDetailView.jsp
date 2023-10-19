<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    
    
    
    </style>
</head>
<body>

  <jsp:include page="includeScript.jsp"/>
  <main id="main" class="main" style="margin-top:0px;">
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title" style="font-weight: bolder;">상품상세</h5>
                
                <div id="product-info">
                  <table>
                    <tr height="24">
                      <th width="100">상품번호</th>
                      <td id="productNo">${ p.productNo }</td>
                    </tr>
                    <tr height="24">
                      <th>카테고리</th>
                      <td>${ p.category }</td>
                    </tr>
                    <tr height="24">
                      <th>상품명</th>
                      <td>${ p.productName }</td>
                    </tr>
                    <tr height="24">
                      <th>가격</th>
                      <td>${ p.price } 원</td>
                    </tr>
                    <tr height="24">
                      <th>할인률</th>
                      <td>${ p.sale }%</td>
                    </tr>
                    <tr height="24">
                      <th>배송비</th>
                      <c:choose>
                      	<c:when test="${ p.delivery eq 0 }">
                      		<td>무료배송</td>
                      	</c:when>
                      	<c:otherwise>
                      		<td>${ p.delivery } 원 </td>
                      	</c:otherwise>
                      </c:choose>
                    </tr>
                    <tr height="24">
                      <th>조회수</th>
                      <td>${ p.count }</td>
                    </tr>
                    <tr height="24">
                      <th>상태</th>
                      <c:choose>
                      	<c:when test="${ p.status eq 'Y' }">
	                      <td style="color: blue;">판매중</td>
                      	</c:when>
                      	<c:otherwise>
                      		<td style="color: blue;"> 판매종료 </td>
                      	</c:otherwise>
                      </c:choose>
                    </tr>
                  </table>
                </div>

                
                <div id="product-title-img">
                  <b>대표이미지</b><br>
                  <img width="170" height="170" src="${ p.thumbnail }"><br>
                </div>

                <div id="product-detail-img">
                  <b>상세이미지</b><br>
                  <c:forEach var="at" items="${ atList }">
	                  <img width="200" height="350" src="${ at.filePath }" onclick="imgLoad(this);">                  	
                  </c:forEach>
                </div>

                <div align="center" style="margin-top: 30px;">
                  <button class="btn btn-sm btn-outline-primary" onclick="productEdit();">상품수정</button>
                </div>
                
                <script>
                  function productEdit(){
                    location.href="productUpdateForm.admin?productNo=" + $("#productNo").text();
                  }
                  
                  function imgLoad(img){
                	  //console.log($(img).attr("src"));
                	  window.open($(img).attr("src"), "_blank","width=700,height=800,left=500,top=100");
                  }
                  
                </script>


              </div>
            </div>

            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title" style="font-weight: bolder;">옵션 목록</h5>
                  
                  <table class="table" id="option-list">
                    <thead>
                      <tr align="center">
                        <th>옵션명</th>
                        <th>재고</th>
                        <th>가격</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="opt" items="${ optList }">
	                      <tr align="center">
	                        <td>${ opt.optionName }</td>
	                        <td>${ opt.stock }</td>
	                        <td>${ opt.price }원</td>
	                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>

                  <div align="center" style="margin-top: 30px;">
                    <button class="btn btn-sm btn-outline-primary" onclick="optionEdit();">옵션수정</button>
                  </div>
                  
                  <script>
                    function optionEdit(){
                      location.href="productEditForm.admin";
                    }
                  </script>
  
                </div>
              </div>

          </div>

          <div class="d-grid gap-2 mt-3">
            <button class="btn btn-danger" type="button">판매중지</button>
          </div>

        </div>
      </div>
    </section>

  </main>
  </body>

</html>