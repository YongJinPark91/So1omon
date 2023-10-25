<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title><style>
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
  </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
	  
	  <div class="pagetitle">
	    <h1>문의사항 관리</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">문의 관리</li>
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
	                <select class="form-select" aria-label="Default select example">
	                  <option value="">미처리 문의</option>
	                  <option value="">전체 문의</option>
	                </select>
	                <!-- <button type="button" class="btn btn-outline-primary">전체 문의</button>
	                <button type="button" class="btn btn-outline-primary">미답변 문의</button>
	                <br><br> -->
	                <!-- <h5 class="card-title">문의 리스트</h5> -->
	                <!-- Default Accordion -->
	                <table class="table table-hover">
	                  <thead>
	                    <tr align="center">
	                      <th width="10"><input type="checkbox"></th>
	                      <th>질문유형</th>
	                      <th width="500">제목</th>
	                      <th>작성자</th>
	                      <th>작성일</th>
	                      <th width="80">답변여부</th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <tr align="center">
	                      <td><input type="checkbox"></td>
	                      <td>[상품문의]</td>
	                      <td>문의사항입니다1</td>
	                      <td>admin1</td>
	                      <td>2023-10-10</td>
	                      <td>N</td>
	                    </tr>
	                    <tr align="center">
	                      <td><input type="checkbox"></td>
	                      <td>[상품문의]</td>
	                      <td>문의사항입니다1</td>
	                      <td>admin1</td>
	                      <td>2023-10-10</td>
	                      <td>N</td>
	                    </tr>
	                  </tbody>
	                </table>
	  
	              </div>
	            </div>
	
	          </div>
	
	        </div>
	      </div>
	    </section>
	
	  </main>
</body>
</html>