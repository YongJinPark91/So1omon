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


<!-- TUI 에디터 CSS CDN -->
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

<style>

    .content{
        width: 1000px;
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
            <h1 class="page-title">게시글 작성하기<span>Community</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->

    <div class="content">
        <br>
        <div class="innerOuter">

            <br>

            <form id="enrollForm" method="post" action="boardEnroll.bo" enctype="">
                <input type="hidden" name="boardWriter" value="${ loginMember.userNo }" >
            
                <table align="center">
                
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="title" class="form-control" name="boardTitle" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer">작성자</label></th>
                        <td><input type="text" id="writer" class="form-control" value="${ loginMember.userId }" name="userId" readonly></td>
                    </tr>

                    <tr>
                        <th colspan="2"><label for="content2">내용</label></th>
                    </tr>
                    <tr>
                        <th colspan="2">
                                <!-- 에디터를 적용할 요소 (컨테이너) -->
                               <div id="content"></div>
                               <input type="hidden" name="boardContent" value="">
                               
                        </th>
                    </tr>
                </table>
                <br>

                <div align="center">
                    <button type="submit" class="btn btn-outline-primary-2">등록하기</button>
                    <button type="reset" class="btn btn-outline-danger" id="buttonB">취소하기</button>
                </div>
            </form>
        </div>
        <br><br>
    </div>

       <!-- TUI 에디터 JS CDN -->
       <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	   <script>
		 const editor = new toastui.Editor({
		     el: document.querySelector('#content'), // 에디터를 적용할 요소 (컨테이너)
		     height: '500px',                        // 에디터 영역의 높이 값 (OOOpx || auto)
		     initialEditType: 'wysiwyg',            // 최초로 보여줄 에디터 타입 (markdown || wysiwyg)
		     initialValue: '내용을 입력해 주세요.',     // 내용의 초기 값으로, 반드시 마크다운 문자열 형태여야 함
		     previewStyle: 'vertical',                // 마크다운 프리뷰 스타일 (tab || vertical)
		     
		 });
		
		 $('#enrollForm').submit(function() {
		     var markdown = editor.getMarkdown();
		     $("input[name='boardContent']").val(markdown);
		 });
		
	   </script>

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>