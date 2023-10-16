<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <div class="page-wrapper">
        <main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Login</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="login-page bg-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17" style="background-image: url('assets/images/backgrounds/login-bg.jpg')">
            	<div class="container">
            		<div class="form-box">
                        <div class="content">
                            <br><br>

                            <p class="form tm_all">
                                <input type="checkbox" name="" id="agree_all" class="chk_all big agree ">
                                <label for="agree_all">전체동의</label>
                                <!-- N : 그룹화 할 checkbox에 class명을 마지막에 동일하게 준다. ex) agree -->
                            </p>

                            <hr style="margin-top: 10px; margin-bottom: 10px;">

                            <ul>
                                <li>
                                    <input type="checkbox" id="agree" name="agree" class="chk agree" required="">
                                    <label for="agree">솔로몬 구매회원 이용약관 <span class="text__importance">(필수)</span></label>
                                    <div class="accordion" id="accordion-1">
                                        
                                        <div class="card">
                                            <div class="card-header" id="heading-One">
                                                <h5 class="card-title" style="font-size: small;">
                                                    <a role="button" data-toggle="collapse" href="#collapse-One" aria-expanded="true" aria-controls="collapse-One" style="font-size: smaller;">
                                                        솔로몬 구매회원 세부 이용약관
                                                    </a>
                                                </h5>
                                            </div><!-- End .card-header -->
                                            <div id="collapse-One" class="collapse" aria-labelledby="heading-One" data-parent="#accordion-1">
                                                <div class="card-body">
                                                    <textarea name="" id="" cols="95" rows="5" style="resize: none; border: 0px; font-size: x-small;">
제1장 총칙
제1조 (목적)
이 약관은 주식회사 솔로몬(이하 “회사”라 함)가 운영하는 “솔로몬” 인터넷 오픈마켓 사이트 (www.so1omon.co.kr, 이하 “솔로몬”이라 함)와 스마트폰 등 이동통신기기를 통해 제공되는 ‘솔로몬’ 모바일 애플리케이션(이하 “모바일솔로몬”이라고 합니다)을 통해서 제공하는 전자상거래 관련 서비스 및 기타 서비스 (이하 “서비스”라 함)를 이용하는 자간의 권리, 의무를 확정하고 이를 이행함으로써 상호 발전을 도모하는 것을 그 목적으로 합니다.

제2조(약관의 명시, 효력과 개정)
1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편주소 등)등과 함께 회원이 확인할 수 있도록 “솔로몬” 초기 서비스화면 또는 연결화면에 게시합니다.
2. 회사는 약관의규제에관한법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률, 전자금융거래법 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 초기화면에 그 적용일자 14일 이전부터 적용일자 전일까지 공지합니다.다만, 변경 내용이 중대하거나 구매회원에게 불리한 경우에는 그 적용일자 30일 이전부터 적용일자 전일까지 공지하고 구매회원에게 개별 통지합니다.변경된 약관은 그 적용일자 이전으로 소급하여 적용되지 아니합니다

