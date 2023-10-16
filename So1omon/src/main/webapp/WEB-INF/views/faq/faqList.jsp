<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Molla - Bootstrap eCommerce Template</title>
<meta name="keywords" content="HTML5 Template">
<meta name="description" content="Molla - Bootstrap eCommerce Template">
<meta name="author" content="p-themes">
<!-- Favicon -->
<link rel="apple-touch-icon" sizes="180x180" href="assets/images/icons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="assets/images/icons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="assets/images/icons/favicon-16x16.png">
<link rel="manifest" href="assets/images/icons/site.html">
<link rel="mask-icon" href="assets/images/icons/safari-pinned-tab.svg" color="#666666">
<link rel="shortcut icon" href="assets/images/icons/favicon.ico">
<meta name="apple-mobile-web-app-title" content="Molla">
<meta name="application-name" content="Molla">
<meta name="msapplication-TileColor" content="#cc9966">
<meta name="msapplication-config" content="assets/images/icons/browserconfig.xml">
<meta name="theme-color" content="#ffffff">
<!-- Plugins CSS File -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!-- Main CSS File -->
<link rel="stylesheet" href="assets/css/style.css">
<style>
    .card-body>button{
        float: right;
        border: 1px solid rosybrown;
        background-color: rgba(250, 235, 215, 0);
        color: rosybrown;
    }

