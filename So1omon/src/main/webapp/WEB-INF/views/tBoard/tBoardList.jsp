<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
    .entry-cats >span{
        color: rosybrown;
    }

    .entry-content{
        width: 250px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
    }
</style>

</head>
<body>
<!-- 이쪽에 메뉴바 포함 할꺼임 -->
     <jsp:include page="../common/header.jsp"/>

     <br><br>
     <main class="main">
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">중고거래 게시판<span>Community</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Community</a></li>
                    <li class="breadcrumb-item active" aria-current="page">중고거래 게시판</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="container">
                <nav class="blog-nav">
                    <ul class="menu-cat entry-filter justify-content-center">
                        <li class="active"><a href="#" data-filter="*">전체<span>8</span></a></li>
                        <li><a href="#" data-filter=".lifestyle">가전제품<span>3</span></a></li>
                        <li><a href="#" data-filter=".shopping">도서<span>1</span></a></li>
                        <li><a href="#" data-filter=".fashion">세번째<span>2</span></a></li>
                        <li><a href="#" data-filter=".travel">네번째<span>3</span></a></li>
                        <li><a href="#" data-filter=".hobbies">다섯번째<span>2</span></a></li>
                    </ul><!-- End .blog-menu -->
                </nav><!-- End .blog-nav -->

                <div class="entry-container max-col-4" data-layout="fitRows">
                    <div class="entry-item  shopping col-sm-6 col-md-4 col-lg-3">
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media">
                                <a href="중고게시판상세보기.html">
                                    <img src="assets/images/blog/grid/4cols/post-1.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>2023-10-11</span>
                                    <span class="meta-separator">|</span>
                                    <span>0 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="중고게시판상세보기.html">중고거래 게시판 제목1</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>카테고리명</span>,
                                    <span>카테고리명</span>
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh.  </p>
                                   
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->

                    <div class="entry-item lifestyle col-sm-6 col-md-4 col-lg-3">
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media entry-video">
                                <a href="중고게시판상세보기.html">
                                    <img src="assets/images/blog/grid/4cols/post-2.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>2023-10-11</span>
                                    <span class="meta-separator">|</span>
                                    <span>0 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="중고게시판상세보기.html">중고거래 게시판 제목2</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>카테고리명</span>
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>Morbi purus libero, faucibus commodo quis, gravida id, est. Vestibulumvo lutpat, lacus a ultrices sagittis</p>
                
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->

                    <div class="entry-item lifestyle fashion col-sm-6 col-md-4 col-lg-3">
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media">
                                <div class="owl-carousel owl-simple owl-light owl-nav-inside" data-toggle="owl">
                                    <a href="중고게시판상세보기.html">
                                        <img src="assets/images/blog/grid/4cols/post-3.jpg" alt="image desc">
                                    </a>
                                    <a href="중고게시판상세보기.html">
                                        <img src="assets/images/blog/grid/4cols/post-4.jpg" alt="image desc">
                                    </a>
                                </div><!-- End .owl-carousel -->
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>2023-10-11</span>
                                    <span class="meta-separator">|</span>
                                    <span>3 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="중고게시판상세보기.html">중고거래 게시판 제목3</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>카테고리명</span>,
                                    <span>카테고리명</span>
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh</p>
                                 
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->

                    <div class="entry-item travel col-sm-6 col-md-4 col-lg-3">
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media">
                                <a href="single.html">
                                    <img src="assets/images/blog/grid/4cols/post-4.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>2023-10-11</span>
                                    <span class="meta-separator">|</span>
                                    <span>4 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="single.html">중고거래 게시판 제목4</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>카테고리명</span>
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros</p>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->

                    <div class="entry-item travel hobbies col-sm-6 col-md-4 col-lg-3">
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media">
                                <a href="single.html">
                                    <img src="assets/images/blog/grid/4cols/post-5.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>2023-10-11</span>
                                    <span class="meta-separator">|</span>
                                    <span>2 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="single.html">중고거래 게시판 제목5</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>카테고리명</span>,
                                    <span>카테고리명</span>
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->

                    <div class="entry-item hobbies col-sm-6 col-md-4 col-lg-3">
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media">
                                <a href="single.html">
                                    <img src="assets/images/blog/grid/4cols/post-6.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>2023-10-11</span>
                                    <span class="meta-separator">|</span>
                                    <span>4 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="single.html">중고거래 게시판 제목6</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>카테고리명</span>
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus. Phasellus ultrices nulla quis</p>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->

                    <div class="entry-item travel col-sm-6 col-md-4 col-lg-3">
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media">
                                <div class="owl-carousel owl-simple owl-light owl-nav-inside" data-toggle="owl">
                                    <a href="single.html">
                                        <img src="assets/images/blog/grid/4cols/post-7.jpg" alt="image desc">
                                    </a>
                                    <a href="single.html">
                                        <img src="assets/images/blog/grid/4cols/post-6.jpg" alt="image desc">
                                    </a>
                                </div><!-- End .owl-carousel -->
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>2023-01-08</span>
                                    <span class="meta-separator">|</span>
                                    <span>3 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="single.html">게시판 제목</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>카테고리명</span>
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros ...</p>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->

                    <div class="entry-item fashion col-sm-6 col-md-4 col-lg-3">
                        <article class="entry entry-grid text-center">
                            <figure class="entry-media">
                                <a href="single.html">
                                    <img src="assets/images/blog/grid/4cols/post-8.jpg" alt="image desc">
                                </a>
                            </figure><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-meta">
                                    <span>2023-01-08</span>
                                    <span class="meta-separator">|</span>
                                    <span>0 조회수</span>
                                </div><!-- End .entry-meta -->

                                <h2 class="entry-title">
                                    <a href="single.html">게시판 제목</a>
                                </h2><!-- End .entry-title -->

                                <div class="entry-cats">
                                    <span>카테고리명</span>
                                </div><!-- End .entry-cats -->

                                <div class="entry-content">
                                    <p>Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus ... </p>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article><!-- End .entry -->
                    </div><!-- End .entry-item -->
                </div><!-- End .entry-container -->

                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link page-link-prev" href="#" aria-label="Previous" tabindex="-1" aria-disabled="true">
                                <span aria-hidden="true"><i class="icon-long-arrow-left"></i></span>이전
                            </a>
                        </li>
                        <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item">
                            <a class="page-link page-link-next" href="#" aria-label="Next">
                                다음 <span aria-hidden="true"><i class="icon-long-arrow-right"></i></span>
                            </a>
                        </li>
                        
                    </ul>
                    <button type="submit" class="btn btn-outline-primary-2" style="float: right;" >작성하기</button>
                </nav>
            </div><!-- End .container -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->
    
    
    
    <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>
    
    <!-- Plugins JS File -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.hoverIntent.min.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/superfish.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>

</body>
</html>