제3조 (용어의 정의)
1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1) 회원: 회사에 개인정보를 제공하여 회원등록을 한 개인 또는 법인으로서, 다음과 같이 일반회원과 판매회원으로 구분이 됩니다.
① 일반회원(구매자): 회사에서 제공하는 구매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
② 판매회원(판매자): 회사에서 제공하는 구매서비스 및 판매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
2) 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 문자와 숫자의 조합을 말합니다.
3) 비밀번호: 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.
4) 운영자: 회사가 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.
5) 구매안전서비스: 회사가 구매자의 결제대금의 보호를 위하여 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.
6) 안전거래센터: 회사 서비스 이용 중 거래의 안전과 관련하여 발생할 수 있는 제 문제를 조정하기 위한 기구를 말합니다.
7) 분쟁조정센터: 원칙적으로 회사를 통한 거래에 따른 분쟁은 판매자와 구매자 간의 자율적인 해결이 원칙이지만, 예외적으로 분쟁의 합리적이고 원활한 조정을 위하여 회사가 설치 및 운영하는 분쟁조정기구를 말합니다.
8) 제휴사 포인트 : 회사와 제휴관계가 있는 제3자가 제공하는 각종 포인트를 말합니다.
9) 아이템할인: 판매자가 회사의 서비스를 통하여 물품을 판매할 때 회사와의 합의에 따라 서비스이용료 범위 내에서 특정물품의 판매가격을 할인하는 것을 말합니다. 회사는 아이템할인으로 인한 특정물품 판매가격 할인액을 해당 서비스 화면에 게재합니다.
10) 에누리쿠폰(구매쿠폰): 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의(승인을 포함하며 이하 같다)가 있는 경우에 한하여 에누리쿠폰(구매쿠폰)이 적용된 물품판매거래를 중개할 수 있으며, 판매자의 동의가 없는 경우에는 당해 거래를 신속히 취소 처리합니다.
11) 바이어쿠폰: 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의 없이 회원에게 바이어쿠폰을 발행할 수 있습니다.
                                                    </textarea>
                                                </div><!-- End .card-body -->
                                            </div><!-- End .collapse -->
                                        </div><!-- End .card -->
                                    </div><!-- End .accordion -->

                                </li>
                                <li>
                                    <input type="checkbox" id="agree2" name="agree" class="chk agree" required="">
                                    <label for="agree2">전자금융서비스 이용약관 <span class="text__importance">(필수)</span></label>
                                    <div class="card">
                                        <div class="card-header" id="heading-Two">
                                            <h5 class="card-title" style="font-size: small;">
                                                <a role="button" data-toggle="collapse" href="#collapse-Two" aria-expanded="true" aria-controls="collapse-Two" style="font-size: smaller;">
                                                    전자금융서비스 세부 이용약관
                                                </a>
                                            </h5>
                                        </div><!-- End .card-header -->
                                        <div id="collapse-Two" class="collapse" aria-labelledby="heading-Two" data-parent="#accordion-1">
                                            <div class="card-body">
                                                <textarea name="" id="" cols="95" rows="5" style="resize: none; border: 0px; font-size: x-small;">
제1장 총칙
제1조 (목적)
이 약관은 주식회사 솔로몬(이하 “회사”라 함)가 운영하는 “솔로몬” 인터넷 오픈마켓 사이트 (www.so1omon.co.kr, 이하 “솔로몬”이라 함)와 스마트폰 등 이동통신기기를 통해 제공되는 ‘솔로몬’ 모바일 애플리케이션(이하 “모바일솔로몬”이라고 합니다)을 통해서 제공하는 전자상거래 관련 서비스 및 기타 서비스 (이하 “서비스”라 함)를 이용하는 자간의 권리, 의무를 확정하고 이를 이행함으로써 상호 발전을 도모하는 것을 그 목적으로 합니다.

제2조(약관의 명시, 효력과 개정)
1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편주소 등)등과 함께 회원이 확인할 수 있도록 “솔로몬” 초기 서비스화면 또는 연결화면에 게시합니다.
2. 회사는 약관의규제에관한법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률, 전자금융거래법 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 초기화면에 그 적용일자 14일 이전부터 적용일자 전일까지 공지합니다.다만, 변경 내용이 중대하거나 구매회원에게 불리한 경우에는 그 적용일자 30일 이전부터 적용일자 전일까지 공지하고 구매회원에게 개별 통지합니다.변경된 약관은 그 적용일자 이전으로 소급하여 적용되지 아니합니다

