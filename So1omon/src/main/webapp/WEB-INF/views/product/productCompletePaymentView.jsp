<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../common/header.jsp"/>
	
	<main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">결제완료</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

        	<div class="error-content text-center" style="background-image: url(assets/images/backgrounds/error-bg.jpg)">
            	<div class="container">
            		<h1 class="error-title">결제가 완료되었습니다.</h1><!-- End .error-title -->
            		<p>감사합니다. 더 좋은 서비스로 이용할 수 있도록 최선을 다하겠습니다.</p>
                    <h6>주문번호 : 2023101010231, 송장번호 : 1231232345345</h6>
                    <br>
            		<a href="index-2.html" class="btn btn-outline-primary-2 btn-minwidth-lg">
            			<span>홈으로 돌아가기</span>
            			<i class="icon-long-arrow-right"></i>
            		</a>
            	</div><!-- End .container -->
        	</div><!-- End .error-content text-center -->
        </main><!-- End .main -->
        
        <jsp:include page="../common/footer.jsp"/>
	
</body>
</html>