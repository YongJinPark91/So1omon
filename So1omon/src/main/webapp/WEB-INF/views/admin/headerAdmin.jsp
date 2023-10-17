<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicons -->
  <link href="assetsAd/img/favicon.png" rel="icon">
  <link href="assetsAd/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assetsAd/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assetsAd/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assetsAd/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assetsAd/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assetsAd/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assetsAd/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assetsAd/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assetsAd/css/style.css" rel="stylesheet">
  
  <!-- jQuery 라이브러리 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

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
            <a href="product-register.html">
              <i class="bi bi-circle"></i><span>상품 등록</span>
            </a>
          </li>
          <li>
            <a href="productListForm.admin">
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

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
  <script>
	  <!-- 메뉴바 스타일 함수 -->
      $(function(){
    	  
    	if(location.href.search('productListForm.admin') != -1){ // 상품 조회
	        $("a[href='productListForm.admin']").addClass("active");
	        $("#product-list").removeClass("collapsed");
	        $("#forms-nav").removeClass("collapse");
	        $("a[href='main.admin']").addClass("collapsed");    		
    	}
    	
    	
      })
    </script>

</body>
</html>