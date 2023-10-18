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
	<jsp:include page="header.jsp"/>
    <div class="page-wrapper">
        <main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Login</li>
                        <li class="breadcrumb-item active" aria-current="page">FindID/PWD</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="login-page bg-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            	<div class="container">
            		<div class="form-box">
            			<div class="form-tab">
	            			<ul class="nav nav-pills nav-fill" role="tablist">
							    <li class="nav-item">
							        <a class="nav-link active" id="signin-tab-1" data-toggle="tab" href="#signin-1" role="tab" aria-controls="signin-1" aria-selected="false">Find ID</a>
							    </li>
							    <li class="nav-item">
							        <a class="nav-link" id="signin-tab-2" data-toggle="tab" href="#signin-2" role="tab" aria-controls="signin-2" aria-selected="false">Find PWD</a>
							    </li>
							</ul>
							<div class="tab-content">
							    <div class="tab-pane fade show active" id="signin-1" role="tabpanel" aria-labelledby="signin-tab-1">

                                        <div class="col-md-12">
                                            <div class="accordion" id="accordion-2">
                                                
                                                <div class="card">
                                                    <div class="card-header" id="heading-1">
                                                        <h2 class="card-title">
                                                            <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
                                                                휴대폰번호로 찾기
                                                            </a>
                                                        </h2>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-1" class="collapse show" aria-labelledby="heading-1" data-parent="#accordion-2">
                                                        <form action="findIdUsePhone.yj" method="post">
                                                            <div class="card-body" id="findphone">
                                                                <input type="text" id="userName" name="userName" class="form-control" placeholder="이름입력(2자 이상)" maxlength="10" minlength="2">
                                                                <input type="text" id="phone" name="phone" class="form-control" placeholder="' - '포함 13자(ex.010-1234-5678)" maxlength="13" minlength="13">
                                                                <button type="submit" class="btn btn-outline-primary-2" style="float: right; margin-bottom: 20px;">찾 기</button>
                                                            </div><!-- End .card-body -->
                                                        </form>
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->
                                                
                                                <div class="card">
                                                    <div class="card-header" id="heading-2">
                                                        <h2 class="card-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2">
                                                                이메일로 찾기
                                                            </a>
                                                        </h2>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-2" class="collapse" aria-labelledby="heading-2" data-parent="#accordion-2">
                                                        <form action="findIdUseEmail.yj">
                                                            <div class="card-body" id="findemail">
                                                                <input type="text" id="userName" name="userName" class="form-control" placeholder="이름입력(2자 이상)" max="10" min="2">
                                                                <input type="email" id="email" name="email" class="form-control" placeholder="email(ex.so1omon@so1o.com)" min="10">
                                                                <button type="submit" class="btn btn-outline-primary-2" style="float: right; margin-bottom: 20px;">찾 기</button>
                                                            </div><!-- End .card-body -->
                                                            </form>
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->
                
                                                <div class="card">
                                                    <div class="card-header" id="heading-3">
                                                        <h2 class="card-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-3" aria-expanded="false" aria-controls="collapse-3">
                                                                휴대폰 인증으로 찾기
                                                            </a>
                                                        </h2>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-3" class="collapse" aria-labelledby="heading-3" data-parent="#accordion-2">
                                                        <div class="card-body">
                                                            안전한 통신사 본인인증(PASS)에서 인증합니다. <br>
                                                            (PASS간편인증 또는 문자인증으로 본인인증 가능)
                                                            <button type="submit" class="btn btn-outline-primary-2" style="float: right; margin-bottom: 20px; margin-top: 20px;">찾 기</button>
                                                        </div><!-- End .card-body -->
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->

                                                <div class="card">
                                                    <div class="card-header" id="heading-4">
                                                        <h2 class="card-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-4" aria-expanded="false" aria-controls="collapse-4">
                                                                아이핀 인증으로 찾기
                                                            </a>
                                                        </h2>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-4" class="collapse" aria-labelledby="heading-4" data-parent="#accordion-2">
                                                        <div class="card-body">
                                                            아이핀 인증이 완료된 후에, 해당 명의(이름)로 <br>
                                                            가입된 아이디를 찾습니다.
                                                            <button type="submit" class="btn btn-outline-primary-2" style="float: right; margin-bottom: 20px; margin-top: 20px;">찾 기</button>
                                                        </div><!-- End .card-body -->
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->
                                                
                                            </div><!-- End .accordion -->
                                        </div><!-- End .col-md-6 -->

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


							    </div><!-- .End .tab-pane -->
							    <div class="tab-pane fade" id="signin-2" role="tabpanel" aria-labelledby="signin-tab-2">
							    	<form action="#">

                                        <div class="col-md-12">
                                            <div class="accordion" id="accordion-1">
                                                
                                                <div class="card">
                                                    <div class="card-header" id="heading-1">
                                                        <h2 class="card-title">
                                                            <a role="button" data-toggle="collapse" href="#collapse-5" aria-expanded="true" aria-controls="collapse-5">
                                                                휴대폰번호로 찾기
                                                            </a>
                                                        </h2>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-5" class="collapse show" aria-labelledby="heading-5" data-parent="#accordion-1">
                                                        <form action="#">
                                                            <div class="card-body">
                                                                <input type="text" class="form-control" placeholder="아이디입력(3자 이상)" maxlength="10" minlength="3">
                                                                <input type="text" class="form-control" placeholder="이름입력(2자 이상)" maxlength="10" minlength="2">
                                                                <input type="text" class="form-control" placeholder="' - '포함 13자(ex.010-1234-5678)" maxlength="13" minlength="13">
                                                                <button type="submit" class="btn btn-outline-primary-2" style="float: right; margin-bottom: 20px;">찾 기</button>
                                                            </div><!-- End .card-body -->
                                                        </form>
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->
                                                
                                                <div class="card">
                                                    <div class="card-header" id="heading-6">
                                                        <h2 class="card-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-6" aria-expanded="false" aria-controls="collapse-6">
                                                                이메일로 찾기
                                                            </a>
                                                        </h2>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-6" class="collapse" aria-labelledby="heading-6" data-parent="#accordion-1">
                                                        <div class="card-body">
                                                            <form action="#">
                                                                <input type="text" class="form-control" placeholder="아이디입력(3자 이상)" maxlength="10" minlength="3">
                                                                <input type="text" class="form-control" placeholder="이름입력(2자 이상)" max="10" min="2">
                                                                <input type="email" class="form-control" placeholder="email(ex.so1omon@so1o.com)" min="10">
                                                                <button type="submit" class="btn btn-outline-primary-2" style="float: right; margin-bottom: 20px;">찾 기</button>
                                                            </form>
                                                        </div><!-- End .card-body -->
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->
                
                                                <div class="card">
                                                    <div class="card-header" id="heading-7">
                                                        <h2 class="card-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-7" aria-expanded="false" aria-controls="collapse-7">
                                                                휴대폰 인증으로 찾기
                                                            </a>
                                                        </h2>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-7" class="collapse" aria-labelledby="heading-7" data-parent="#accordion-1">
                                                        <div class="card-body">
                                                            안전한 통신사 본인인증(PASS)에서 인증합니다. <br>
                                                            (PASS간편인증 또는 문자인증으로 본인인증 가능)
                                                            <button type="submit" class="btn btn-outline-primary-2" style="float: right; margin-bottom: 20px; margin-top: 20px;">찾 기</button>
                                                        </div><!-- End .card-body -->
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->

                                                <div class="card">
                                                    <div class="card-header" id="heading-8">
                                                        <h2 class="card-title">
                                                            <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-8" aria-expanded="false" aria-controls="collapse-8">
                                                                아이핀 인증으로 찾기
                                                            </a>
                                                        </h2>
                                                    </div><!-- End .card-header -->
                                                    <div id="collapse-8" class="collapse" aria-labelledby="heading-8" data-parent="#accordion-1">
                                                        <div class="card-body">
                                                            아이핀 인증이 완료된 후에, 해당 명의(이름)로 <br>
                                                            가입된 아이디를 찾습니다.
                                                            <button type="submit" class="btn btn-outline-primary-2" style="float: right; margin-bottom: 20px; margin-top: 20px;">찾 기</button>
                                                        </div><!-- End .card-body -->
                                                    </div><!-- End .collapse -->
                                                </div><!-- End .card -->
                                            </div><!-- End .accordion -->
                                        </div><!-- End .col-md-6 -->
							    	</form>
							    </div><!-- .End .tab-pane -->
							</div><!-- End .tab-content -->
						</div><!-- End .form-tab -->
            		</div><!-- End .form-box -->
            	</div><!-- End .container -->
            </div><!-- End .login-page section-bg -->
        </main><!-- End .main -->
	</div>

	<jsp:include page="footer.jsp"/>
</body>
</html>