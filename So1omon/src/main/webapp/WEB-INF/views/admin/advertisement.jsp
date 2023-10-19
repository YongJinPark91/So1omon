<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="headerAdmin.jsp"/>
  <main id="main" class="main">
    
    <div class="pagetitle">
      <h1>배너 관리</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">홈</a></li>
          <li class="breadcrumb-item">웹사이트 관리</li>
          <li class="breadcrumb-item">배너 관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

      <section class="section">
        <div class="row">
          <div class="col-lg-12">

            <div class="col-12">
              <div class="card">
                <div class="card-body" style="padding:20px;">
                  <!-- <img src="assets/img/banner.PNG" height="250" id="bannerImg"> -->
                  <table class="table" id="banner-list">
                    <thead>
                      <tr align="center">
                        <th width="150">분류</th>
                        <th>이미지</th>
                        <th>제목</th>
                        <th>링크</th>
                        <th>관리</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr align="center">
                        <td rowspan="3">메인배너</td>
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm" onclick="bannerEdit();">수정</button>
                        </td>
                      </tr>
                      <tr align="center">
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm">수정</button>
                        </td>
                      </tr>
                      <tr align="center">
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm">수정</button>
                        </td>
                      </tr>
                      <tr align="center">
                        <td rowspan="3">사이드 배너1</td>
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm">수정</button>
                        </td>
                      </tr>
                      <tr align="center">
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm">수정</button>
                        </td>
                      </tr>
                      <tr align="center">
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm">수정</button>
                        </td>
                      </tr>
                      <tr align="center">
                        <td rowspan="3">사이드 배너2</td>
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm">수정</button>
                        </td>
                      </tr>
                      <tr align="center">
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm">수정</button>
                        </td>
                      </tr>
                      <tr align="center">
                        <td><img width="170" height="100"></td>
                        <td>1인가구 국가사업홍보</td>
                        <td>http://www.~~~~</td>
                        <td>
                          <button class="btn btn-outline-primary btn-sm">수정</button>
                        </td>
                      </tr>
                    </tbody>
                  </table>

                  <form action="" id="form">
                    <input type="hidden" value="동적으로 회원번호 받기">
                  </form>

                  <script>
                    function bannerEdit(){
                      window.open("banner-edit.html?", "_blank","width=510,height=400,left=500,top=200,scrollbars=none");
                    }
                  </script>
                  

                </div>
              </div>
            </div>

          </div>
        </div>
      </section>

    </main><!-- End #main -->
<jsp:include page="footerAdmin.jsp"/>
</body>
</html>