<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>


<style>

    .content{
        width: 1080px;
        margin: auto;
    }

    #updateForm>table {
        width: 100%;
    }
    
    #updateForm>table * {
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
                <h1 class="page-title">QNA 수정하기<span>고객 센터</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
    
    
        <div class="content">
            <br><br>
            <div class="innerOuter">
                <h3>게시글 수정하기</h3>
                <br>
    
                <form id="updateForm" method="post" action="" enctype="">
                    <table align="center">
                        <tr>
                            <th><label for="title">제목</label></th>
                            <td><input type="text" id="title" class="form-control" name="" value="기존글의 제목" required></td>
                        </tr>
                        <tr>
                            <th><label for="writer">작성자</label></th>
                            <td><input type="text" id="writer" class="form-control" name="" value="admin"  readonly></td>
                        </tr>
                        <tr>
                            <th><label for="upfile">첨부파일</label></th>
                            <td>
                                <input type="file" id="upfile" class="form-control-file border" name="">
                                        현재 업로드된 파일 : 
                                    <a href="" download="">사진.png</a>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2"><label for="content">내용</label></th>
                        </tr>
                        <tr>
                            <th colspan="2"><textarea class="form-control" required name="" id="content" rows="10" style="resize:none;">기존글의내용</textarea></th>
                        </tr>
                    </table>
                    <br>
    
                    <div align="center">
                        <button type="submit" id="buttonA" class="btn btn-outline-primary-2">수정하기</button>
                        <button type="button" id="buttonB" class="btn btn-outline-danger">이전으로</button>
                    </div>
                </form>
            </div>
            <br><br>
        </div>
    
        <!-- 이쪽에 푸터바 포함할꺼임 -->
        <jsp:include page="../common/footer.jsp"/>
        

</body>
</html>