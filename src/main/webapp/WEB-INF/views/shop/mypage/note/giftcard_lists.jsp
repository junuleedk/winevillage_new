<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 나의 기프트카드</title>
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
<section id="contents">
<div class="lnb mypage_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>나의 기프트카드</span></button>
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
	<div class="common_lnb giftcard_lnb">
		<div class="my">
			<div class="txt">
				<div class="img gold grade_info g100">
					<span>실버</span>
				</div>
				<p>
					<strong class="name">고객</strong>님
				</p>
			</div>
			<div class="btn_area">
				<button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
				<!-- <span>시음노트 작성하면 등급 UP</span> -->
			</div>
		</div>
		<div class="my_class_info">
			<ul class="">
				<li class="">
					<p class="tit">총 보유 금액</p>
					<div class="num_box">
						<span>0</span>
					</div>
				</li>
				<li class="">
					<p class="tit">구입한 금액</p>
					<div class="num_box">
						<span>0</span>
					</div>
				</li>
				<li class="">
					<p class="tit">선물한 금액</p>
					<div class="num_box">
						<span>0</span>
					</div>
				</li>
				<li class="">
					<p class="tit">선물받은 금액</p>
					<div class="num_box">
						<span>0</span>
					</div>
				</li>
			</ul>
		</div>
	</div>
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
					<li class="on"><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
					<!-- <li ><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
					<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
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
<div class="content mypage note giftcard_page giftcard_lists_page top_gap">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">나의 기프트카드</h2>
				<a href="/shop/mypage/note/giftcard_order" class="btn_txt btn_black">구입하기</a>
			</div>
			<form action="https://www.winenara.com/shop/mypage/note/giftcard_lists" id="giftcardPinForm" name="giftcardPinForm" method="post" accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token" value="a614e607633aa7ccb70f8276a7eddfef"/>
				<div class="gift_input_box">
					<input type="text" id="pin_number" name="pin_number" placeholder="핀번호를 입력해주세요.">
					<button type="button" class="btn_txt btn_dgray" onclick="Reg_Submit();">핀번호 등록</button>
				</div>
			</form>
			<!-- <div class="gift_price">
					<ul>
						<li><p>총 보유 금액<strong class="price">0</strong></p></li>
						<li><p>구매한 금액<strong class="price">0</strong></p></li>
						<li><p>선물한 금액<strong class="price">0</strong></p></li>
						<li><p>선물받은 금액<strong class="price">0</strong></p></li>
					</ul>
				</div> -->
		</div>
		<div class="tab_area my_gift">
			<ul class="js_tabBtn tab3">
				<li class="on"><button type="button" onclick="location.href='/shop/mypage/note/giftcard_lists'"><span>구매하기 내역</span></button></li>
				<li><button type="button" onclick="location.href='/shop/mypage/note/giftcard_give_lists'"><span>선물하기 내역</span></button></li>
				<li><button type="button" onclick="location.href='/shop/mypage/note/giftcard_receive_lists'"><span>받은 기프트카드</span></button></li>
			</ul>
			<div class="js_tabCon on">
				<ul class="list">
					<!-- https://chatgpt.com/c/671a290f-3388-8002-a9a5-fa79960ec630 -->
					<!-- <li> -->
						<!-- <div class="category box">
							<p>구매</p>
						</div> -->
						<!-- <div class="info"> -->
							<!-- <p class="tit"> -->
								<!-- <span>[주문번호 1234567890]</span> -->
								<!-- <span>기프트카드 이름</span> -->
								<!-- <span class="type">카카오</span> -->
								<!-- 재발송 버튼이 있을 경우 -->
								<!--
								<a href="#" class="btn_send">
									<span>재발송하기</span>
								</a>
								-->
							<!-- </p> -->
							<!-- <p class="txt">
								<span>2023-10-24 12:34</span>
								<span>결제완료</span>
							</p> -->
						<!-- </div> -->
						<!-- <div class="price_box">
							<p class="price">50,000원</p>
						</div> -->
					<!-- </li> -->
					<li id="nodata">구매내역이 없습니다.</li>
				</ul>
				<div class="total">
					<p class="total_txt">총 구입금액</p>
					<p class="total_price">0원</p>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<!-- page_script -->
<script>
	function Reg_Submit() {
		if($("#pin_number").val() == ""){
			alert("핀번호를 입력해주세요.");
			return;
		}
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url : "/shop/mypage/note/giftcard_pin_proc",
			data	: $("#giftcardPinForm").serialize(),
			dataType : 'json',
			async: false,
			success : function (res) {
				alert(res.msg);
				if( $.trim(res.status) == "ok"){
					location.reload();
				}
			},
			error: function (res) {
				alert("핀번호 조회시 에러가 발생하였습니다.");
				alert(res.responseText);
			}
		});
	}
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