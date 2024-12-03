<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="pc_hidden">
	<a href="javascript:history.go(-1);" class="prev">이전</a>
	<div class="select_brand js_select" id="select_brand">
		<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')">
			<c:if test="${mypage_lnb == 'wish_lists'}"><span>위시리스트</span></c:if>
			<c:if test="${mypage_lnb == 'mileage_lists'}"><span>나의 마일리지</span></c:if>
			<c:if test="${mypage_lnb == 'coupon_lists'}"><span>나의 쿠폰</span></c:if>
		</button>
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