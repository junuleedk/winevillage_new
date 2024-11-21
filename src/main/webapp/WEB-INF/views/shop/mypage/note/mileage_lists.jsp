<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 나의 마일리지</title>
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

<sec:authorize access="!isAuthenticated()">
<!-- header -->
<%@ include file="../../common/header.jsp" %>
<!-- //header -->
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<!-- header - 로그인 상태 -->
<%@ include file="../../common/header_loggedin.jsp" %>
<!-- //header - 로그인 상태 -->
</sec:authorize>
<%@ include file="../../common/layer.jsp" %>
<%@ include file="../../common/script.jsp" %>

<!-- contents -->
<section id="contents" style="margin-top: 188px;">
<div class="lnb mypage_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>나의 마일리지</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
				<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
				<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
				<!-- <li><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li> -->
				<!-- <li><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
				<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
				<!-- <li><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
				<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
				<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
				<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천</a></li>
				<!-- <li><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
				<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
				<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
				<li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
				<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
				<li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
				<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
			</ul>
		</div>
	</div>
	<%@ include file="mileage_lists/mileage_lnb.jsp" %>
	<div class="mypage_link mb_hidden">
		<ul class="depth_01">
			<li>
				<a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
					<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
					<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
					<li><a href="/shop/cart/cart_lists">장바구니</a></li>
					<!-- <li ><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
						<li ><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
				</ul>
			</li>
			<li>
				<a href="#none">쇼핑수첩</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
					<!-- <li ><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
					<li class="on"><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
					<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">나의 활동</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천신청</a></li>
					<!-- <li ><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
					<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">개인정보</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
					<li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
					<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
					<li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
					<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>
<script>
// $(".mypage_lnb .common_lnb").remove();
function myPublic(){
	var follower_yn = $("#follower_yn").val();
	if( follower_yn === 'Y'){
		follower_yn = 'N';
	}else{
		follower_yn = 'Y';
	}
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'					: "FYN",
			'follower_yn'			: follower_yn
		},
		success : function(result){
			location.reload();
		},
		error : function(a, b, c){
			alert('변경중 에러가 발생했습니다.');
		}
	});
}
</script>
<%@ include file="mileage_lists/mileage_lists_page.jsp" %>
<script>
</script>
<!-- //page_script -->
<input type="hidden" id="page" value="1">
<script>
var list_gb = "plus_list";
$(".js_tab > ul > li > button").on("click",function() {
	list_gb = $(this).attr("data-val");
	get_mlg_list();
});
$(document).ready(function(){
	DatePeriod.GetDate(10, 'date_s', 'date_e');
	get_mlg_list();
})
//스크롤 바닥 감지
window.addEventListener('scroll', moreShowList);
function moreShowList() {
//  if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
	if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
		get_mlg_list('more');
	}
}
var page = 1;
function get_mlg_list(mode){
	//Csrf.Set(_CSRF_NAME_);
	if(mode == 'more'){
		page = $('#page').val();
		page++;
		$('#page').val(page);
	} else {
		page = 1;
	}
	$.ajax({
		url : '/shop/mypage/note/mileage_erp_lists_ajax',
		type : 'post',
		data : {'page':page, "list_gb":list_gb , "sh_s_date" : $("#date_s").val(), "sh_e_date" : $("#date_e").val() },
		success:function(res){
			if($.trim(res) == ""){
				if(mode == 'more'){
					// alert("마지막 페이지입니다.");
					window.removeEventListener('scroll', moreShowList);
				} else {
					if(list_gb == 'minus_list') {
						$('.mypage_use_lists').html("<li class='nodata'>내역이 없습니다.</li>");
					} else {
						$('.mypage_lists').html("<li class='nodata'>내역이 없습니다.</li>");
					}
				}
			} else{
				if(mode == 'more'){
					console.log(res);
					if(list_gb == 'minus_list') {
						$('.mypage_use_lists').append(res);
					} else {
						$('.mypage_lists').append(res);
					}
				}else{
					if(list_gb == 'minus_list') {
						$('.mypage_use_lists').html(res);
					} else {
						$('.mypage_lists').html(res);
					}
				}
			}
		},error:function(res){
			console.log(res);
		}
	});
}
</script>
<!-- page_script -->
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
	var page = 'giftcard_lists';
	if( page == false){
		page = 'main';
	}
	if( page !== 'product_view' && page !== 'order_ok'){
		console.log(page);
		/*
		RC_Method({
			sign_up_data: "2024-04-10 22:25:14",
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