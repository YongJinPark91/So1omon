<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title>
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

    #product-list td{
      vertical-align: middle;
    }
    </style>
</head>
<body>
<jsp:include page="headerAdmin.jsp"/>
	<main id="main" class="main">
	  
	  <div class="pagetitle">
	    <h1>중고게시판</h1>
	    <nav>
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item"><a href="index.html">홈</a></li>
	        <li class="breadcrumb-item">게시판 관리</li>
	        <li class="breadcrumb-item">중고게시판</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	  <div class="search-bar">
	    <form class="search-form d-flex align-items-center" method="" action="#">
	      <input type="text" name="">
	      <button type="submit"><i class="bi bi-search"></i></button>
	    </form>
	  </div>
	    <section class="section">
	      <div class="row">
	        <div class="col-lg-12">
	
	          <div class="col-12">
	            <div class="card">
	              <div class="card-body" style="padding:20px;">
	
	                <table class="table table-hover" id="product-list">
	                  <thead>
	                    <tr align="center">
	                      <th width="10"><input type="checkbox"></th>
	                      <th>글번호</th>
	                      <th width="100">대표사진</th>
	                      <th width="400">제목</th>
	                      <th>작성자</th>
	                      <th>작성일</th>
	                      <th>조회수</th>
	                      <th width="80">상태</th>
	                      <th></th>
	                    </tr>
	                  </thead>
	                  <tbody>
	                    <tr align="center">
	                      <td><input type="checkbox"></td>
	                      <td>T1</td>
	                      <td><img src="assets/img/product-1.jpg" width="80" height="80"></td>
	                      <td>제목입니다1</td>
	                      <td>user01</td>
	                      <td>2023-10-15</td>
	                      <td>50</td>
	                      <td></td>
	                      <td>
	                        <button class="btn btn-secondary btn-sm" onclick="deleteBoard();">삭제</button>
	                      </td>
	                    </tr>
	                    <tr align="center">
	                      <td><input type="checkbox"></td>
	                      <td>T1</td>
	                      <td><img src="assets/img/product-1.jpg" width="80" height="80"></td>
	                      <td>제목입니다1</td>
	                      <td>user01</td>
	                      <td>2023-10-15</td>
	                      <td>50</td>
	                      <td></td>
	                      <td>
	                        <button class="btn btn-secondary btn-sm" onclick="deleteBoard();">삭제</button>
	                      </td>
	                    </tr>
	                  </tbody>
	                </table>
	                
	                <script>
	                  function deleteBoard(){
	                    if(confirm("해당 게시글을 삭제하시겠습니까?")){
	                      location.href="";
	                    }
	                  }
	                </script>
	                
	
	              </div>
	            </div>
	          </div>
	
	        </div>
	      </div>
	    </section>
	
	  </main>
</body>
</html>