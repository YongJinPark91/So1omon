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
                                    <th colspan="2">2023.10.15 주문 &nbsp;&nbsp;</th>
                                </tr>
                                <tr>
                                    <th>주문번호&nbsp;&nbsp;</th>
                                    <td>:&nbsp;&nbsp;202310151010123</td>

                                </tr>
                                <tr>
                                    <th>송장번호&nbsp;&nbsp;</th>
                                    <td>:&nbsp;&nbsp;202310151012456</td>
                                </tr>
                                <tr>
                                    <th>상품정보&nbsp;&nbsp;</th>
                                    <td>:&nbsp;&nbsp;벌룬핏 조거팬츠, 그레이M, 1개 </td>
                                </tr>
                                <tr>
                                    <th>결제수단&nbsp;&nbsp;</th>
                                    <td>:&nbsp;&nbsp;ㅇㅇ카드</td>
                                </tr>
                                <tr>
                                    <th>가격&nbsp;&nbsp;</th>
                                    <td>:&nbsp;&nbsp;25,000원</td>
                                </tr>
                            </table>
                            <br>

                            <h4>받는사람 정보</h4>
                            <hr style="margin-top: 0px;">
                            <table>
                                <tr>
                                    <th>받는사람&nbsp;&nbsp;</th>
                                    <td>:&nbsp;&nbsp;김핑구</td>
                                </tr>
                                <tr>
                                    <th>연락처&nbsp;&nbsp;</th>
                                    <td>:&nbsp;&nbsp;010-8888-8080</td>
                                </tr>
                                <tr>
                                    <th>받는주소&nbsp;&nbsp;</th>
                                    <td>:&nbsp;&nbsp;남극 두번째 마을 13이글루</td>
                                </tr>
                            </table>
                            <br>


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