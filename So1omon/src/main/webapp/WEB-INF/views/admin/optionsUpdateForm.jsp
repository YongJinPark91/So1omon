<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="includeScript.jsp"/>
<style>
    #main{
      margin: 0px;
    }
    
    #product-info{
      font-size: 13px;
    }
    
    #option-list{
      font-size: 13px;
      margin-top: 0px;
    }
    
    #product-title-img, #product-detail-img{
      margin-top: 30px;
      font-size: 14px;
    }
    
    
    .numInput{
      width: 100px;
    }

    .form-control{
      display: inline-block;
    }
    </style>
</head>
<body>
 <main id="main" class="main">

    <button class="btn btn-sm btn-light" onclick="history.back();" style="margin-bottom: 10px;">< 뒤로가기</button>
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title" style="font-weight: bolder; text-align: center;">옵션 수정</h5>
                  
                  <table class="table" id="option-list">
                    <thead>
                      <tr align="center">
                        <th width="300">옵션명</th>
                        <th>재고</th>
                        <th>가격</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="opt" items="${ optList }">
	                      <tr align="center">
	                        <td><input type="text" value="${ opt.optionName }" class="form-control"></td>
	                        <td><input type="number" class="form-control numInput" value=${ opt.stock }></td>
	                        <td><input type="number" class="form-control numInput" value=${ opt.price }> 원</td>
	                        <td><button type="button" class="btn btn-sm btn-secondary">삭제</button></td>
	                      </tr>
                    	</c:forEach>
                    </tbody>
                  </table>
                  
                  <div align="center">
                    <button type="button" class="btn btn-sm btn-secondary rounded-pill" onclick="setInput();">추가</button>
                  </div>

                  <script>
                   
                    function setInput(){
                      let set = $("#option-list tbody").html();
                      // console.log(set);
                      set += "<tr align='center'>"
                           + "<td><input type='text' class='form-control'></td>"
                           + "<td><input type='number' class='form-control numInput'></td>"
                           + "<td><input type='number' class='form-control numInput'> 원</td>"
                           + "<td><button type='button' class='btn btn-sm btn-secondary'>삭제</button></td>"
                           +"</tr>";
                      
                      $("#option-list tbody").html(set);
                    }
                  </script>

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