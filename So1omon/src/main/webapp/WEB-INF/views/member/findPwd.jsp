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
                        <li class="breadcrumb-item"><a href="#">LogIn</a></li>
                        <li class="breadcrumb-item active" aria-current="page">FindPwd</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="login-page bg-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            	<div class="container">
            		<div class="form-box">
            			<div class="form-tab">
	            			<ul class="nav nav-pills nav-fill" role="tablist">
							    <li class="nav-item">
							        <a class="nav-link active" id="signin-tab-1" data-toggle="tab" href="#signin-1" role="tab" aria-controls="signin-2" aria-selected="false">Find ID</a>
							    </li>
							    <li class="nav-item">
							        <a class="nav-link" id="signin-tab-2" data-toggle="tab" href="#signin-2" role="tab" aria-controls="signin-2" aria-selected="false">Find PWD</a>
							    </li>
							</ul>
							<div class="tab-content">
							    <div class="tab-pane fade show active" id="signin-1" role="tabpanel" aria-labelledby="signin-tab-2">
							    	<form action="#">

                                        <div class="col-md-12">
                                            <div class="text-center">
                                                <h5><strong>${findId.userName }</strong>님의 정보와 일치하는  아이디 입니다.</h5>
                                                <strong>${findId.userId }</strong>
                                                <p>${findId.enrollDate } 가입</p>
                                            </div>
                                        </div><!-- End .col-md-12 -->

                                        <hr>

                                        <div class="row">
								    		<div class="col-sm-12 text-center">
								    			<a href="#signin-modal" class="btn btn-primary" data-toggle="modal">
								    				로그인
								    			</a>
								    		</div><!-- End .col-6 -->
								    	</div><!-- End .row -->

							    	</form>

							    </div><!-- .End .tab-pane -->

                                <script>
                                    $(() => {
                                        // Find ID를 클릭할 때
                                        $("#signin-tab-1").on("click", function() {
                                            // Find ID 탭 활성화, Find PWD 탭 비활성화
                                            $("#signin-1").addClass(" show active");
                                            $("#signin-2").removeClass(" show active");
                                        });
                        
                                        // Find PWD를 클릭할 때
                                        $("#signin-tab-2").on("click", function() {
                                            // Find PWD 탭 활성화, Find ID 탭 비활성화
                                            $("#signin-2").addClass(" show active");
                                            $("#signin-1").removeClass(" show active");
                                        });
                                    });
                                    </script>

							    <div class="tab-pane fade" id="signin-2" role="tabpanel" aria-labelledby="signin-tab-2">
                                    <form action="changePwd.yj">
                                        <div style="padding: 20px;">
                                            <h5><strong>비밀번호 변경</strong></h5>
                                            <input type="password" id="newPwd" name="userPwd" class="col-12" placeholder="8~20자, 대문자/특문 각 2개 이상 포함" minlength="8" maxlength="20">
                                            <label id="validPwdText" style="display: none;"><strong id="validPwdText-2"></strong></label>
                                            <br><br>
                                            <h5><strong>비밀번호 확인</strong></h5>
                                            <input type="password" id="pwdCheck" class="col-12" placeholder="" minlength="8" maxlength="20">
                                            <label id="pwdCheckText" style="display: none;"><strong id="pwdCheckText-2"></strong></label>
                                            <input type="hidden" id="userName" name="userName" value="${findId.userName }">
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 text-right" style="padding-right: 30px;">
                                                <button type="submit" class="btn btn-primary" id="resetPwdBtn" disabled>비밀번호 재설정</button>
                                            </div><!-- End .col-6 -->
                                        </div><!-- End .row -->
                                    </form>
							    </div><!-- .End .tab-pane -->
							</div><!-- End .tab-content -->
						</div><!-- End .form-tab -->
            		</div><!-- End .form-box -->
            	</div><!-- End .container -->
            </div><!-- End .login-page section-bg -->
        </main><!-- End .main -->
        
        <jsp:include page="../common/footer.jsp"/>

        <script>

            $(function() {
                function updateButtonState() {
                    var isValidPassword = $("#validPwdText-2").text() === "비밀번호 사용가능";
                    var isPasswordMatching = $("#pwdCheckText-2").text() === "비밀번호 일치";

                    if (isValidPassword && isPasswordMatching) {
                        $("#resetPwdBtn").prop("disabled", false);
                    } else {
                        $("#resetPwdBtn").prop("disabled", true);
                    }
                }

                $("#newPwd").keyup(function() {
                    var password = $("#newPwd").val();

                    var specialCharPattern = /[^a-zA-Z0-9]/g;
                    var uppercasePattern = /[A-Z]/g;

                    if (password.length >= 8 && password.length <= 20 
                        && (password.match(specialCharPattern) || []).length >= 1 
                        && (password.match(uppercasePattern) || []).length >= 1) {
                        $("#validPwdText").show();
                        $("#validPwdText-2").text("비밀번호 사용가능");
                        $("#validPwdText-2").css("color", "green");
                    } else {
                        $("#validPwdText").show();
                        $("#validPwdText-2").css("color", "red");
                        $("#validPwdText-2").text("비밀번호 사용불가");
                    }
                    updateButtonState();
                });

                $("#pwdCheck").keyup(function() {
                    if ($("#newPwd").val() === $("#pwdCheck").val() && $("#pwdCheck").val().length >= 8) {
                        $("#pwdCheckText").css("color", "green");
                        $("#pwdCheckText-2").text("비밀번호 일치");
                        $("#pwdCheckText").show();
                    } else if ($("#pwdCheck").val().length >= 8) {
                        $("#pwdCheckText").css("color", "red");
                        $("#pwdCheckText-2").text("비밀번호 불일치");
                        $("#pwdCheckText").show();
                    } else {
                        $("#pwdCheckText-2").text("");
                    }
                    updateButtonState();
                });
            });


        </script>
</body>
</html>