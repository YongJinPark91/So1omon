<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  
  <!-- jQuery 라이브러리 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<c:if test="${ not empty alertMsg }">
	<script>
		alert("${alertMsg}");
	</script>
	<c:remove var="alertMsg" scope="session"/>
</c:if>


<!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assetsAd/img/So1omon (3).gif" alt="">
        <span class="d-none d-lg-block">관리자페이지</span>
      </a>
      
    </div><!-- End Logo -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="main.admin">
          <!-- <i class="bi bi-grid"></i> -->
          <span>홈</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="memberList.html">
          <i class="bi bi-people"></i>
          <span>사용자 관리</span>
        </a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="order-list copy.html">
          <i class="bi bi-cart"></i>
          <span>주문 관리</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="question.html">
          <i class="bi bi-layout-text-window-reverse"></i>
          <span>문의 관리</span>
        </a>
      </li>

      <li class="nav-item">
        <a id="product-list" class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-grid"></i><span>상품 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="productEnrollForm.admin">
              <i class="bi bi-circle"></i><span>상품 등록</span>
            </a>
          </li>
          <li>
            <a href="productListView.admin">
              <i class="bi bi-circle"></i><span>상품 조회</span>
            </a>
          </li>
          <li>
            <a href="groupbuy-list.html">
              <i class="bi bi-circle"></i><span>공동구매 상품</span>
            </a>
          </li>
        </ul>
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>게시글 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="board-list.html">
              <i class="bi bi-circle"></i><span>자유게시판</span>
            </a>
          </li>
          <li>
            <a href="tboard-list.html">
              <i class="bi bi-circle"></i><span>거래게시판</span>
            </a>
          </li>
        </ul>
      </li><!-- End Tables Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>웹사이트 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="advertisement.html">
              <i class="bi bi-circle"></i><span>배너</span>
            </a>
          </li>
          <li>
            <a href="charts-apexcharts.html">
              <i class="bi bi-circle"></i><span>팝업창</span>
            </a>
          </li>
        </ul>
      </li><!-- End Charts Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="report-list.html">
          <i class="bi bi-three-dots"></i>
          <span>신고 관리</span>
        </a>
      </li>
    </ul>
      
  </aside><!-- End Sidebar-->
  
  
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  
  
  <script>
	  <!-- 메뉴바 스타일 함수 -->
      $(function(){
    	  
    	if(location.href.search("product") != -1){ // 상품
    		
	        $("#product-list").removeClass("collapsed");
	        $("#forms-nav").removeClass("collapse");
        	$("a[href='main.admin']").addClass("collapsed");    		
        	
	        if(location.href.search("productListView.admin") != -1){ // 상품 조회
		        $("a[href='productListView.admin']").addClass("active");
	        }else if(location.href.search("productRegisterForm.admin") != -1){ // 상품 등록
	        	$("a[href='productRegisterForm.admin']").addClass("active");    			        		        	
	        }
	        
    	}
    	
    	
      })
    </script>

</body>
</html>