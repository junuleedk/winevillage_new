<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 나의 쿠폰</title>
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
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>나의 쿠폰</span></button>
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
	<div class="common_lnb item3">
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
			<ul class="col3">
				<li class="">
					<p class="tit">총 쿠폰 발행 수</p>
					<div class="num_box">
						<span>7</span>
					</div>
				</li>
				<li class="">
					<p class="tit">사용 쿠폰 수</p>
					<div class="num_box">
						<span>6</span>
					</div>
				</li>
				<li class="">
					<p class="tit">가용 쿠폰 수</p>
					<div class="num_box">
						<span>1</span>
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
					<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
					<!-- <li ><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
					<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
					<li class="on"><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
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
<div class="content mypage note coupon_lists_page top_gap">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">나의 쿠폰</h2>
			</div>
			<!-- <div class="gift_price gift_price_type2">
					<ul>
						<li><p>총 쿠폰 발행 수<strong class="price">7</strong></p></li>
						<li><p>사용 쿠폰 수<strong class="price">6</strong></p></li>
						<li><p>가용  쿠폰 수<strong class="price">1</strong></p></li>
					</ul>
				</div> -->
		</div>
		<div class="write_box">
			<form action="https://www.winenara.com/shop/mypage/note/coupon_lists" id="couponForm" name="couponForm" method="post" accept-charset="utf-8">
				<input type="hidden" name="witplus_csrf_token" value="2f8bd261ca7f9a337afb9f673cc8b114"/>
				<div class="ip_box">
					<input type="text" name="coupon_number" id="coupon_number" title="쿠폰번호 입력란" placeholder="쿠폰번호를 입력해주세요">
					<button type="button" onclick="Reg_Submit();" class="btn_txt btn_black">쿠폰등록</button>
				</div>
			</form>
		</div>
		<div class="coupon_list">
			<ul>
				<li>
					<div class="box img mb_hidden">
						<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
					</div>
					<div class="box">
						<em>실버회원 1만원 감사쿠폰</em>
						할인율/할인금액 : 10,000원<br>
						 최소 주문금액 : 50,000원<br>
						 2024-10-01 ~ 2024-10-31
					</div>
					<div class="box status">사용가능</div>
				</li>
				<li class="use">
					<div class="box img mb_hidden">
						<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
					</div>
					<div class="box">
						<em>실버회원 1만원 감사쿠폰</em>
						할인율/할인금액 : 10,000원<br>
						 최소 주문금액 : 50,000원<br>
						 2024-09-01 ~ 2024-09-30
					</div>
					<div class="box status">기간만료</div>
				</li>
				<li class="use">
					<div class="box img mb_hidden">
						<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
					</div>
					<div class="box">
						<em>실버회원 1만원 감사쿠폰</em>
						할인율/할인금액 : 10,000원<br>
						 최소 주문금액 : 50,000원<br>
						 2024-08-01 ~ 2024-08-31
					</div>
					<div class="box status">기간만료</div>
				</li>
				<li class="use">
					<div class="box img mb_hidden">
						<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
					</div>
					<div class="box">
						<em>실버회원 1만원 감사쿠폰</em>
						할인율/할인금액 : 10,000원<br>
						 최소 주문금액 : 50,000원<br>
						 2024-07-01 ~ 2024-07-31
					</div>
					<div class="box status">기간만료</div>
				</li>
				<li class="use">
					<div class="box img mb_hidden">
						<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
					</div>
					<div class="box">
						<em>실버회원 1만원 감사쿠폰</em>
						할인율/할인금액 : 10,000원<br>
						 최소 주문금액 : 50,000원<br>
						 2024-06-01 ~ 2024-06-30
					</div>
					<div class="box status">기간만료</div>
				</li>
				<li class="use">
					<div class="box img mb_hidden">
						<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
					</div>
					<div class="box">
						<em>실버회원 1만원 감사쿠폰</em>
						할인율/할인금액 : 10,000원<br>
						 최소 주문금액 : 50,000원<br>
						 2024-05-01 ~ 2024-05-31
					</div>
					<div class="box status">기간만료</div>
				</li>
				<li class="use">
					<div class="box img mb_hidden">
						<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
					</div>
					<div class="box">
						<em>신규회원 가입 감사쿠폰</em>
						할인율/할인금액 : 5,000원<br>
						 최소 주문금액 : 50,000원<br>
						 2024-04-10 ~ 2024-07-09
					</div>
					<div class="box status">기간만료</div>
				</li>
				<!--  <li>
						<div class="box img mb_hidden">
							<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
						</div>
						<div class="box">
							<em>슈퍼위크 20% 할인쿠폰 (5만원이상 구매시)</em>
							2020.10.01 ~ 2020.10.31
						</div>
						<div class="box status">
							사용가능
						</div>
					</li>
					<li class="use">
						<div class="box img mb_hidden">
							<img src="/asset/images/shop/mypage/ico_coupon_01.png" alt="">
						</div>
						<div class="box">
							<em>생일기념 (3% 할인)</em>
							2020.10.01 ~ 2020.10.31
						</div>
						<div class="box status">
							사용완료
						</div>
					</li>
					<li class="use">
						<div class="box img mb_hidden">
							<img src="/asset/images/shop/mypage/ico_coupon_default.png" alt="">
						</div>
						<div class="box">
							<em>슈퍼위크 10% 할인쿠폰 (3만원이상 구매시)</em>
							2020.10.01 ~ 2020.10.31
						</div>
						<div class="box status">
							사용완료
						</div>
					</li> -->
			</ul>
		</div>
		<div class="ntc_box">
			 - 쿠폰 당 1개의 상품에 1회 사용하실 수 있습니다.<br>
			 - 쿠폰마다 사용기한이 있으므로 기간 내에 사용해 주시기 바랍니다.<br>
			 - 주문이 입금 완료 된 이후에는 쿠폰을 사용하실 수 없습니다. 주문 시 꼭 쿠폰 적용을 선택하세요.<br>
			 - 행사할인상품은 쿠폰사용이 제한됩니다.
		</div>
	</div>
</div>
</div>
<script>
function Reg_Submit() {
	if($("#coupon_number").val() == ""){
		alert("쿠폰번호를 입력해주세요.");
		return;
	}
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url : "/shop/mypage/note/coupon_proc",
		data 	: $("#couponForm").serialize(),
		dataType : 'json',
		async: false,
		success	: function (res) {
			alert(res.msg);
			if( $.trim(res.status) == "ok"){
				location.reload();
			}
		},
		error: function (res) {
			alert("쿠폰 조회시 에러가 발생하였습니다.");
			alert(res.responseText);
		}
	});
}
</script>
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