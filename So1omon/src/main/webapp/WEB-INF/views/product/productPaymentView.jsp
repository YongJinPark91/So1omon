<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>

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
                                        <input type="text" id="sample6_postcode" class="form-control col-sm-6" placeholder="우편번호" readonly >
                                        <input type="button"  onclick="sample6_execDaumPostcode();" value="우편번호 찾기"><br><br>

                                        <label>주소 *</label>
                                        <input type="text" class="form-control col-sm-6" id="sample6_address" placeholder="주소" name="" style="margin-bottom: 0px; padding-bottom: 0px;" readonly><br>
                                        
                                        <label>상세주소 *</label>
                                        <input type="text" class="form-control col-sm-6" id="sample6_detailAddress" placeholder="상세주소" name="">
                                        
		                				<label>핸드폰 *</label>
		                				<input type="text" class="form-control col-sm-6" required>

	                					<label>이메일 주소 *</label>
	        							<input type="email" class="form-control col-sm-6" required>

	                					<label>주문 메모 (선택사항)</label>
	        							<textarea class="form-control" cols="30" rows="4" placeholder="주문/배송에 대한 참고사항" style="resize: none;"></textarea>
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
            
            <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>