<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    .content{
        width: 1080px;
        margin: auto;
    }
    #enrollForm>table {
        width: 100%;
    }
    
    #enrollForm>table * {
        margin: 5px;
    }
    .btn {
        min-width: 110px;
    }
    #buttonB:hover{
        color: white;
        background-color: lightcoral;
        border: 1px solid  lightcoral;
    }
</style>
</head>
<body>
<!-- 이쪽에 메뉴바 포함 할꺼임 -->
<jsp:include page="../common/header.jsp"/>

<br><br>
<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
    <div class="container">
        <h1 class="page-title">중고게시글 작성하기<span>Community</span></h1>
    </div><!-- End .container -->
</div><!-- End .page-header -->

<div class="content">
    <br>
    <div class="innerOuter">
        <br>

        <form id="enrollForm" method="post" action="tboardEnroll.bo" enctype="multipart/form-data">
            <table align="center">
                <tr>
                    <th><label for="title">제목</label></th>
                    <td><input type="text" id="title" class="form-control" name="tboardTitle" required></td>
                </tr>
                <tr>
                    <th><label for="writer">작성자</label></th>
                    <td><input type="text" id="writer" class="form-control" value="user01" name="tboardWriter" readonly></td>
                </tr>
                <tr>
                   <th><label for="price">가격</label></th>
                   <td><input type="text" id="price" class="form-control" name="price" required></td>
                </tr>
                <tr>
                    <th><label for="upfile">썸네일</label></th>
                    <td><input type="file" id="thumbnail" class="form-control-file border" name="thumbnailFile" required></td>
                </tr>
                <tr>
                    <th><label for="upfile">첨부파일</label></th>
                    <td><input type="file" id="upfile" class="form-control-file border" name="upfile" required></td>
                </tr>
                
              	<tr>
                  <th><label for="upfile">카테고리</label></th>
                   <td>
                       <select id="mySelect" name="tag">
						    <option value="기타">기 타</option>
						    <option value="electronic">전자기기</option>
						    <option value="book">도 서</option>
						    <option value="clothes">의 류</option>
						    <option value="daily necessity">생필품</option>
						    <option value="stationery">문구류</option>
                        </select>
                   </td>
                </tr>
                
                <tr>
                    <th colspan="2"><label for="content">내용</label></th>
                </tr>
                <tr>
                    <th colspan="2">
                        <textarea class="form-control" required name="" id="content" rows="10" style="resize:none;"></textarea>
                    </th>
                </tr>
            </table>
            <br>

            <div align="center">
                <button type="submit" class="btn btn-outline-primary-2">등록하기</button>
                <button type="button" id="buttonB" class="btn btn-outline-danger" onclick="AnotherPage()">취소하기</button>
            </div>
        </form>
    </div>
    <br><br>
</div>

    <script>
	function AnotherPage() {
	    // 여기에 다른 페이지로 이동하도록 하는 코드를 추가
	    // 예를 들어, 아래와 같이 사용할 수 있습니다.
	    window.location.href = 'tboardList.bo';
	}
	</script>



<!-- 이쪽에 푸터바 포함할꺼임 -->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>