제3조 (용어의 정의)
1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1) 회원: 회사에 개인정보를 제공하여 회원등록을 한 개인 또는 법인으로서, 다음과 같이 일반회원과 판매회원으로 구분이 됩니다.
① 일반회원(구매자): 회사에서 제공하는 구매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
② 판매회원(판매자): 회사에서 제공하는 구매서비스 및 판매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
2) 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 문자와 숫자의 조합을 말합니다.
3) 비밀번호: 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.
4) 운영자: 회사가 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.
5) 구매안전서비스: 회사가 구매자의 결제대금의 보호를 위하여 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.
6) 안전거래센터: 회사 서비스 이용 중 거래의 안전과 관련하여 발생할 수 있는 제 문제를 조정하기 위한 기구를 말합니다.
7) 분쟁조정센터: 원칙적으로 회사를 통한 거래에 따른 분쟁은 판매자와 구매자 간의 자율적인 해결이 원칙이지만, 예외적으로 분쟁의 합리적이고 원활한 조정을 위하여 회사가 설치 및 운영하는 분쟁조정기구를 말합니다.
8) 제휴사 포인트 : 회사와 제휴관계가 있는 제3자가 제공하는 각종 포인트를 말합니다.
9) 아이템할인: 판매자가 회사의 서비스를 통하여 물품을 판매할 때 회사와의 합의에 따라 서비스이용료 범위 내에서 특정물품의 판매가격을 할인하는 것을 말합니다. 회사는 아이템할인으로 인한 특정물품 판매가격 할인액을 해당 서비스 화면에 게재합니다.
10) 에누리쿠폰(구매쿠폰): 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의(승인을 포함하며 이하 같다)가 있는 경우에 한하여 에누리쿠폰(구매쿠폰)이 적용된 물품판매거래를 중개할 수 있으며, 판매자의 동의가 없는 경우에는 당해 거래를 신속히 취소 처리합니다.
11) 바이어쿠폰: 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의 없이 회원에게 바이어쿠폰을 발행할 수 있습니다.

                                                </textarea>
                                </li>
                                <li>
                                    <input type="checkbox" id="agree3" name="agree" class="chk agree" required="">
                                    <label for="agree3">개인정보 수집 및 이용 <span class="text__importance">(필수)</span></label>
                                    <div class="card">
                                        <div class="card-header" id="heading-Three">
                                            <h5 class="card-title" style="font-size: small;">
                                                <a role="button" data-toggle="collapse" href="#collapse-Three" aria-expanded="true" aria-controls="collapse-1" style="font-size: smaller;">
                                                    개인정보 수집 및 이용 세부사항
                                                </a>
                                            </h5>
                                        </div><!-- End .card-header -->
                                        <div id="collapse-Three" class="collapse" aria-labelledby="heading-1" data-parent="#accordion-1">
                                            <div class="card-body">
                                                <textarea name="" id="" cols="95" rows="5" style="resize: none; border: 0px; font-size: x-small;">
제1장 총칙
제1조 (목적)
이 약관은 주식회사 솔로몬(이하 “회사”라 함)가 운영하는 “솔로몬” 인터넷 오픈마켓 사이트 (www.so1omon.co.kr, 이하 “솔로몬”이라 함)와 스마트폰 등 이동통신기기를 통해 제공되는 ‘솔로몬’ 모바일 애플리케이션(이하 “모바일솔로몬”이라고 합니다)을 통해서 제공하는 전자상거래 관련 서비스 및 기타 서비스 (이하 “서비스”라 함)를 이용하는 자간의 권리, 의무를 확정하고 이를 이행함으로써 상호 발전을 도모하는 것을 그 목적으로 합니다.

제2조(약관의 명시, 효력과 개정)
1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편주소 등)등과 함께 회원이 확인할 수 있도록 “솔로몬” 초기 서비스화면 또는 연결화면에 게시합니다.
2. 회사는 약관의규제에관한법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률, 전자금융거래법 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 초기화면에 그 적용일자 14일 이전부터 적용일자 전일까지 공지합니다.다만, 변경 내용이 중대하거나 구매회원에게 불리한 경우에는 그 적용일자 30일 이전부터 적용일자 전일까지 공지하고 구매회원에게 개별 통지합니다.변경된 약관은 그 적용일자 이전으로 소급하여 적용되지 아니합니다

