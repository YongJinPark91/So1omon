<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="includeScript.jsp"/>
<title>Insert title here</title>
<style>
	#main{
	    margin: 0px;
	    /* width: 600px; */
	    height: 600px;
	  }
    .form-select{
      display: inline-block;
      margin-bottom: 5px;
    }

    .numInput{
      width: 90px;
      display: inline-block;
    }


</style>
</head>
<body>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>공동구매 상품 수정</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">홈</a></li>
          <li class="breadcrumb-item">상품관리</li>
          <li class="breadcrumb-item">공동구매 상품</li>
          <li class="breadcrumb-item active">공동구매 상품 수정</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <form>
            <div class="card">
              <div class="card-body">
                <!-- <h5 class="card-title">General Form Elements</h5> -->
                <br>
                <!-- General Form Elements -->
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">할인율</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control numInput" value="${ g.sale }"> %
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputPassword" class="col-sm-2 col-form-label">최소인원</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control numInput" value="${ g.gbuyMin }"> 명
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">시작날짜</label>
                  <div class="col-sm-5">
                    <input type="date" class="form-control" value="${ sDate }">
                  </div>
                  <div class="col-sm-5">
                    <input type="time" class="form-control" value="${ sTime }">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">종료날짜</label>
                  <div class="col-sm-5">
                    <input type="date" class="form-control" value="${ eDate }">
                  </div>
                  <div class="col-sm-5">
                    <input type="time" class="form-control" value="${ eTime }">
                  </div>
                </div>
              </div>
              <div align="center" style="margin-bottom: 20px;">
                <button class="btn btn-danger" type="button">삭제</button>
                <button class="btn btn-primary" type="button">수정 완료</button>
              </div>
              
            </div>
          </form><!-- End General Form Elements -->

        </div>

        
      </div>
    </section>

  </main>

</body>
</html>