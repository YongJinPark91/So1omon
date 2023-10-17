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
    <div class="page-wrapper">
        <main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Login</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="login-page bg-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            	<div class="container">
            		<div class="form-box">
                        <div class="content">
                            <br><br>
                            <div class="innerOuter">
                                <h2>회원가입</h2>
                                <br>
                    
                                <form action="insert.me" method="post" id="enrollForm">
                                    <div class="form-group">
                                        <label for="userId">* ID :</label>
                                        <input type="text" class="form-control" id="userId" name="userId" placeholder="Please Enter ID" required>
                                        <div id="checkResult" style="font-size:0.8em"></div>
                                        
                                        <br>
                                        <label for="userPwd">* Password :</label>
                                        <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="Please Enter Password" required><br>
                                        
                                        <label for="checkPwd">* Password Check :</label>
                                        <input type="password" class="form-control" id="checkPwd" placeholder="Please Enter Password" required><br>
                                        
                                        <label for="userName">* Name :</label>
                                        <input type="text" class="form-control" id="userName" name="userName" placeholder="Please Enter Name" required><br>
                                        
                                        <label for="userName">* NickName :</label>
                                        <input type="text" class="form-control" id="nickName" name="nickName" placeholder="Please Enter NickName" required><br>
                                        
                                        <label for="email">* Email :</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Please Enter Email"><br>
                                        
                                        <label for="phone">* Phone :</label>
                                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Please Enter Phone (-없이)"><br>
                                        
                                        <label for="address">* Address :</label>
                                        <input type="text" class="form-control" id="address" name="address" placeholder="Please Enter Address">
                                        
                                    </div>
                                    <br>
                                    <div class="btns" align="center">
                                        <button onclick="history.back()" class="btn btn-outline-info" > 뒤로가기</button>
                                        <button id="enrollBtn" type="submit" class="btn btn-outline-success">회원가입</button>
                                        <button type="reset" class="btn btn-outline-warning"> 초기화</button>
                                    </div>
                                </form>
                            </div>
                            <br>
                        </div>
            		</div><!-- End .form-box -->
            	</div><!-- End .container -->
            </div><!-- End .login-page section-bg -->
        </main><!-- End .main -->
    </div><!-- End .page-wrapper -->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>