<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
.innerOuter {
	width: 1080px;
	margin: auto;
}

#boardList {
	text-align: center;
}

#boardList>tbody>tr:hover {
	cursor: pointer;
}

#pagingArea {
	width: fit-content;
	margin: auto;
}

#searchForm {
	width: 80%;
	margin: auto;
	display: flex;
}

/* 검색 폼 반응형 스타일 */
@media ( max-width : 768px) {
	#searchForm {
		width: 100%;
		flex-direction: column;
		align-items: center;
	}
	.select {
		width: 1 00%;
	}
	.text {
		width: 100%;
	}
	.searchBtn {
		width: 100%;
	}
}

.table td {
	padding-top: 2rem;
	padding-bottom: 2rem;
}

.btn {
	min-width: 110px;
}

#searchForm {
	width: 50%;
}

.titlecut {
	width: 270px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 1;
	-webkit-box-orient: vertical;
}
</style>
</head>
<body>
	<!-- 이쪽에 헤더바 포함할꺼임 -->
	<jsp:include page="../common/header.jsp" />

	<div class="content">
		<br>
		<br>


		<div class="page-header text-center"
			style="background-image: url('assets/images/page-header-bg.jpg')">
			<div class="container">
				<h1 class="page-title">
					공지사항<span>Community</span>
				</h1>
			</div>
			<!-- End .container -->
		</div>
		<!-- End .page-header -->

		<div class="innerOuter">


			<select id="mySelect" style="float: right;">
				<option value=5>5 개</option>
				<option value=10>10 개</option>
				<option value=20>20 개</option>
			</select>

			<script>
				$("#mySelect").change(function() {
				    var selectedValue = $(this).val();
				    $("input[name='pageNo']").val(selectedValue);
				    
				    
				    
				});
			</script>




			<br>
			<table id="boardList" class="table table-hover" align="center"
				style="width: 1000px">
				<thead>
					<tr>
						<th>글번호</th>
						<th style="width: 250px">제목</th>
						<th>작성자</th>
						<th>조회수</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody id="dataSection">

					<c:forEach var="b" items="${ list }">
						<tr>
							<td class="bno">${ b.boardNo }</td>
							<td style="text-align: left;"><p class="titlecut">${ b.boardTitle }</p></td>
							<td>${ b.boardWriter }</td>
							<td>${ b.count }</td>
							<td>${ b.createDate }</td>
						</tr>
					</c:forEach>



				</tbody>
			</table>


			<script>
            	$(function(){
					$("#boardList>tbody>tr").click(function(){
						location.href = 'noticeDetailView.bo?bno=' + $(this).children(".bno").text();
					})
				})
            </script>




			<c:if
				test="${ not empty loginMember && loginMember.userId eq 'admin' }">
				<!-- 로그인후 상태일 경우만 보여지는 글쓰기 버튼-->
				<a class="btn btn-outline-primary-2 " style="float: right;"
					href="enrollForm.no">글쓰기</a>
			</c:if>


			<div id="pagingArea">
				<ul class="pagination">


				</ul>
			</div>


			<br clear="both">
			<br>

			<form id="searchForm" action="#" method="get">
				<input type="hidden" name="cpage" id="cpage" value="1">
				<!--             	<input type="hidden" name="pageNo" value="5" > -->
				<div class="select">
					<select class="custom-select" name="condition" id="condition"
						style="width: 65px; height: 40px;">
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
				</div>

				<div class="text">
					<input type="text" class="form-control" id="keyword" name="keyword"
						value="${ keyword }" style="width: 350px;">
				</div>
				<div class="searchBtn">
					<button type="button" class="btn btn-outline-primary-2"
						id="btnSearch">검색</button>
					<!-- onClick="searchByText()" -->
				</div>
			</form>

			<c:if test="${ not empty condition }">
				<script>
	            	$(function(){
	            		$(".select option[value=${ condition }]").attr("selected",true);
    	        	})
            	</script>
			</c:if>




			<br>
			<br>
		</div>
		<br>
		<br>
	</div>

	<input type="hidden" id="keyword" value="" />
	<input type="hidden" id="condition" value="testTitle" />
	<script>

    
		$(document).ready(function() {
			getData();

		})
	
        $("#mySelect").change(function() {
            console.log("선택된 값: " + mySelect);
	        getData();
        });
        
    	$("#btnSearch").click(function() {
    		const keyword = $("#keyword").val();
    		const condition = $("#condition").val();

    		$("#keyword").val(keyword);
    		$("#condition").val(condition);
    		getData();
    	});
    	
    	
    	function changePage(newPage) {
    	    $("#cpage").val(newPage);
    	    getData();
    	}
    	
    	
    	
        
    	function getData() {
    	    var mySelect = $("#mySelect").val();
    	    var keyword = $("#keyword").val();
    	    var condition = $("#condition").val();
    	    var cpage = $("#cpage").val();

    	    $.ajax({
    	        url: "search2.no",
    	        data: {
    	            condition: condition,
    	            keyword: keyword,
    	            pageNo: mySelect,
    	            cpage: cpage
    	        },
    	        success: function (data) {
    	            console.log("ajax 통신 성공2");
    	            var list = data.list; // 'list' 데이터에 액세스
    	            var pi = data.pi; // 'pi' 데이터에 액세스
    	            var tableHtml = ""; // 테이블 HTML을 저장할 빈 문자열을 초기화합니다.
    	            var paginationHtml = "";
    	            
    	            console.log(pi);
    	            
    	            for (var i = 0; i < list.length; i++) {
    	                var unixTimestamp = list[i].createDate;
    	                var date = new Date(unixTimestamp);
    	                var formattedDate = date.getFullYear() + "-" + (date.getMonth() + 1).toString().padStart(2, '0') + "-" + date.getDate().toString().padStart(2, '0');

    	                tableHtml += "<tr>";
	    	                tableHtml += "<td class='bno'>" + list[i]['boardNo'] + "</td>";
	    	                tableHtml += "<td>" + list[i]['boardTitle'] + "</td>";
	    	                tableHtml += "<td>" + list[i]['boardWriter'] + "</td>";
	    	                tableHtml += "<td>" + list[i]['count'] + "</td>";
	    	                tableHtml += "<td>" + formattedDate + "</td>";
    	                tableHtml += "</tr>";
    	            }
    	            
    	            console.log("pi.currentPage::"+pi.currentPage);
    	            
    	            var paginationHtml = "<ul class='pagination'>";

    	            if (pi.currentPage == 1) {
    	                paginationHtml += "<li class='page-item disabled'><a class='page-link' href='javascript:void(0)'>이전</a></li>";
    	            } else {
    	                paginationHtml += "<li class='page-item'><a class='page-link' href='javascript:void(0)' onclick='changePage(" + (pi.currentPage - 1) + ")'>이전</a></li>";
    	            }

    	            for (var i = pi.startPage; i <= pi.endPage; i++) {
    	                paginationHtml += "<li class='page-item'><a class='page-link' href='javascript:void(0)' onclick='changePage(" + i + ")'>" + i + "</a></li>";
    	            }

    	            if (pi.currentPage == pi.maxPage || pi.listCount == 0) {
    	                paginationHtml += "<li class='page-item disabled'><a class='page-link' href='javascript:void(0)'>다음</a></li>";
    	            } else {
    	                paginationHtml += "<li class='page-item'><a class='page-link' href='javascript:void(0)' onclick='changePage(" + (pi.currentPage + 1) + ")'>다음</a></li>";
    	            }

    	            paginationHtml += "</ul>";


    	            
    	            
    	            $("#pagingArea").html(paginationHtml);
    	        
    	            // 생성한 테이블 HTML을 테이블의 'tbody' 요소에 추가합니다.
    	            $("#boardList tbody").html(tableHtml);

    	            
			    	$(function(){
						$("#boardList>tbody>tr").click(function(){
							location.href = 'noticeDetailView.bo?bno=' + $(this).children(".bno").text();
						})
					})
			

    	            console.log(list);
    	            console.log(pi);
    	        },
    	        error: function () {
    	            console.log("ajax 통신 실패");
    	        }
    	    });

    	}
    	



    </script>








	<!-- 이쪽에 푸터바 포함할꺼임 -->
	<jsp:include page="../common/footer.jsp" />

</body>
</html>