<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #tright{
        text-align: center;
    }

    input[type="number"]::-webkit-outer-spin-button,
    input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<main class="main">
    <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
       <div class="container">
          <h1 class="page-title">Checkout<span>Shop</span></h1>
       </div><!-- End .container -->
    </div><!-- End .page-header -->
     <nav aria-label="breadcrumb" class="breadcrumb-nav">
         <div class="container">
             <ol class="breadcrumb">
                 <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                 <li class="breadcrumb-item"><a href="#">Shop</a></li>
                 <li class="breadcrumb-item active" aria-current="page">Checkout</li>
             </ol>
         </div><!-- End .container -->
     </nav><!-- End .breadcrumb-nav -->
   <div class="page-content">
               <div class="checkout">
                   <div class="container">
                     <form action="#">
                         <div class="row">
                            <div class="col-lg-9">
                               <h4>결제 세부 정보</h4><!-- End .checkout-title -->
                                    <hr>
                                  <div class="row">
                                     <div class="col-sm-6">
                                        <label>받는 사람 *</label>
                                        <input type="text" class="form-control" required>
                                     </div><!-- End .col-sm-6 -->
                                  </div><!-- End .row -->

                                 <!-- <label>주소 *</label>
                                 <input type="text" class="form-control" placeholder="도로명, 지번주소" required>
                                 <input type="text" class="form-control" placeholder="상세주소" required> -->
                                        
                                        <label>주소찾기 *</label><br>
                                        <input type="button"  onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
                                        <input type="text" id="sample6_postcode" class="form-control col-sm-6" placeholder="우편번호" readonly >

                                        <label>주소 *</label>
                                        <input type="text" class="form-control col-sm-6" id="sample6_address" placeholder="주소" name="address" style="margin-bottom: 0px; padding-bottom: 0px;" readonly><br>
                                        
                                        <label>상세주소 *</label>
                                        <input type="text" class="form-control col-sm-6" id="sample6_detailAddress" placeholder="상세주소" name="address">
                                        <input type="text" class="form-control col-sm-6" name="address" id="sample6_extraAddress" placeholder="참고항목" readonly><br>
                                  <label>핸드폰 *</label>
                                  <input type="text" class="form-control col-sm-6" required>

                                  <label>이메일 주소 *</label>
                                <input type="email" class="form-control col-sm-6" required>

                                  <label>주문 메모 (선택사항)</label>
                                <textarea class="form-control" cols="30" rows="4" placeholder="주문/배송에 대한 참고사항"></textarea>
                            </div><!-- End .col-lg-9 -->
                            <aside class="col-lg-3">
                               <div class="summary">
                                  <h3 class="summary-title">주문내용</h3><!-- End .summary-title -->

                                  <table class="table table-summary" style="width: 100%;">
                                     <thead>
                                        <tr>
                                           <th>제품</th>
                                           <th id="tright">총금액</th>
                                        </tr>
                                     </thead>

                                     <tbody>
                                        <tr>
                                           <td>반짝이 신발, 빨간색, 2개</td>
                                           <td id="tright">
                                                        <p style="font-size: 12px;">84,000*2</p>
                                                        168,000원
                                                    </td>
                                        </tr>

                                        <tr>
                                           <td>Blue utility pinafore denimdress</td>
                                           <td id="tright">76,000원</td>
                                        </tr>
                                                <tr>
                                                    <td>배송 :</td>
                                                    <td id="tright">무료배송</td>
                                                </tr>
                                                <tr class="summary-subtotal">
                                                    <td>소계 :</td>
                                                    <td id="tright">244,000원</td>
                                                </tr><!-- End .summary-subtotal -->
                                                <tr>
                                                    <!-- input 박스 max값에 보유 포인트 넣어야함 -->
                                           <td>포인트 사용 : <input type="number" name="" min="100" max="500" style="width:90px; background-color: rgb(249, 249, 249); border: 1px solid lightgray;" placeholder="포인트 입력"><p style="font-size: 10px;margin-top: 5px;">(현재포인트 : 2200원)</p></td>
                                           <td id="tright"> 2,000원</td>
                                        </tr><!-- End .summary-subtotal -->
                                        <tr class="summary-total">
                                           <td>총 금액 :</td>
                                           <td id="tright">244,000원</td>
                                        </tr><!-- End .summary-total -->
                                     </tbody>
                                  </table><!-- End .table table-summary -->

                                  <button type="submit" class="btn btn-outline-primary-2 btn-order btn-block">
                                     <span class="btn-text">주문하기</span>
                                     <span class="btn-hover-text">결제하기</span>
                                  </button>
                               </div><!-- End .summary -->
                            </aside><!-- End .col-lg-3 -->
                         </div><!-- End .row -->
                     </form>
                   </div><!-- End .container -->
                </div><!-- End .checkout -->
            </div><!-- End .page-content -->
            </main>

<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  상품결제화면 끝  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->

    <script>
       function sample6_execDaumPostcode() {
           new daum.Postcode({
               oncomplete: function(data) {
                   // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
   
                   // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                   // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                   var addr = ''; // 주소 변수
                   var extraAddr = ''; // 참고항목 변수
   
                   //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                   if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                       addr = data.roadAddress;
                   } else { // 사용자가 지번 주소를 선택했을 경우(J)
                       addr = data.jibunAddress;
                   }
   
                   // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                   if(data.userSelectedType === 'R'){
                       // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                       // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                       if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                           extraAddr += data.bname;
                       }
                       // 건물명이 있고, 공동주택일 경우 추가한다.
                       if(data.buildingName !== '' && data.apartment === 'Y'){
                           extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                       }
                       // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                       if(extraAddr !== ''){
                           extraAddr = ' (' + extraAddr + ')';
                       }
                       // 조합된 참고항목을 해당 필드에 넣는다.
                       document.getElementById("sample6_extraAddress").value = extraAddr;
                   
                   } else {
                       document.getElementById("sample6_extraAddress").value = '';
                   }
   
                   // 우편번호와 주소 정보를 해당 필드에 넣는다.
                   document.getElementById('sample6_postcode').value = data.zonecode;
                   document.getElementById("sample6_address").value = addr;
                   // 커서를 상세주소 필드로 이동한다.
                   document.getElementById("sample6_detailAddress").focus();
               }
           }).open();
       }
   </script>
    
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>