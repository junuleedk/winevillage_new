<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 회원가입 </title>
<%@ include file="../../common/common.jsp" %>
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
<%@ include file="../../common/header.jsp" %>
<!-- //header -->
<%@ include file="../../common/layer.jsp" %>
<%@ include file="../../common/script.jsp" %>

<!-- contents -->
<section id="contents">
<div class="lnb member_lnb lnb_wrap step_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>회원가입</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/member/join/law_agreement">약관동의 및 소셜인증</a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>회원가입</span></h2>
			<ul>
				<li class="">1. 이용약관 동의</li>
				<li class="">2. 회원정보 입력</li>
				<li class="">3. 회원가입 완료</li>
			</ul>
		</div>
	</div>
</div>
<div class="wrap">
	<div class="content member join join_ok_page ok_page">
		<div class="inner">
			<div class="ok_area">
				<img src="../../../asset/images/shop/member/join_ok.png" alt="회원가입 완료">
				<p class="tit">와인나라의 진심에 공감해주신 <br class="pc_hidden">고객님을 환영합니다.</p>
				<!-- <p class="txt">와인나라가 준비한 이벤트에 신청해보세요.<br>가입 후 3일 이내에 신청시 인기상품을 100원에 드려요.</p> -->
				<div class="btn_area col2">
					<!-- <a href="/shop/event/event_lists" class="btn_txt">이벤트 바로가기</a> -->
					<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/product/product_lists?sh_category1_cd=10000'" style="float:none;display:inline-block;">쇼핑하러가기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- page_script -->
<script>
</script>
<!-- //page_script -->
</section>
<!-- //contents -->

<!-- footer -->
<%@ include file="../../common/footer.jsp" %>
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
	var page = 'join_ok';
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