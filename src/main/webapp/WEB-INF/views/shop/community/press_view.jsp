<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ Press</title>
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

<sec:authorize access="!isAuthenticated()">
<!-- header -->
<%@ include file="../common/header.jsp" %>
<!-- //header -->
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<!-- header - 로그인 상태 -->
<%@ include file="../common/header_loggedin.jsp" %>
<!-- //header - 로그인 상태 -->
</sec:authorize>
<%@ include file="../common/layer.jsp" %>
<%@ include file="../common/script.jsp" %>

<!-- contents -->
<section id="contents">
<div class="lnb comm_lnb bg_lnb company_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>Press</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/company/about_us.do">Winenara</a></li>
				<li><a href="/shop/company/brand.do">Brands</a></li>
				<li><a href="/shop/company/store.do">Shop</a></li>
				<!-- <li><a href="/shop/company/fnb">F&B</a></li> -->
				<li><a href="/shop/community/press_lists.do">Press</a></li>
				<li><a href="/shop/company/member_benefit.do">Membership</a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>Press</span></h2>
		</div>
		<ul class="menu">
			<li><a href="/shop/company/about_us.do"><span>Winenara</span></a></li>
			<li><a href="/shop/company/brand.do"><span>Brands</span></a></li>
			<li><a href="/shop/company/store.do"><span>Shop</span></a></li>
			<!-- <li><a href="/shop/company/fnb"><span>F&B</span></a></li> -->
			<li class="on"><a href="/shop/community/press_lists.do"><span>Press</span></a></li>
			<li><a href="/shop/company/member_benefit.do"><span>Membership</span></a></li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content community press_view_page">
		<div class="inner view_page_wrap">
			<div class="view_tit_wrap">
				<h3 class="tit">${press.title}</h3>
				<i class="date"><fmt:formatDate value="${press.register_date}" pattern="yyyy-MM-dd"/></i>
			</div>
			<div class="btn_box">
				<button type="button" class="share_btn" onclick="$('.share_box').show()">공유하기</button>
				<div class="share_box">
					<a href="#none" class="facebook">facebook</a>
					<a href="#none" class="twitter">twitter</a>
					<a href="#none" class="url">URL</a>
					<button type="button" class="hide_btn" onclick="$('.share_box').hide()"></button>
				</div>
			</div>
			<div class="view_content">
				<div class="con">
					<div class="img">
						<img src="/uploads/press/${press.img}" alt="">
					</div>
					<span>
					${press.description}
					</span>
				</div>
				<c:if test="${not empty press.related_product}">
				<%@ include file="press/n_prd_list.jsp" %>
				</c:if>
				<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/community/press_lists.do'"><span>목록</span></button>
			</div>
		</div>
		<!--//inner-->
	</div>
	<!--//community press_view_page-->
</div>
<script>
</script>
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
	var page = 'press_lists';
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