제3조 (용어의 정의)
1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1) 회원: 회사에 개인정보를 제공하여 회원등록을 한 개인 또는 법인으로서, 다음과 같이 일반회원과 판매회원으로 구분이 됩니다.
① 일반회원(구매자): 회사에서 제공하는 구매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
② 판매회원(판매자): 회사에서 제공하는 구매서비스 및 판매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
2) 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 문자와 숫자의 조합을 말합니다.
3) 비밀번호: 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.
4) 운영자: 회사가 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.
5) 구매안전서비스: 회사가 구매자의 결제대금의 보호를 위하여 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.
6) 안전거래센터: 회사 서비스 이용 중 거래의 안전과 관련하여 발생할 수 있는 제 문제를 조정하기 위한 기구를 말합니다.
7) 분쟁조정센터: 원칙적으로 회사를 통한 거래에 따른 분쟁은 판매자와 구매자 간의 자율적인 해결이 원칙이지만, 예외적으로 분쟁의 합리적이고 원활한 조정을 위하여 회사가 설치 및 운영하는 분쟁조정기구를 말합니다.
8) 제휴사 포인트 : 회사와 제휴관계가 있는 제3자가 제공하는 각종 포인트를 말합니다.
9) 아이템할인: 판매자가 회사의 서비스를 통하여 물품을 판매할 때 회사와의 합의에 따라 서비스이용료 범위 내에서 특정물품의 판매가격을 할인하는 것을 말합니다. 회사는 아이템할인으로 인한 특정물품 판매가격 할인액을 해당 서비스 화면에 게재합니다.
10) 에누리쿠폰(구매쿠폰): 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의(승인을 포함하며 이하 같다)가 있는 경우에 한하여 에누리쿠폰(구매쿠폰)이 적용된 물품판매거래를 중개할 수 있으며, 판매자의 동의가 없는 경우에는 당해 거래를 신속히 취소 처리합니다.
11) 바이어쿠폰: 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의 없이 회원에게 바이어쿠폰을 발행할 수 있습니다.
                                                </textarea>
                                </li>
                                <li>
                                    <input type="checkbox" id="agree4" name="agree" class="chk agree" required="">
                                    <label for="agree4">만 14세 이상입니다 <span class="text__importance">(필수)</span></label>                            
                                </li>
                                <li style="display: none;">
                                    <input type="checkbox" id="g9_join_agr" name="g9_join_agr" class="chk agree">
                                    <label for="g9_join_agr">G9 구매회원 이용약관 <span class="text__importance">(선택)</span></label>
                                    <a href="javascript:openAgreement('https://www.g9.co.kr//Member/MemberShip/MemberShipAgreement');" class="btn_agreeview" aria-describedby="g9_join_agr">약관 전체보기</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="personal_info_third_party_support_agr" name="personal_info_third_party_support_agr" class="chk agree">
                                    <label for="personal_info_third_party_support_agr">개인정보 제3자 제공동의 <span class="text__importance">(선택)</span></label>
                                    <div class="card">
                                        <div class="card-header" id="heading-Four">
                                            <h5 class="card-title" style="font-size: small;">
                                                <a role="button" data-toggle="collapse" href="#collapse-Four" aria-expanded="true" aria-controls="collapse-Four" style="font-size: smaller;">
                                                    개인정보 제3자 제공동의 세부사항
                                                </a>
                                            </h5>
                                        </div><!-- End .card-header -->
                                        <div id="collapse-Four" class="collapse" aria-labelledby="heading-Four" data-parent="#accordion-1">
                                            <div class="card-body">
                                                <textarea name="" id="" cols="95" rows="5" style="resize: none; border: 0px; font-size: x-small;">
제1장 총칙
제1조 (목적)
이 약관은 주식회사 솔로몬(이하 “회사”라 함)가 운영하는 “솔로몬” 인터넷 오픈마켓 사이트 (www.so1omon.co.kr, 이하 “솔로몬”이라 함)와 스마트폰 등 이동통신기기를 통해 제공되는 ‘솔로몬’ 모바일 애플리케이션(이하 “모바일솔로몬”이라고 합니다)을 통해서 제공하는 전자상거래 관련 서비스 및 기타 서비스 (이하 “서비스”라 함)를 이용하는 자간의 권리, 의무를 확정하고 이를 이행함으로써 상호 발전을 도모하는 것을 그 목적으로 합니다.

제2조(약관의 명시, 효력과 개정)
1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편주소 등)등과 함께 회원이 확인할 수 있도록 “솔로몬” 초기 서비스화면 또는 연결화면에 게시합니다.
2. 회사는 약관의규제에관한법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률, 전자금융거래법 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 초기화면에 그 적용일자 14일 이전부터 적용일자 전일까지 공지합니다.다만, 변경 내용이 중대하거나 구매회원에게 불리한 경우에는 그 적용일자 30일 이전부터 적용일자 전일까지 공지하고 구매회원에게 개별 통지합니다.변경된 약관은 그 적용일자 이전으로 소급하여 적용되지 아니합니다

