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
    
    
    </style>
</head>
<body>
	<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
    <button class="btn btn-sm btn-light" onclick="history.back();" style="margin-bottom: 10px;">< 뒤로가기</button>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title" style="font-weight: bolder;">상품상세</h5>
                <div id="product-info">
                  <form action="">
                    <table id="productForm">
                      <tr height="24">
                      
                        <th width="100">상품번호</th>
                        <td>${ p.productNo }</td>
                      </tr>
                      <tr height="24">
                        <th>카테고리</th>
                        <td>
                          ${ categoryL } -  
                          <select  aria-label="Default select example" class="form-select">
                            <option value="">면요리</option>
                            <option value="">샐러드</option>
                          </select>
                        </td>
                      </tr>
                      <tr height="24">
                        <th>상품명</th>
                        <td><input class="form-control" type="text" value="${ p.productName }" style="width: 450px;"></td>
                      </tr>
                      <tr height="24">
                        <th>할인률</th>
                        <td><input class="form-control" type="number" value="${ p.sale } * 100" style="width: 80px;"> %</td>
                      </tr>
                      <tr height="24">
                        <th>배송비</th>
                        <td><input class="form-control" type="number" value="${ p.delivery }" style="width: 80px;"> 원</td>
                      </tr>
                    </table>
                  </form>
                </div>

                <div id="product-title-img">
                  <b>대표이미지</b><br>
                  <img width="170" height="170" src="${ p.thumbnail }"><br>
                </div>

                <div id="product-detail-img">
                  <b>상세이미지</b><br>
                  <c:forEach var="at" items="${ atList }">
	                  <img width="200" height="350" src="${ at.filePath }">
                  </c:forEach>
                </div>


              </div>
            </div>

          </div>
          <div class="d-grid gap-2 mt-3">
            <button class="btn btn-primary" type="button">수정 완료</button>
          </div>

        </div>
      </div>
    </section>

  </main>

</body>
</html>