<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Please Enter Email" required>
                                        <strong><div id="emailCheck" style="font-size:0.8em"></div></strong><br>
                                        
                                        <label for="phone">* Phone :</label>
                                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Please Enter Phone(-포함)" minlength="13" maxlength="13" required><br>
                                        
                                        <label for="address">* Address :</label><br>
                                        <div class="form-group" style="display: flex; align-items: center;">
										    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="margin-right: 20px">
										    <input type="text" class="form-control col-sm-4" id="sample6_postcode"  placeholder="우편번호" style="float: right;" readonly>
										</div>
                                        <input type="text" class="form-control" name="address" id="sample6_address" placeholder="기본 주소를 입력해 주세요"><br>
                						<input type="text" class="form-control" name="address" id="sample6_detailAddress" placeholder="나머지 주소를 입력해 주세요"><br>
                						<input type="text" class="form-control" name="address" id="sample6_extraAddress" placeholder="참고항목"><br>
                         
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
     
    <script>
    	$(function() {
			// 아이디를 입력하는 input 요소 객체를 변수에 담기
			const $emailInput = $("#enrollForm input[name=email]");
			// jQuery로 요소를 선택해서 객체를 만들때는 객체명에 $를 붙여준다.
			
			// 아이디의 input 요소에 입력이 될 때마다 체크하게 됨
			$emailInput.keyup(function() {
				// console.log($idInput.val());
				
				// 우선 최소 5글자 이상으로 입력이 되어 있을 때만 ajax 요청해서 중복체크 하도록
				if($emailInput.val().length >= 10){
					$.ajax({
						url:"emailCheck.me",
						data:{
							checkEmail:$emailInput.val()
							},
						success:function(result){
							console.log("ajax 통신 성공 ㅋㅋ")
							if(result == "NNNNN"){ // 사용불가능
								// => 빨간색으로 사용이 불가능하다 출력
								$("#emailCheck").show();
								$("#emailCheck").css("color", "red").text("중복된 이메일이 존재합니다. 다시 입력해주세요.");
								
								// => disabled 활성화
								$("#emailCheck :submit").attr("disabled", true);
								
							}else{ // 사용가능
								// => 녹색으로 사용이 가능하다 출력
								$("#emailCheck").show();
								$("#emailCheck").css("color","green").text("사용가능한 이메일 입니다.");
								
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
					$("#emailCheck").hide();
					$("#enrollForm :submit").attr("disabled", true)
				}
				
			})
		})	
    </script>
    
    <script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
    
  

</body>
</html>