제3조 (용어의 정의)
1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1) 회원: 회사에 개인정보를 제공하여 회원등록을 한 개인 또는 법인으로서, 다음과 같이 일반회원과 판매회원으로 구분이 됩니다.
① 일반회원(구매자): 회사에서 제공하는 구매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
② 판매회원(판매자): 회사에서 제공하는 구매서비스 및 판매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
2) 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 문자와 숫자의 조합을 말합니다.
3) 비밀번호: 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.
4) 운영자: 회사가 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.
5) 구매안전서비스: 회사가 구매자의 결제대금의 보호를 위하여 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.
6) 안전거래센터: 회사 서비스 이용 중 거래의 안전과 관련하여 발생할 수 있는 제 문제를 조정하기 위한 기구를 말합니다.
7) 분쟁조정센터: 원칙적으로 회사를 통한 거래에 따른 분쟁은 판매자와 구매자 간의 자율적인 해결이 원칙이지만, 예외적으로 분쟁의 합리적이고 원활한 조정을 위하여 회사가 설치 및 운영하는 분쟁조정기구를 말합니다.
8) 제휴사 포인트 : 회사와 제휴관계가 있는 제3자가 제공하는 각종 포인트를 말합니다.
9) 아이템할인: 판매자가 회사의 서비스를 통하여 물품을 판매할 때 회사와의 합의에 따라 서비스이용료 범위 내에서 특정물품의 판매가격을 할인하는 것을 말합니다. 회사는 아이템할인으로 인한 특정물품 판매가격 할인액을 해당 서비스 화면에 게재합니다.
10) 에누리쿠폰(구매쿠폰): 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의(승인을 포함하며 이하 같다)가 있는 경우에 한하여 에누리쿠폰(구매쿠폰)이 적용된 물품판매거래를 중개할 수 있으며, 판매자의 동의가 없는 경우에는 당해 거래를 신속히 취소 처리합니다.
11) 바이어쿠폰: 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의 없이 회원에게 바이어쿠폰을 발행할 수 있습니다.

                                                </textarea>
                                </li>
                                <li>
                                    <input type="checkbox" id="personal_info_collect_use_agr" name="personal_info_collect_use_agr" class="chk agree">
                                    <label for="personal_info_collect_use_agr">개인정보 수집 및 이용 <span class="text__importance">(선택)</span></label>
                                    
                                    <div class="card">
                                        <div class="card-header" id="heading-Five">
                                            <h5 class="card-title" style="font-size: small;">
                                                <a role="button" data-toggle="collapse" href="#collapse-Five" aria-expanded="true" aria-controls="collapse-Five" style="font-size: smaller;">
                                                    개인정보 수집 및 이용 세부 내용
                                                </a>
                                            </h5>
                                        </div><!-- End .card-header -->
                                        <div id="collapse-Five" class="collapse" aria-labelledby="heading-Five" data-parent="#accordion-1">
                                            <div class="card-body">
                                                <textarea name="" id="" cols="95" rows="5" style="resize: none; border: 0px; font-size: x-small;">
제1장 총칙
제1조 (목적)
이 약관은 주식회사 솔로몬(이하 “회사”라 함)가 운영하는 “솔로몬” 인터넷 오픈마켓 사이트 (www.so1omon.co.kr, 이하 “솔로몬”이라 함)와 스마트폰 등 이동통신기기를 통해 제공되는 ‘솔로몬’ 모바일 애플리케이션(이하 “모바일솔로몬”이라고 합니다)을 통해서 제공하는 전자상거래 관련 서비스 및 기타 서비스 (이하 “서비스”라 함)를 이용하는 자간의 권리, 의무를 확정하고 이를 이행함으로써 상호 발전을 도모하는 것을 그 목적으로 합니다.

제2조(약관의 명시, 효력과 개정)
1. 회사는 이 약관의 내용을 회사의 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편주소 등)등과 함께 회원이 확인할 수 있도록 “솔로몬” 초기 서비스화면 또는 연결화면에 게시합니다.
2. 회사는 약관의규제에관한법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망이용촉진및정보보호등에관한법률, 전자상거래등에서의소비자보호에관한법률, 전자금융거래법 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
3. 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 초기화면에 그 적용일자 14일 이전부터 적용일자 전일까지 공지합니다.다만, 변경 내용이 중대하거나 구매회원에게 불리한 경우에는 그 적용일자 30일 이전부터 적용일자 전일까지 공지하고 구매회원에게 개별 통지합니다.변경된 약관은 그 적용일자 이전으로 소급하여 적용되지 아니합니다

