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
                                        <input type="text" class="form-control" id="userId" name="userId" placeholder="Please Enter ID(6~12자)" minlength="6" maxlength="12" required>
                                        <strong><div id="checkResult" style="font-size:0.8em"></div></strong>
                                        
                                        <br>
                                        <label for="userPwd">* Password :</label>
                                        <input type="password" class="form-control" id="newPwd" name="userPwd" placeholder="Please Enter Password(8~20자/특-대문자 1개이상)" minlength="8" maxlength="20" required>
                                        <label id="validPwdText" style="font-size:0.8em"><strong id="validPwdText-2"></strong></label><br>
                                        
                                        <label for="checkPwd">* Password Check :</label>
                                        <input type="password" class="form-control" id="pwdCheck" placeholder="Please Enter Password" required>
                                        <label id="pwdCheckText" style="font-size:0.8em"><strong id="pwdCheckText-2"></strong></label><br>
                                        
                                        <label for="userName">* Name :</label>
                                        <input type="text" class="form-control" id="userName" name="userName" placeholder="Please Enter Name(2자 이상)" minlength="2" required><br>
                                        
                                        <label for="userName">* NickName :</label>
                                        <input type="text" class="form-control" id="nickName" name="nickName" placeholder="Please Enter NickName(2~10글자)" minlength="2" maxlength="10" required><br>
                                        
                                        <label for="email">* Email :</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Please Enter Email"><br>
                                        
                                        <label for="phone">* Phone :</label>
                                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Please Enter Phone(-포함)" minlength="13" maxlength="13"><br>
                                        
                                        <label for="address">* Address :</label>
                                        <input type="text" class="form-control" id="address" name="address" placeholder="Please Enter Address">
                                        
                                    </div>
                                    <br>
                                    <div class="btns" align="center">
                                        <button onclick="history.back()" class="btn btn-outline-info" > 뒤로가기</button>
                                        <button id="enrollBtn" type="submit" class="btn btn-outline-success" disabled>회원가입</button>
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

    <script>
    	$(function() {
			// 아이디를 입력하는 input 요소 객체를 변수에 담기
			const $idInput = $("#enrollForm input[name=userId]");
			// jQuery로 요소를 선택해서 객체를 만들때는 객체명에 $를 붙여준다.
			
			// 아이디의 input 요소에 입력이 될 때마다 체크하게 됨
			$idInput.keyup(function() {
				// console.log($idInput.val());
				
				// 우선 최소 5글자 이상으로 입력이 되어 있을 때만 ajax 요청해서 중복체크 하도록
				if($idInput.val().length >= 5){
					$.ajax({
						url:"idCheck.me",
						data:{
							checkId:$idInput.val()
							},
						success:function(result){
							console.log("ajax 통신 성공 ㅋㅋ")
							if(result == "NNNNN"){ // 사용불가능
								// => 빨간색으로 사용이 불가능하다 출력
								$("#checkResult").show();
								$("#checkResult").css("color", "red").text("중복된 아이디가 존재합니다. 다시 입력해주세요.");
								
								// => disabled 활성화
								$("#enrollForm :submit").attr("disabled", true);
								
							}else{ // 사용가능
								// => 녹색으로 사용이 가능하다 출력
								$("#checkResult").show();
								$("#checkResult").css("color","green").text("사용가능한 아이디 입니다.");
								
								// => disabled 비활성화
								$("#enrollForm :submit").removeAttr("disabled");
								// removeAttr하면 속성을 제거해 준다.
								
							}
						},
						error:function(){
							console.log("ajax 통신 실패 ㅠㅜ")
						}
					})	
				}else{ // 5글자 미만일 경우 => 버튼 비활성화, 메시지를 숨기기 작업
					$("#checkResult").hide();
					$("#enrollForm :submit").attr("disabled", true)
				}
				
			})
		})	
    </script>
    
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