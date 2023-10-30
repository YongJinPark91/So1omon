<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <!-- TUI 에디터 CSS CDN -->
    <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />


    <style>
        .content{
            width: 1000px;
            margin: auto;
        }
        #updateForm>table {
            width: 100%;
        }
        
        #updateForm>table * {
            margin: 5px;
        }


        #buttonB:hover{
            color: white;
            background-color: lightcoral;
            border: 1px solid  lightcoral;
        }
        .btn {
            min-width: 110px;
        }
    </style>
</head>
<body>
    <!-- 이쪽에 메뉴바 포함 할꺼임 -->
    <jsp:include page="../common/header.jsp"/>

    <br><br>
    <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        <div class="container">
            <h1 class="page-title">공지사항 수정하기<span>Community</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <br>

            <form id="updateForm" method="post" action="noticeUpdate.bo" enctype="multipart/form-data">
            <input type="hidden" name="boardNo" value="${ n.boardNo }">
                <table align="center">
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="title" class="form-control" name="boardTitle" value="${ n.boardTitle }" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer">작성자</label></th>
                        <td><input type="text" id="writer" class="form-control" name="" value="admin"  readonly></td>
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
                    <button type="submit" class="btn btn-outline-primary-2" id="buttonA">수정하기</button>
                    <button type="button" class="btn btn-outline-danger"  id="buttonB" onclick="AnotherPage()">이전으로</button>
                </div>
            </form>
        </div>
        <br><br>
    </div>
	    <script>
			function AnotherPage() {
			    window.location.href = 'list.bo';
			}
		</script>
		        
    

    <!-- TUI 에디터 JS CDN -->
    <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
    <script>
	   const editor = new toastui.Editor({
	       el: document.querySelector('#content'),
	       height: '500px',
	       initialEditType: 'wysiwyg',
	       initialValue: '${n.boardContent}',  // 내용의 초기 값으로, 반드시 마크다운 문자열 형태여야 함
	       previewStyle: 'vertical',
	       breaks: true,
	       hooks: {
		    	addImageBlobHook: (blob, callback) => {
		    		// blob : Java Script 파일 객체
		    		console.log(blob);
		    		
		    		const formData = new FormData();
		        	formData.append('image', blob);
		        	
		        	let url = 'resources/uploadFiles/';
		   			$.ajax({
		           		type: 'POST',
		           		enctype: 'multipart/form-data',
		           		url: 'noticeImageUpdate.do', 
		           		data: formData,
		           		dataType: 'json',
		           		processData: false,
		           		contentType: false,
		           		cache: false,
		           		timeout: 600000,
		           		success: function(data) {
		           			//console.log('ajax 이미지 업로드 성공');
		           			url += data.filename;
		           			console.log('url나와라'+url);
		           			
		           			// callback : 에디터(마크다운 편집기)에 표시할 텍스트, 뷰어에는 imageUrl 주소에 저장된 사진으로 나옴
		      		        callback(url, '사진 대체 텍스트 입력');
 							// 형식 : ![대체 텍스트](주소)
		           		},
		           		error: function(e) {
		           			console.log('ajax 이미지 업로드 실패');
		           			//console.log(e.abort([statusText]));
		           			
		           			//callback('image_load_fail', '사진 대체 텍스트 입력');
		           		}
		           	});
		    	}
		    }
	   });
	   
	   
	
	   $('#updateForm').submit(function() {
		   var markdown = editor.getHTML(); 
	       $("input[name='boardContent']").val(markdown);
	   });


  
    </script>

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>