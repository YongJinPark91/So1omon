<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">SignUp</li>
                        <li class="breadcrumb-item active" aria-current="page">Success</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

        	<div class="error-content text-center" style="background-image: url(assets/images/backgrounds/error-bg.jpg)">
            	<div class="container">
            		<h2 class="error-title">회원 가입을 축하드립니다.</h2><!-- End .error-title -->
            		<p>Congratulations on being a family member of So1omon.</p>
            		<a href="index.jsp" class="btn btn-outline-primary-2 btn-minwidth-lg">
            			<span>BACK TO HOMEPAGE</span>
            			<i class="icon-long-arrow-right"></i>
            		</a>
            	</div><!-- End .container -->
        	</div><!-- End .error-content text-center -->
        </main><!-- End .main -->
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>