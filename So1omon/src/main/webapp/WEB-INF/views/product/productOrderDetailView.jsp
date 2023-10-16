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
	
	<a href="#purchase-details-modal" data-toggle="modal"><i class="icon-user"></i>Login</a>
    
    <div class="modal fade" id="purchase-details-modal" tabindex="-1" role="dialog" aria-hidden="true" >
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    
                    <div class="form-box">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true"><i class="icon-close"></i></span>
                        </button>
                        <div class="form-tab">
                            <h4>주문 상세</h4>
                            <hr style="margin-top: 0px;">
                            <table>
                                <tr>
                                    <th>2023.10.15 주문 &nbsp;&nbsp;</th>
                                    <td>주문번호 202310151010123</td>
                                </tr>
                                <tr>
                                    <th>송장번호</th>
                                    <td>202310151012456</td>
                                </tr>
                                <tr>
                                    <th>상품정보</th>
                                    <td>벌룬핏 조거팬츠, 그레이M, 1개 </td>
                                </tr>
                                <tr>
                                    <th>가격</th>
                                    <td>25,000원</td>
                                </tr>
                            </table>
                            <br>

                            <h4>받는사람 정보</h4>
                            <hr style="margin-top: 0px;">
                            <table>
                                <tr>
                                    <th>받는사람</th>
                                    <td>김핑구</td>
                                </tr>
                                <tr>
                                    <th>연락처</th>
                                    <td>010-8888-8080</td>
                                </tr>
                                <tr>
                                    <th>받는주소</th>
                                    <td>남극 두번째 마을 13이글루</td>
                                </tr>
                                <tr>
                                    <th>배송요청사항 &nbsp;&nbsp;</th>
                                    <td>얼 수 있으니 핫팩 동봉해주세요</td>
                                </tr>
                            </table>
                            <br>

                            <h4>결제내역</h4>
                            <hr style="margin-top: 0px;">
                            <table>
                                <tr>
                                    <th>결제수단</th>
                                    <td>ㅇㅇ카드</td>
                                </tr>
                                <tr>
                                    <th>총 상품가격 &nbsp;&nbsp;</th>
                                    <td>25,000원</td>
                                </tr>
                                <tr>
                                    <th>포인트사용</th>
                                    <td>2,000원</td>
                                </tr>
                                <tr>
                                    <th>배송비</th>
                                    <td>0원</td>
                                </tr>
                                <tr>
                                    <th>총 결제금액</th>
                                    <td>23,000원</td>
                                </tr>
                            </table>


                        </div><!-- End .form-tab -->
                    </div><!-- End .form-box -->
                </div><!-- End .modal-body -->
            </div><!-- End .modal-content -->
        </div><!-- End .modal-dialog -->
    </div><!-- End .modal -->
    <br><br>
    
    <jsp:include page="../common/footer.jsp"></jsp:include>
    
</body>
</html>