제3조 (용어의 정의)
1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1) 회원: 회사에 개인정보를 제공하여 회원등록을 한 개인 또는 법인으로서, 다음과 같이 일반회원과 판매회원으로 구분이 됩니다.
① 일반회원(구매자): 회사에서 제공하는 구매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
② 판매회원(판매자): 회사에서 제공하는 구매서비스 및 판매서비스를 이용할 수 있는 14세 이상의 개인이나 법인
2) 아이디(ID): 회원의 식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 문자와 숫자의 조합을 말합니다.
3) 비밀번호: 회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.
4) 운영자: 회사가 제공하는 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 자를 말합니다.
5) 구매안전서비스: 회사가 구매자의 결제대금의 보호를 위하여 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.
6) 안전거래센터: 회사 서비스 이용 중 거래의 안전과 관련하여 발생할 수 있는 제 문제를 조정하기 위한 기구를 말합니다.
7) 분쟁조정센터: 원칙적으로 회사를 통한 거래에 따른 분쟁은 판매자와 구매자 간의 자율적인 해결이 원칙이지만, 예외적으로 분쟁의 합리적이고 원활한 조정을 위하여 회사가 설치 및 운영하는 분쟁조정기구를 말합니다.
8) 제휴사 포인트 : 회사와 제휴관계가 있는 제3자가 제공하는 각종 포인트를 말합니다.
9) 아이템할인: 판매자가 회사의 서비스를 통하여 물품을 판매할 때 회사와의 합의에 따라 서비스이용료 범위 내에서 특정물품의 판매가격을 할인하는 것을 말합니다. 회사는 아이템할인으로 인한 특정물품 판매가격 할인액을 해당 서비스 화면에 게재합니다.
10) 에누리쿠폰(구매쿠폰): 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의(승인을 포함하며 이하 같다)가 있는 경우에 한하여 에누리쿠폰(구매쿠폰)이 적용된 물품판매거래를 중개할 수 있으며, 판매자의 동의가 없는 경우에는 당해 거래를 신속히 취소 처리합니다.
11) 바이어쿠폰: 회원이 회사의 서비스를 통하여 물품을 구매할 때 표시된 금액 또는 비율만큼 물품대금에서 할인 받을 수 있는 회사 전용의 사이버 또는 오프라인 쿠폰을 말합니다. 회사는 판매자의 동의 없이 회원에게 바이어쿠폰을 발행할 수 있습니다.



                                                </textarea>
                                </li>
                                <li>
                                    <input type="checkbox" id="push_agree_yn" name="push_agree_yn" class="chk agree">
                                    <label for="push_agree_yn">혜택 알림 이메일, 문자, 앱 푸시 <span class="text__importance">(선택)</span></label>
                                </li>
                            </ul>
                            <hr style="margin: 0px;">
                            <br>
                            <div class="btns" align="center">
                                <a href="#" onclick="history.back()" class="btn btn-primary btn-rounded">처음으로</a>
                                <button id="enrollBtn" type="submit" class="btn btn-success" disabled>다음으로</button>
                            </div>

                            <script>
                                $(()=>{
                                	console.log("??왜안되니?");
                                    // "Agree to All" 체크박스 동작
                                    $("#agree_all").change(function(){
                                        if(this.checked){
                                            $(".agree").prop("checked", true);
                                        } else {
                                            $(".agree").prop("checked", false);
                                        }
                                        checkRequiredAndEnableNext();
                                    });

                                    // 개별 필수 항목 체크박스 동작
                                    $(".agree").change(function() {
                                        checkRequiredAndEnableNext();
                                    });

                                    // 모든 필수 항목들이 체크되었는지 확인하고, 그에 따라 "다음" 버튼의 상태를 변경
                                    function checkRequiredAndEnableNext() {
                                        let allRequiredChecked = true;
                                        
                                        $("input.agree[required]").each(function() {
                                            if (!$(this).prop("checked")) {
                                                allRequiredChecked = false;
                                                return false; // jQuery each loop 중단
                                            }
                                        });

                                        if (allRequiredChecked) {
                                            $("#enrollBtn").prop("disabled", false);
                                        } else {
                                            $("#enrollBtn").prop("disabled", true);
                                        }
                                    }
                                });
                            </script>

                        </div>
            		</div><!-- End .form-box -->
            	</div><!-- End .container -->
            </div><!-- End .login-page section-bg -->
        </main><!-- End .main -->
    </div><!-- End .page-wrapper -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>