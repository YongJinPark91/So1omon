<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>솔로몬 관리자페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="includeScript.jsp"/>

  <!-- 추가 css -->
  <style>
    a:hover{cursor: pointer;}
    .table>tbody>tr:hover{cursor: pointer;}
    /* .table{
      table-layout: fixed;
    }
    */
    .table>tbody>tr>td{
      text-overflow:ellipsis; overflow:hidden; white-space:nowrap;
    }
  </style>
</head>

<body>

 <jsp:include page="headerAdmin.jsp"/>
  <main id="main" class="main">

    <div class="pagetitle" style="margin-top: 20px; margin-bottom: 20px;">
      <h1>홈</h1>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="card-body">
                  <h5 class="card-title">판매량 <span> 오늘</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ a.orderCount }건</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span> -->

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">


                <div class="card-body">
                  <h5 class="card-title">매출액 <span>이번달</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ a.totalPrice }원</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span> -->

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">


                <div class="card-body">
                  <h5 class="card-title">회원수<span></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${ a.memberCount } 명</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title" style="padding-bottom: 0px;">오늘의 할일</h5>
                  <hr>
                  <a style="margin-right: 40px;">답변대기 문의 <span style="color:red;">${a.questionStatus }</span></a>
                  <a style="margin-right: 40px;">신고접수 <span style="color:red;">${ a.report }</span></a>
                  <a style="margin-right: 40px;">재고 미달 상품 <span style="color:red;">${ a.stock }</span></a>
                </div>
              </div>
            </div>

            <!-- Recent Sales -->
            <div class="col-6">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">오늘의 주문<span></span></h5>

                  <table class="table table-hover">
                    <thead>
                      <tr align="center">
                        <th width="150">주문번호</th>
                        <th width="100">주문자</th>
                        <th width="100">주문날짜</th>
                        <th width="100">결제금액</th>
                        <th width="100">처리상태</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:if test="${ empty oList }">
                    	<tr align="center"><td colspan="5">오늘의 주문이 없습니다.</td></tr>
                    </c:if>
                    <c:forEach var="o" items="${ oList }">
                      <tr align="center">
                        <th>${ o.orderNo }</th>
                        <td>${ o.userId }</td>
                        <td>${ o.orderDate }</td>
                        <td>${ o.totalPrice }</td>
                        <td>${ o.status }</td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->

            <div class="col-6">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">오늘의 문의사항<span></span></h5>

                  <table class="table table-hover" style="table-layout:fixed">
                    <thead>
                      <tr align="center">
                        <th>카테고리</th>
                        <th width="200">제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th width="80">답변상태</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:if test="${ empty qList }">
                    	<tr align="center"><td colspan="5">오늘의 문의가 없습니다.</td></tr>
                    </c:if>
                    <c:forEach var="q" items="${ qList }" >
                      <tr align="center">
                        <input type="hidden" value="${ q.qNo }">
                        <th>[${q.qCategory }]</th>
                        <td  title="${ q.qTitle }">${ q.qTitle }</td>
                        <td>${ q.qWriter }</td>
                        <td>${ q.qDate }</td>
                        <td>${ q.qStatus }</td>
                      </tr>
                    </c:forEach>
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->

            <!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">

                <!-- <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div> -->

<!--                 <div class="card-body pb-0"> -->
<!--                   <h5 class="card-title">인기상품 <span></span></h5> -->

<!--                   <table class="table table-borderless"> -->
<!--                     <thead> -->
<!--                       <tr> -->
<!--                         <th scope="col">대표사진</th> -->
<!--                         <th scope="col">상품명</th> -->
<!--                         <th scope="col">가격</th> -->
<!--                         <th scope="col">판매량</th> -->
<!--                         <th scope="col">매출</th> -->
<!--                       </tr> -->
<!--                     </thead> -->
<!--                     <tbody> -->
<!--                       <tr> -->
<!--                         <th scope="row"><a href="#"><img src="assetsAd/img/product-1.jpg" alt=""></a></th> -->
<!--                         <td><a href="#" class="text-primary fw-bold">Ut inventore ipsa voluptas nulla</a></td> -->
<!--                         <td>$64</td> -->
<!--                         <td class="fw-bold">124</td> -->
<!--                         <td>$5,828</td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <th scope="row"><a href="#"><img src="assetsAd/img/product-2.jpg" alt=""></a></th> -->
<!--                         <td><a href="#" class="text-primary fw-bold">Exercitationem similique doloremque</a></td> -->
<!--                         <td>$46</td> -->
<!--                         <td class="fw-bold">98</td> -->
<!--                         <td>$4,508</td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <th scope="row"><a href="#"><img src="assetsAd/img/product-3.jpg" alt=""></a></th> -->
<!--                         <td><a href="#" class="text-primary fw-bold">Doloribus nisi exercitationem</a></td> -->
<!--                         <td>$59</td> -->
<!--                         <td class="fw-bold">74</td> -->
<!--                         <td>$4,366</td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <th scope="row"><a href="#"><img src="assetsAd/img/product-4.jpg" alt=""></a></th> -->
<!--                         <td><a href="#" class="text-primary fw-bold">Officiis quaerat sint rerum error</a></td> -->
<!--                         <td>$32</td> -->
<!--                         <td class="fw-bold">63</td> -->
<!--                         <td>$2,016</td> -->
<!--                       </tr> -->
<!--                       <tr> -->
<!--                         <th scope="row"><a href="#"><img src="assetsAd/img/product-5.jpg" alt=""></a></th> -->
<!--                         <td><a href="#" class="text-primary fw-bold">Sit unde debitis delectus repellendus</a></td> -->
<!--                         <td>$79</td> -->
<!--                         <td class="fw-bold">41</td> -->
<!--                         <td>$3,239</td> -->
<!--                       </tr> -->
<!--                     </tbody> -->
<!--                   </table> -->

<!--                 </div> -->

              </div>
            </div><!-- End Top Selling -->

          </div>
        </div><!-- End Left side columns -->

      </div>
    </section>
    
     
  </main><!-- End #main -->

</body>

</html>