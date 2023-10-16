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

        <form id="enrollForm" method="post" action="" enctype="">
            <table align="center">
                <tr>
                    <th><label for="title">제목</label></th>
                    <td><input type="text" id="title" class="form-control" name="" required></td>
                </tr>
                <tr>
                    <th><label for="writer">작성자</label></th>
                    <td><input type="text" id="writer" class="form-control" value="user01" name="" readonly></td>
                </tr>
                <tr>
                   <th><label for="price">가격</label></th>
                   <td><input type="text" id="price" class="form-control" name="" required></td>
               </tr>
                <tr>
                    <th><label for="upfile">첨부파일</label></th>
                    <td><input type="file" id="upfile" class="form-control-file border" name=""></td>
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
                <button type="reset" id="buttonB" class="btn btn-outline-danger">취소하기</button>
            </div>
        </form>
    </div>
    <br><br>
</div>

<!-- 이쪽에 푸터바 포함할꺼임 -->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>