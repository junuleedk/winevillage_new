<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ Membership</title>
<%@ include file="../common/common.jsp" %>
</head>
<body>
<!-- skip_menu -->
<div class="skip_menu" id="skip_menu">
	<ul>
		<li><a href="#header">메인메뉴 바로가기</a></li>
		<li><a href="#contents">본문 바로가기</a></li>
		<li><a href="#footer">하단메뉴 바로가기</a></li>
	</ul>
</div>
<!-- //skip_menu -->

<!-- header -->
<sec:authorize access="!isAuthenticated()">
<%@ include file="../common/header.jsp" %>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<%@ include file="../common/header_loggedin.jsp" %>
</sec:authorize>
<!-- //header -->
<%@ include file="../common/layer.jsp" %>
<%@ include file="../common/script.jsp" %>

<!-- contents -->
<section id="contents" style="margin-top: 188px;">
    <div class="lnb comm_lnb bg_lnb company_lnb lnb_wrap">
        <div class="pc_hidden">
            <a href="javascript:history.go(-1);" class="prev">이전</a>
            <div class="select_brand js_select" id="select_brand">
                <button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>Membership</span></button>
                <ul class="mb_lnb_lists">
                    <li><a href="/shop/company/about_us">Winenara</a></li>
                    <li><a href="/shop/company/brand">Brands</a></li>
                    <li><a href="/shop/company/store">Shop</a></li>
                    <li><a href="/shop/company/fnb">F&amp;B</a></li>
                    <li><a href="/shop/community/press_lists">Press</a></li>
                </ul>
            </div>
        </div>
        <div class="pc_lnb mb_hidden">
            <div class="page_tit">
                <h2><span>Membership</span></h2>
            </div>
            <ul class="menu">
                <li><a href="/shop/company/about_us"><span>Winenara</span></a></li>
                <li><a href="/shop/company/brand"><span>Brands</span></a></li>
                <li><a href="/shop/company/store"><span>Shop</span></a></li>
                <li><a href="/shop/company/fnb"><span>F&amp;B</span></a></li>
                <li><a href="/shop/community/press_lists"><span>Press</span></a></li>
                <li class="on"><a href="/shop/company/member_benefit"><span>Membership</span></a></li>
            </ul>
        </div>
    </div>
    <div class="wrap">
        <div class="content cs member_benefit_page">
            <div class="inner">
                <ul class="benefit_top">
                    <li class="silver"><p>Silver</p><span>실버</span></li>
                    <li class="gold"><p>Gold</p><span>골드</span></li>
                    <li class="diamond"><p>Diamond</p><span>다이아몬드</span></li>
                    <li class="trinity"><p>Trinity</p><span>트리니티</span></li>
                </ul>
                <table class="benefit_table">
	                <colgroup>
		                <col class="col01">
		                <col class="col02">
		                <col class="col03">
		                <col class="col04">
		                <col class="col05">
	                </colgroup>
	                <thead>
		                <tr>
		                    <th class="t_tit">회원등급</th>
		                    <td>실버</td>
		                    <td>골드</td>
		                    <td>다이아몬드</td>
		                    <td>트리니티</td>
		                </tr>
	                </thead>
	                <tbody>
		                <tr>
		                    <th class="t_tit">등급조건</th>
		                    <td>일반회원</td>
		                    <td>200만원 <br class="pc_hidden">이상구매</td>
		                    <td>500만원 <br class="pc_hidden">이상구매</td>
		                    <td>1000만원 <br class="pc_hidden">이상구매</td>
		                </tr>
		                <tr>
		                    <th class="t_tit">마일리지 <br class="pc_hidden">적립률</th>
		                    <td>1%</td>
		                    <td>1.5%</td>
		                    <td>2%</td>
		                    <td>3%</td>
		                </tr>
		                <tr>
		                    <th class="t_tit">등급별 <br class="pc_hidden">쿠폰</th>
		                    <td>1만원 <br class="pc_hidden">감사쿠폰</td>
		                    <td>2만원 <br class="pc_hidden">감사쿠폰</td>
		                    <td>3만원 <br class="pc_hidden">감사쿠폰</td>
		                    <td>5만원 <br class="pc_hidden">감사쿠폰</td>
		                </tr>
		                <tr>
		                    <th class="t_tit">생일축하 <br class="pc_hidden">쿠폰</th>
		                    <td colspan="4">10% 할인쿠폰</td>
		                </tr>
		                <tr>
		                    <th class="t_tit">공통혜택</th>
		                    <td colspan="4">
		                        멤버십 가입시 F&amp;B 매장 음식 메뉴 10% 할인<br>
		                        (사브서울, 무드서울, 모와, 르몽뒤뱅, 클럽코라빈)
		                    </td>
		                </tr>
	                </tbody>
                </table>
                <p class="benefit_ntc">
                    <span>등급별 쿠폰은 당해년도 구매실적 달성시, 달성월 익월에 지급되고, 해당 월에 사용하셔야 합니다. </span>
                    <span>실버~다이아몬드 등급의 감사 쿠폰은 5만원 이상 구매시 사용 가능하며, 트리니티 등급의 감사 쿠폰은 10만원 이상 구매시 사용 가능합니다. <br>
                    (구매잔액 발생시 소멸됩니다.)</span>
                    <span>생일 축하쿠폰은 5만원 이상 구매시 사용가능하며, 3개월안에 사용하셔야 합니다.</span>
                    <span>쿠폰은 중복사용이 불가합니다.</span>
                    <span>행사할인이 적용되는 품목은 쿠폰을 포함한 중복 할인 혜택 적용이 불가합니다.마일리지는 기존과 동일하게 적립됩니다. </span>
                </p>
            </div>
            <!--//inner-->
        </div>
        <!--//cs special_page-->
    </div>
</section>
<!-- //contents -->

<!-- footer -->
<%@ include file="../common/footer.jsp" %>
<!-- //footer -->
<script language=javascript>
    $(".quick_menu .menu_open").on("click", function () {
        $(".quick_menu").toggleClass("on")
    });
</script>
</body>
</html>
<!--백로그 API-->
<script type="text/JavaScript">
	var page = '';
	if( page == false){
		page = 'main';
	}
	if( page !== 'product_view' && page !== 'order_ok'){
		console.log(page);
		/*
		RC_Method({
			sign_up_data: "",
			page_type : page, 
			behavior:"page_view"
		});
		*/
	}
</script>
<!--백로그 API-->
<!--lazy_loading-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
<script>
	const observer = lozad();
	observer.observe();
	console.log('test');
</script>
<!--lazy_loading-->