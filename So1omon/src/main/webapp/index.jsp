<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${alertMsg}");
		</script>
	</c:if>
	
	<form action="login.me" method="post">
		id : <input type="text" name="userId"><br>
		pw : <input type="password" name="userPwd"><br>
		<button>로그인</button>
	</form>
	
	<jsp:forward page="WEB-INF/views/common/mainPage.jsp"/>
	
</body>
</html>