<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title>
<style>
  #main{
    margin: 0px;
  }

  #order-info{
    font-size: 12px;
  }

  #product>tbody label{
    font-size: 12px;
    color: gray;
  }
  
  #product{
    font-size: 13px;
  }

</style>
</head>
<body>
  <main id="main" class="main">

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title" style="font-weight: bolder;">주문상세</h5>
                <div id="order-info">
                  <table>
                    <tr height="24">
                      <th width="120">주문번호</th>
                      <td>${ o.orderNo }</td>
                    </tr>
                    <tr height="24">
                      <th>구매자</th>
                      <td>${ o.userId }</td>
                    </tr>
                    <tr height="24">
                      <th>주소</th>
                      <td>${ o.address }</td>
                    </tr>
                    <tr height="24">
                      <th>결제일자/시각</th>
                      <td>${ o.orderDate }</td>
                    </tr>
                    <tr height="24">
                      <th>결제금액</th>
                      <td><b>${ o.totalPrice } 원</b></td>
                    </tr>
                    <tr height="24">
                      <th>결제수단</th>
                      <td>${ o.cashType }</td>
                    </tr>
                    <tr height="24">
                      <th>송장번호</th>
                      <td><a href="#">${ o.tracking }</a></td>
                    </tr>
                    <tr height="24">
                      <th>상태</th>
                      <c:choose>
                      	<c:when test="${ o.status eq 'N' }">
    	                  	<td style="color: green;">결제완료</td>
                      	</c:when>
                      	<c:otherwise>
	                      	<td style="color: tomato;">미처리</td>
                      	</c:otherwise>
                      </c:choose>
                    </tr>
                  </table>
                  
                </div>

                <br>
                <table class="table" id="product">
                  <thead>
                    <tr align="center">
                      <th colspan="2">주문상품</th>
                      <th>상품금액</th>
                      <th>수량</th>
                      <th>총 금액</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                  	<c:forEach var="od" items="${ odList }">
	                    <tr align="center">
	                      <td width="120"><img src="${ od.thumbnail }" width="100" height="100"></td>
	                      <td align="left">
	                        <b>${ od.productName }</b> <br>
	                        <label>옵션 : ${ od.optionName }</label>
	                      </td>
	                      <td>${ od.price }원</td>
	                      <td>${ od.volume }</td>
	                      <td><b>${ od.totalPrice } 원</b></td>
	                    </tr>
                  	</c:forEach>
                  	
                  </tbody>
                </table>
                
                <div class="d-grid gap-2 mt-3">
                  <button class="btn btn-primary" type="button" onclick="editAddress();">주소수정</button>
                </div>
              </div>
            </div>
            
            <script>
              function editAddress(){
                  location.href="" // controller 이동
//                 if(confirm("발송처리를 하시겠습니까?")){
//                 }
                
              }
            </script>

          </div>

        </div>
      </div>
    </section>

  </main>
</body>
</html>
