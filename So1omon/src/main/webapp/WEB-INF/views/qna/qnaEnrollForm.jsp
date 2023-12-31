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
            <h1 class="page-title">QNA 작성하기<span>고객 센터</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->

    <div class="content">
        <br>
        <div class="innerOuter">
            <br>

            <form id="enrollForm" method="post" action="qnaEnroll.bo" enctype="multipart/form-data">
                <table align="center">
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="title" class="form-control" name="qtitle" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer">작성자</label></th>
                        <td><input type="text" id="writer" class="form-control"  value="${ loginMember.userId }" name="qwriter" readonly></td>
                    </tr>
                    <tr>
                        <th><label for="upfile">첨부파일</label></th>
                        <td><input type="file" id="upfile" class="form-control-file border" name="qnaUpfile"></td>
                    </tr>
                    
                    <tr>
                        <th><label for="upfile">카테고리</label></th>
                        <td>
                            <select id="mySelect" name="qcategory">
							    <option value="기타">기 타</option>
							    <option value="상품문의">상품문의</option>
							    <option value="배송문의">배송문의</option>
							    <option value="계정문의">계정문의</option>
							    <option value="반품문의">반품문의</option>
							    <option value="취소문의">취소문의</option>
                             </select>
                        </td>
                     </tr>
                    
                    <tr>
                        <th colspan="2"><label for="content">내용</label></th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <textarea class="form-control" required name="qcontent" id="content" rows="10" style="resize:none;"></textarea>
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
		    window.location.href = 'qnaList.bo';
		}
	</script>

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>