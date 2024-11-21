<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
    // memberId와 memberName은 @ModelAttribute를 통해 설정된 속성
    String memberId = (String) request.getAttribute("memberId");
    String memberName = (String) request.getAttribute("memberName");
    int memberPoints = (Integer) request.getAttribute("memberPoints");
    Integer memberCartCount = (Integer) request.getAttribute("memberCartCount");
    Integer memberWishCount = (Integer) request.getAttribute("memberWishCount");
    Integer memberCouponCount = (Integer) request.getAttribute("memberCouponCount");
%>
<div class="common_lnb">
	<div class="my">
		<div class="txt grade_area">
			<div class="img gold grade_info g100">
				<span>실버</span>
			</div>
			<p><strong class="name"><%= (memberName != null ? memberName : "회원") %></strong>님</p>
		</div>
		<div class="btn_area">
			<button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
			<!-- <span>시음노트 작성하면 등급 UP</span> -->
		</div>
	</div>
	<div class="my_info my_class_info">
		<ul class="">
			<li>
				<a href="/shop/mypage/shopping/order_lists">
					<p class="tit">주문내역</p>
					<div class="num_box"><span>0</span></div>
				</a>
			</li>
			<!-- <li>
				<a href="/shop/mypage/reserve/reserve_list">
					<p class="tit">예약내역</p>
					<div class="num_box">
						<span>0</span>
					</div>
				</a>
			</li> -->
			<li>
				<a href="/shop/mypage/note/coupon_lists">
					<p class="tit">나의 쿠폰</p>
					<div class="num_box"><span><%= (memberCouponCount != null ? memberCouponCount : 0) %></span></div>
				</a>
			</li>
			<li class="on">
				<a href="/shop/mypage/note/mileage_lists">
					<p class="tit">나의 마일리지</p>
					<div class="num_box"><span><%= memberPoints %></span></div>
				</a>
			</li>
			<li>
				<a href="/shop/mypage/note/giftcard_lists">
					<p class="tit">나의 기프트카드</p>
					<div class="num_box"><span>0</span></div>
				</a>
			</li>
		</ul>
	</div>
</div>