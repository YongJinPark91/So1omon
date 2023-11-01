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
    
    #map {
	    margin: 0 auto; /* 가로 가운데 정렬을 위해 margin을 사용 */
	    display: block; /* 요소를 블록 수준으로 표시 */
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
        <input type="hidden" name="userNo" value="${ loginMember.userNo }" >
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
                    <td><input type="file" id="upfile" class="form-control-file border" name="detailFiles" multiple required></td>
                </tr>
                
              	<tr>
                  <th><label for="upfile">카테고리</label></th>
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
                    <th colspan="2">
                        <textarea class="form-control" required name="tboardContent" id="content" rows="10" style="resize:none;"></textarea>
                    </th>
                </tr>
            </table>
            <br>
            
            
            <input type="text" id="sample5_address" name="address" placeholder="주소">
			<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
			            

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

	    window.location.href = 'tboardList.bo';
	}
	</script>




<div id="map" style="width:60%;height:350px;" ></div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=77eff446b45ccd67f1bb72f314d1d6fb&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>












<!-- 이쪽에 푸터바 포함할꺼임 -->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>