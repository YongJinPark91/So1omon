<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    .content{
        width: 1000px;
        margin: auto; 
        
    }

    table * {
        margin: 5px;
    }
    
    table {
        width: 100%;
    }
    .table th{
        padding-top: 30px;
    }
    #buttonA:hover{
        color: white;
    }

    #buttonB:hover{
        color: white;
        background-color: lightcoral;
        border: 1px solid  lightcoral;
    }


    .btn {
        min-width: 110px;
    }

    .table th, .table td {
    padding-top: 3.4rem;
    }

</style>
</head>
<body>
    <!-- 이쪽에 메뉴바 포함 할꺼임 -->
    <jsp:include page="../common/header.jsp"/>
    <br><br>


    <div class="bg-light pb-5 mb-4">
        <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
            <div class="container d-flex align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Gallery</li>
                </ol>


            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->
        <div class="container">
            <div class="product-gallery-carousel owl-carousel owl-full owl-nav-dark">
                <figure class="product-gallery-image">
                    <img src="assets/images/products/single/gallery/1.jpg" data-zoom-image="assets/images/products/single/gallery/1-big.jpg" alt="product image">
                </figure><!-- End .product-gallery-image -->

                <figure class="product-gallery-image">
                    <img src="assets/images/products/single/gallery/2.jpg" data-zoom-image="assets/images/products/single/gallery/2-big.jpg" alt="product image">
                </figure><!-- End .product-gallery-image -->

                <figure class="product-gallery-image">
                    <img src="assets/images/products/single/gallery/3.jpg" data-zoom-image="assets/images/products/single/gallery/3-big.jpg" alt="product image">
                </figure><!-- End .product-gallery-image -->

                <figure class="product-gallery-image">
                    <img src="assets/images/products/single/gallery/4.jpg" data-zoom-image="assets/images/products/single/gallery/4-big.jpg" alt="product image">
                </figure><!-- End .product-gallery-image -->
            </div><!-- End .owl-carousel -->
        </div><!-- End .container -->
    </div><!-- End .bg-light pb-5 -->





    
    <div class="content">

        <div class="innerOuter">    
            <br>
            <a class="btn btn-outline-primary-2" style="float:right" href="">목록으로</a>
            <br><br>
            <table id="contentArea" align="center" class="table">
                <tr>
                    <th width="100" style="padding-top: 3.4rem;">제목</th>
                    <td colspan="3">게시글 제목입니다</td>
                </tr>
                <tr>
                    <th style="padding-top: 3.4rem;">작성자</th>
                    <td>user01</td>
                    <th style="text-align: center; padding-top: 3.4rem;"">작성일</th>
                    <td>2023-03-31</td>
                </tr>
                <tr>
                    <th style="padding-top: 3.4rem;">가격</th>
                    <td colspan="3">20000원 협의 가능</td>
                </tr>
                <tr>
                    <th style="padding-top: 2rem;">내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px">피자가 먹고싶네오</p></td>
                </tr>
            </table>
            <br>

            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
                    <a class="btn btn-outline-primary-2" id="buttonA"  onclick="">수정하기</a> <!-- 요기에 href="" 를 작성하면 get방식이기 떄문에 노출된다. -->
                    <a class="btn btn-outline-danger" id="buttonB" onclick="">삭제하기</a>
            </div><br><br>
            
    

            <!-- 댓글 기능은 나중에 ajax 배우고 접목시킬예정! 우선은 화면구현만 해놓음 -->
            <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
                        <th colspan="2">
                            <textarea class="form-control" name="" id="content" cols="55" rows="2" style="resize:none; width:100%"></textarea>
                        </th>
                        <th style="vertical-align: middle">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" id="secret" value="" name="">
                            <label for="secret">비밀댓글</label><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <button class="btn btn-outline-primary-2" >등록하기</button>
                            
                                
                        </th>
                    </tr>
                    <tr>
                        <td colspan="3">댓글 (<span id="rcount">3</span>) </td> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>user02</th>
                        <td>댓글입니다.너무웃기다앙</td>
                        <td>2023-03-03</td>
                    </tr>
                    <tr>
                        <th>user01</th>
                        <td>많이봐주세용</td>
                        <td>2023-01-08</td>
                    </tr>
                    <tr>
                        <th>admin</th>
                        <td>댓글입니다ㅋㅋㅋ</td>
                        <td>2022-12-02</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <br><br>
    </div>

    
    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
    
    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.elevateZoom.min.js"></script>
    <script src="assets/js/bootstrap-input-spinner.js"></script>
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>
</html>