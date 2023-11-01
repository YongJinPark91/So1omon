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
            <h1 class="page-title">중고게시판 수정하기<span>Community</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->


    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h3>게시글 수정하기</h3>
            <br>

            <form id="updateForm" method="post" action="tboardUpdate.bo" enctype="multipart/form-data">
            	<input type="hidden" name="tboardNo" value="${ t.tboardNo }">
                <table align="center">
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="tboardTitle" class="form-control" name="tboardTitle" value="${ t.tboardTitle }" style="width: 950px;" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer">작성자</label></th>
                        <td><input type="text" id="userId" class="form-control" name="userId" value="${ t.userId }" style="width: 950px;"  readonly></td>
                    </tr>
                    <tr>
                        <th><label for="price">가격</label></th>
                        <td><input type="text" id="price" class="form-control" name="price" value="${ t.price }" style="width: 950px;" required></td>
                    </tr>
                    <tr>
                        <th><label for="upfile">썸네일</label></th>
                        <td>
                            <input type="file" id="thumbnail" class="form-control-file border" name="thumbnailFile" value="${ t.thumbnail }"  style="width: 950px;">
                            
                            <c:if test="${ not empty t.thumbnail }">
	                           	 현재 업로드된 파일 : 
                                <a href="${ t.thumbnail }" download="썸네일사진">썸네일사진</a>
                                <input type="hidden" name="thumbnail" value="${ t.thumbnail }">
                            </c:if>
                        </td>
                    </tr>
                    
					<tr>
					    <th><label for="upfile2">상세이미지</label></th>
					    <td>
					        <input type="file" id="detailFiles" class="form-control-file border" name="detailFiles" multiple style="width: 950px;" >
					        현재 업로드된 파일 : <br>	
					        <c:forEach var="at" items="${atList}">
					            <a href="${at.filePath}" download="${at.originName}">${at.originName}</a><br>
					        	 <input type="hidden" name="originName" value="${ at.originName }">
		                         <input type="hidden" name="changeName" value="${ at.changeName }">
		                         <input type="hidden" name="filePath" value="${ at.filePath }">
					        	
					        </c:forEach>
					    </td>
					</tr>


                    
    
                    
                    
					<tr>
                        <th><label for="mySelect">카테고리</label></th>
                        <td>
                            <select id="mySelect" name="tag">
						    <option value="기타">기 타</option>
						    <option value="electronic">전자기기</option>
						    <option value="book">도 서</option>
						    <option value="clothes">의 류</option>
						    <option value="dailyNecessity">생필품</option>
						    <option value="stationery">문구류</option>
                             </select>
                        </td>
                     </tr>
                    
                    
                    <tr>
                        <th colspan="2"><label for="content">내용</label></th>
                    </tr>
                    <tr>
                        <th colspan="2"><textarea class="form-control" required name="tboardContent" id="tboardContent" rows="10" style="resize:none; ">${ t.tboardContent }</textarea></th>
                    </tr>
                </table>
                <br>

                <div align="center">
                    <button type="submit" id="buttonA" class="btn btn-outline-primary-2">수정하기</button>
                    <button type="button" id="buttonB" class="btn btn-outline-danger" onclick="AnotherPage()">이전으로</button>
                </div>
            </form>
        </div>
        <br><br>
    </div>

        <script>
			function AnotherPage() {

			    window.location.href = 'tboardList.bo';
			}
		</script>
    

    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
    
</body>
</html>