</style>
</head>
<body>
    <!-- 이쪽에 헤더바 포함할꺼임 -->
    <jsp:include page="../common/header.jsp"/>

    <main class="main">
        <div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
            <div class="container">
                <h1 class="page-title">F.A.Q<span>Pages</span></h1>
            </div><!-- End .container -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">FAQ</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="container">
                <h2 class="title text-center mb-3">쇼핑 정보</h2><!-- End .title -->
                <div class="accordion accordion-rounded" id="accordion-1">
                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading-1">
                            <h2 class="card-title">
                                <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
                                    Q 배송은 얼마나 걸리나요?
                                </a>

                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse-1" class="collapse show" aria-labelledby="heading-1" data-parent="#accordion-1">
                            <div class="card-body">
                                상품 배송 기간은 배송 유형에 따라 출고 일자 차이가 있습니다.자세한 사항은 구매하신 상품의 상세 페이지에서 확인 가능하며, 배송 유형 별 기본 출고 기간은 아래와 같습니다. <br>
                                ∙ 일반 택배 / 화물 택배 : 결제 후 1~3 영업일 이내 출고됩니다. <br>
                                ∙ 업체 직접 배송 : 배송 지역에 따라 배송 일자가 상이할 수 있으므로 상품 상세 페이지에서 확인 해주세요. <br>
                                ※ 영업일은 주말, 공휴일을 제외한 기간입니다. <br>
                                ※ 제조사의 사정에 따라 출고일은 지연될 수 있는 점 양해 부탁드립니다. <br>

                            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->

                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading-2">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2">
                                    Q 원하는 날짜로 맞춰서 배송을 받을수 있나요?
                                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse-2" class="collapse" aria-labelledby="heading-2" data-parent="#accordion-1">
                            <div class="card-body">
                                각 배송처 정책에 따라 상이할 수 있습니다.
                                
                            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->

                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading-3">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-3" aria-expanded="false" aria-controls="collapse-3">
                                    Q 가입한 적이 없는데 이미 가입된 이메일이라고 나와요. 어떻게 하나요?					                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse-3" class="collapse" aria-labelledby="heading-3" data-parent="#accordion-1">
                            <div class="card-body">
                                플러스친구 'so1mon 고객센터'로 문의

                                Q 가입한 적이 없는데 이미 가입된 이메일이라고 나와요. 어떻게 하나요?
                                현재 회원 가입 시 이메일 인증 절차를 거치므로 이러한 문제가 발생되지 않지만 인증 절차 도입 전 다른 고객님께서 이메일을 잘못 입력하신 경우 '이미 가입한 이메일'이란 메시지가 노출될 수 있습니다. <br>
                                이는 고객님의 정보가 노출된 것이 아니니 걱정하지 마시고, 번거로우시겠지만 고객센터로 문의 부탁드립니다. <br>
                                so1mon 고객센터 1670-0876 (운영 시간 : 평일 09:00~18:00) - 마이페이지 > 나의 쇼핑 > 고객센터 > 1:1 카톡 상담하기 - 카카오 플러스친구 'so1mon 고객센터'로 문의 <br>
                            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->

                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading-4">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-4" aria-expanded="false" aria-controls="collapse-4">
                                    Q 비밀번호 변경은 어떻게하나요?
                                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse-4" class="collapse" aria-labelledby="heading-4" data-parent="#accordion-1">
                            <div class="card-body">
                                우측 상단 프로필 사진을 클릭 후 [마이홈 > 설정 > 비밀번호 변경] 페이지에서 비밀번호 변경이 가능합니다.					            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->
                </div><!-- End .accordion -->

                <h2 class="title text-center mb-3">주문 및 결제</h2><!-- End .title -->
                <div class="accordion accordion-rounded" id="accordion-2">
                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading2-1">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse2-1" aria-expanded="false" aria-controls="collapse2-1">
                                    Q 주문 후 결제 방법을 변경하고 싶은데 어떻게 해야 하나요?
                                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse2-1" class="collapse" aria-labelledby="heading2-1" data-parent="#accordion-2">
                            <div class="card-body">
                                결제 후 결제 정보 변경은 불가능 합니다. <br>
                                단, 입금 대기 및 결제 완료 단계에서는 취소 후 재주문을 통해 변경 가능합니다.
                            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->

                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading2-2">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse2-2" aria-expanded="false" aria-controls="collapse2-2">
                                    Q 신용카드 결제 후 할부 개월 수를 변경 가능한가요?
                                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse2-2" class="collapse" aria-labelledby="heading2-2" data-parent="#accordion-2">
                            <div class="card-body">
                                결제 후 결제 정보 변경은 불가능 합니다. <br>
                                단, 결제 완료 단계에서는 취소 후 재주문을 통해 변경 가능합니다.
                            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->

                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading2-3">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse2-3" aria-expanded="false" aria-controls="collapse2-3">
                                    Q 주문 내역은 어떻게 확인할 수 있나요?
                                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse2-3" class="collapse" aria-labelledby="heading2-3" data-parent="#accordion-2">
                            <div class="card-body">
                                우측 상단 프로필 사진을 클릭 후 [나의쇼핑]을 통해 확인 가능합니다.
                            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->
                </div><!-- End .accordion -->

                <h2 class="title text-center mb-3">반품 및 교환</h2><!-- End .title -->
                <div class="accordion accordion-rounded" id="accordion-3">
                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading3-1">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse3-1" aria-expanded="false" aria-controls="collapse3-1">
                                    Q 제품이 불량입니다. 반품 혹은 교환은 어떻게 하나요?
                                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse3-1" class="collapse" aria-labelledby="heading3-1" data-parent="#accordion-3">
                            <div class="card-body">
                                업체(브랜드)마다 발송처 및 반품절차가 다릅니다. <br>
                                - 우측 상단 프로필 사진을 클릭 후 [나의쇼핑] 페이지에서 원하는 주문의 상세보기 버튼을 클릭 후 교환/반품 접수 후 진행 할수 있습니다. 교환/반품 접수 없이 임의로 반송한 경우에는 처리가 늦어질 수 있습니다. <br>
                                - 교환/반품 접수 시 원활한 처리를 위해 불량 사진이 필요하오니, 가급적 사진을 첨부하여 주시기 바랍니다. <br>
                                단, 구매확정 이후 교환/반품을 원하시는 경우 판매 업체에 교환/반품 가능 여부를 먼저 문의 부탁드립니다. <br>
                            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->

                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading3-2">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse3-2" aria-expanded="false" aria-controls="collapse3-2">
                                    Q 제품의 교환 또는 반품을 할 수 있나요?
                                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse3-2" class="collapse" aria-labelledby="heading3-2" data-parent="#accordion-3">
                            <div class="card-body">
                                상품을 수령하신 후 7일 이내에 교환, 반품이 가능하며, 고객님의 변심에 의한 교환/반품의 경우 배송비용이 부과될 수 있습니다. <br>
                                ※ 단, 아래의 경우 교환/반품이 불가능합니다. <br>
                                - 고객님의 책임 사유로 인해 상품 등이 멸실 또는 훼손된 경우 <br>
                                - 개봉 및 포장이 훼손으로 상품가치가 현저히 상실된 경우 <br>
                                - 시간 경과에 의해 재판매가 어려울정도로 상품 가치가 현저히 저하된 경우 <br>
                                - 고객주문 확인 후 상품제작에 들어가는 주문 제작 상품 <br>
                                - 직접 조립하는(DIY) 상품을 조립 한 경우 <br>
                            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->

                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading3-3">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse3-3" aria-expanded="false" aria-controls="collapse3-3">
                                    Q 제품의 교환 또는 반품은 어떻게 신청 할 수 있나요?
                                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse3-3" class="collapse" aria-labelledby="heading3-3" data-parent="#accordion-3">
                            <div class="card-body">
                                상품을 수령하신 후 7일 이내에 교환, 반품이 가능하며, 고객님의 변심에 의한 교환/반품의 경우 배송비용이 부과될 수 있습니다. <br>
                                ※ 단, 아래의 경우 교환/반품이 불가능합니다. <br>
                                - 고객님의 책임 사유로 인해 상품 등이 멸실 또는 훼손된 경우   <br>
                                - 개봉 및 포장이 훼손으로 상품가치가 현저히 상실된 경우<br>
                                - 시간 경과에 의해 재판매가 어려울정도로 상품 가치가 현저히 저하된 경우<br>
                                - 고객주문 확인 후 상품제작에 들어가는 주문 제작 상품<br>
                                - 직접 조립하는(DIY) 상품을 조립 한 경우					            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->

                    <div class="card card-box card-sm bg-light">
                        <div class="card-header" id="heading3-4">
                            <h2 class="card-title">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse3-4" aria-expanded="false" aria-controls="collapse3-4">
                                    Q 주문한 것과 다른 상품이 왔습니다. 어떻게 해아하나요?					                </a>
                            </h2>
                        </div><!-- End .card-header -->
                        <div id="collapse3-4" class="collapse" aria-labelledby="heading3-4" data-parent="#accordion-3">
                            <div class="card-body">
                                우측 상단 프로필 사진을 클릭 후 [나의쇼핑 > 고객센터 > 1:1 카톡 상담하기]를 통해 문의 주시면 확인 도움드리겠습니다.					            </div><!-- End .card-body -->
                        </div><!-- End .collapse -->
                    </div><!-- End .card -->
                </div><!-- End .accordion -->
            </div><!-- End .container -->
        </div><!-- End .page-content -->
        
        

        <div class="cta cta-display bg-image pt-4 pb-4" style="background-image: url(assets/images/backgrounds/cta/bg-7.jpg);">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-9 col-xl-7">
                        <div class="row no-gutters flex-column flex-sm-row align-items-sm-center">
                            <div class="col">
                                <h3 class="cta-title text-white">문의하러 가기</h3><!-- End .cta-title -->
                                
                            </div><!-- End .col -->

                            <div class="col-auto">
                                <a href="qna리스트페이지.html" class="btn btn-outline-white"><span>QNA 문의</span><i class="icon-long-arrow-right"></i></a>
                            </div><!-- End .col-auto -->
                        </div><!-- End .row no-gutters -->
                    </div><!-- End .col-md-10 col-lg-9 -->
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!-- End .cta -->
    </main><!-- End .main -->
    
        <!-- 이쪽에 푸터바 포함할꺼임 -->
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>