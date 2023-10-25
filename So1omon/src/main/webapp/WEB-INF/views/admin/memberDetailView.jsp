<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="includeScript.jsp"/>
<style>
  #main{
    margin: 0px;
    /* width: 600px; */
    height: 600px;
  }

  #point{
    width: 100px;
    display: inline-block;
  }

  #activity-list, #order-list{
    font-size: 13px;
  }

  a:hover{cursor: pointer;}
  .table>tbody>tr:hover{cursor: pointer;}

  .table>tbody>tr>td{
    text-overflow:ellipsis; overflow:hidden; white-space:nowrap;
  }

  .form-select{
    width: 100px;
    font-size: 14px;
    float: right;
    margin-top: 0px;
    margin-bottom: 20px;
  }

  #radio-list{
    width: 320px;
    margin: auto;
    /* border: 1px solid; */
  }

  #radio-list>div{
    float: left;
    margin-right: 25px;
    margin-bottom: 20px;
  }
  .btn-sm{
    height: 25px;
    font-size: 12px;
    /* padding: 5px; */
    margin: 0px;
  }
</style>
</head>
<body>
  <main id="main" class="main">

    <section class="section profile">
      <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">
            <c:choose>
               <c:when test="${ m.profile ne '' }">
                    <img src="assetsAd/img/profile.png" alt="Profile" class="rounded-circle" width=100 height=100>
                 </c:when>
                 <c:otherwise>
                    <img src="${ m.profile }" alt="Profile" class="rounded-circle" width=100 height=100>
                 </c:otherwise>
            </c:choose>
              <h2>${ m.userId }</h2>
              <h6>일반회원</h6>
              <button class="btn btn-primary" onclick="formNote(${ m.userNo });">쪽지보내기</button>
            </div>
          </div>

        </div>

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">회원정보</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">회원정보 수정</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#activity-list">회원 활동</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#order-list">주문 내역</button>
                </li>

                

              </ul>
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  

                  <h5 class="card-title" style="font-weight: bolder;">상세정보</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label ">아이디</div>
                    <div class="col-lg-9 col-md-10">${ m.userId }</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label">이름</div>
                    <div class="col-lg-9 col-md-10">${ m.userName }</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label">닉네임</div>
                    <div class="col-lg-9 col-md-10">${ m.nickName }</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label">주소</div>
                    <div class="col-lg-9 col-md-10">${ m.address }</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label">이메일</div>
                    <div class="col-lg-9 col-md-10">${ m.email }</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label">연락처</div>
                    <div class="col-lg-9 col-md-10">${ m.phone }</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label">포인트</div>
                    <div class="col-lg-9 col-md-10">${ m.point } P</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label">가입날짜</div>
                    <div class="col-lg-9 col-md-10">${ m.enrollDate }</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-2 label">수정날짜</div>
                    <div class="col-lg-9 col-md-10">${ m.modifyDate }</div>
                  </div>

                </div>

                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                  <!-- Profile Edit Form -->
                  <form>
                    <div class="row mb-3">
                      <label for="profileImage" class="col-md-2 col-lg-3 col-form-label">프로필 사진</label>
                      <div class="col-md-10 col-lg-9">
                         <c:choose>
                        <c:when test="${ m.profile ne '' }">
                             <img src="assetsAd/img/profile.png" alt="Profile" class="rounded-circle" width=100 height=100>
                          </c:when>
                          <c:otherwise>
                             <img src="${ m.profile }" alt="Profile" class="rounded-circle" width=100 height=100>
                          </c:otherwise>
                     </c:choose>
                        <!-- <br><input type="file" style="margin-top: 10px;"> -->
                        <!-- <div class="pt-2">
                          <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>
                        </div> -->
                        <input class="form-control" type="file" id="formFile" style="margin-top: 10px;">
                        <script>
                          // 파일 선택
                        </script>

                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-2 col-lg-3 col-form-label">닉네임</label>
                      <div class="col-md-10 col-lg-9">
                        <input name="fullName" type="text" class="form-control" id="fullName" value="${ m.nickName }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="company" class="col-md-2 col-lg-3 col-form-label">주소</label>
                      <div class="col-md-10 col-lg-9">
                        <input name="company" type="text" class="form-control" id="company" value="${ m.address }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Job" class="col-md-2 col-lg-3 col-form-label">이메일</label>
                      <div class="col-md-10 col-lg-9">
                        <input name="job" type="text" class="form-control" id="Job" value="${ m.email }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Country" class="col-md-2 col-lg-3 col-form-label">연락처</label>
                      <div class="col-md-10 col-lg-9">
                        <input name="country" type="text" class="form-control" id="Country" value="${ m.phone }">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Address" class="col-md-2 col-lg-3 col-form-label">포인트</label>
                      <div class="col-md-10 col-lg-9">
                        <input name="address" type="text" class="form-control" id="point" value="${ m.point }"> P
                      </div>
                    </div>

                    

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">수정하기</button>
                      <button type="button" class="btn btn-danger">차단하기</button>
                    </div>
                  </form><!-- End Profile Edit Form -->

                </div>

                <div class="tab-pane fade profile-edit pt-3" id="activity-list">
                  
                  <!-- <select class="form-select" aria-label="Default select example">
                    <option value="">게시글</option>
                    <option value="">댓글</option>
                    <option value="">리뷰</option>
                  </select> -->

                  <div id="radio-list">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="board" checked>
                      <label class="form-check-label" for="gridRadios1">
                        작성 게시글
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="reply">
                      <label class="form-check-label" for="gridRadios2">
                        작성 댓글
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="review">
                      <label class="form-check-label" for="gridRadios3">
                        작성 리뷰
                      </label>
                    </div>
                  </div>
                  
                  <!-- <h5 class="card-title" style="font-weight: bolder;">상세정보</h5> -->
                  <table class="table table-hover" style="table-layout:fixed" id="boardTable">
                    <thead>
                      <tr align="center">
                        <th width="100">게시판</th>
                        <th width="300">제목</th>
                        <th>작성일</th>
                        <th width="90"></th>
                      </tr>
                    </thead>
                    <tbody>
                    
                      <c:forEach var="b" items="${ bList }">
                      
                      
                         <tr align="center">
                           <input type="hidden" value="${ b.boardNo }">
                           <c:choose>
                              <c:when test="${ fn:substring(b.boardNo,0,1) eq 'B' }">
                                 <td>[자유게시판]</td>
                              </c:when>
                              <c:otherwise>
                                 <td>[중고게시판]</td>
                              </c:otherwise>
                           </c:choose>
                           <td  title="${ b.boardTitle }">${ b.boardTitle }</td>  
                           <td>${ b.createDate }</td>
                           <c:choose>
                              <c:when test="${ b.status eq 'N' }">
                                 <td>삭제됨</td>
                              </c:when>
                              <c:otherwise>
                                 <td><button class="btn btn-sm btn-secondary">삭제</button></td>
                           	  </c:otherwise>
                           </c:choose>
                         </tr>
                      </c:forEach>
                      
                    </tbody>
                  </table>
               
               <div style="display:none;" id="replyTable">               
                  <table class="table table-hover" style="table-layout:fixed">
                    <thead>
                      <tr align="center">
                        <th width="200">게시글</th>
                        <th width="200">댓글내용</th>
                        <th>작성일</th>
                        <th width="90"></th>
                      </tr>
                    </thead>
                    <tbody>
                    
                     	<c:forEach var="r" items="${ rList }">
	                      <tr align="center">
	                        <input type="hidden" value="${ r.replyNo }">
	                        <td title="${ r.boardTitle }">${ r.boardTitle }</td>
	                        <td  title="${ r.replyContent }">${ r.replyContent }</td>  
	                        <td>${ r.createDate }</td>
                           <c:choose>
                              <c:when test="${ r.status eq 'N' }">
                                 <td>삭제됨</td>
                              </c:when>
                              <c:otherwise>
                                 <td><button class="btn btn-sm btn-secondary">삭제</button></td>
                           </c:otherwise>
                           </c:choose>
	                      </tr>
   	                   </c:forEach>
   	                   
                    </tbody>
                  </table>
               </div>
               <div style="display:none;" id="reviewTable">               
                  <table class="table table-hover" style="table-layout:fixed">
                    <thead>
                      <tr align="center">
                        <th width="200">상품명</th>
                        <th width="200">리뷰내용</th>
                        <th width="50">별점</th>
                        <th>작성일</th>
                        <th width="90"></th>
                      </tr>
                    </thead>
                    <tbody>
                       <c:forEach var="r" items="${ rvList }">
	                      <tr align="center">
	                        <input type="hidden" value="${ r.reviewNo }">
	                        <td  title="${r.optionName }">${ r.optionName }</td>
	                        <td  title="${r.reviewContent }">${ r.reviewContent }</td>  
	                        <td>${ r.rating }</td>
	                        <td>${ r.createDate }</td>
	                        <c:choose>
                              <c:when test="${ r.status eq 'N' }">
                                 <td>삭제됨</td>
                              </c:when>
                              <c:otherwise>
                                 <td><button class="btn btn-sm btn-secondary">삭제</button></td>
                           </c:otherwise>
                           </c:choose>
	                      </tr>
                      </c:forEach>
                    </tbody>
                  </table>
               </div>
                </div>

                <div class="tab-pane fade profile-edit pt-3" id="order-list">              
                  
                  <table class="table table-hover" id="order-list">
                    <thead> 
                      <tr align="center">
                        <th>주문번호</th>
                        <th>주문날짜</th>
                        <th>결제금액</th>
                        <th>결제수단</th>
                        <th>상태</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                      <c:forEach var="o" items="${ oList }">
	                      <tr align="center">
	                        <td>${ o.orderNo }</td>
	                        <td>${ o.orderDate }</td>
	                        <td>${ o.totalPrice }</td>
	                        <td>${ o.cashType }</td>
	                        <td>${ o.status }</td>
	                      </tr>
                      </c:forEach>
                      
                    </tbody>
                  </table>
                  
                  <script>
                    $(function(){
                    
                    // 주문 상세 이동
                      $("#order-list>tbody>tr").click(function(){
                        let orderNo = $(this).children().eq(0).text();
                        window.open("orderDetail.admin?orderNo="+orderNo, "_blank","width=1200,height=600,left=150,top=200");
                    
                      })
                    })
                    
                    // 회원활동 radio
                    $("input[type=radio]").click(function(){
                       let value = $(this).val();
                       $("#" + value + "Table").css("display", "");
                       
                       $("input[type=radio]:not(:checked)").each(function(){
                          console.log($(this).val());
                          $("#" + $(this).val() + "Table").css("display", "none");
                       })
                    })
                    
                    
                    
                  </script>


                </div>

              </div><!-- End Bordered Tabs -->

              <script>
                $(function(){
                  $("#activity-list tbody tr").click(function(){
                    refNo = $(this).children("input").val();
                    window.open("detail.bo?bno="+refNo);
                  })
                })

                // 쪽지보내기 창
                function formNote(uno){
                  window.open("note.html?uno="+uno, "_blank","width=510,height=400,left=500,top=200,scrollbars=none");
                }
              </script>
            </div>
          </div>

        </div>
      </div>
    </section>

  </main>

</body>
</html>