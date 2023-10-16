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
	
	<!-- 아래 a태그 가져가면 신고 가능 -->
	<!-- 모달을 푸터나 헤더에 넣는건 어떤가요..?어디서든 a태그로 불러올수 있지않을까요? -->
	<a href="#report-modal" data-toggle="modal"><i class="icon-user"></i>신고하기</a>
    
    <div class="modal fade" id="report-modal" tabindex="-1" role="dialog" aria-hidden="true" >
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    
                    <div class="form-box">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true"><i class="icon-close"></i></span>
                        </button>
                        <div class="form-tab">
                            <ul class="nav nav-pills nav-fill" role="tablist">
                                <h3 >신고하기</h3>
                            </ul>
                            <div class="tab-content" id="tab-content-5">
                                <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                    <form action="#">
                                        <div class="form-group">
                                            <label>신고할 닉네임</label><br>
                                            <input type="text" class="form-control" value="작성자 아이디 고정" readonly>
                                        </div><!-- End .form-group -->

                                        <label for="sortby">신고 유형</label><br>
                                        <div class="toolbox-sort">
                                            <div class="toolbox-sort">
                                                <select name="sortby" id="sortby" class="form-control">
                                                    <option value="popularity" selected="selected">주제와 맞지 않음</option>
                                                    <option value="rating">지나친 광고성 게시물</option>
                                                    <option value="date">도배 및 중복 게시물</option>
                                                    <option value="date">저작권 침해가 우려됨</option>
                                                    <option value="date">욕설/비방이 심함</option>
                                                    <option value="date">개인정보 노출</option>
                                                    <option value="date" >기타</option>
                                                </select>
                                            </div>
                                        </div><!-- End .toolbox-sort -->

                                        <div class="form-group">
                                            <label for="form-control">신고내용</label>
                                            <textarea class="form-control" cols="50" rows="4" placeholder="신고내용을 작성해주세요." style="resize: none;"  required></textarea>
                                        </div><!-- End .form-group -->

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>신고하기</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>
                                        </div><!-- End .form-footer -->
                                    </form>
                                    
                                </div><!-- .End .tab-pane -->
                                
                            </div><!-- End .tab-content -->
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