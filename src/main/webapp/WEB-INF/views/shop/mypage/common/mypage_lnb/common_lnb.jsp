<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
    // memberId와 memberName은 @ModelAttribute를 통해 설정된 속성
    String memberId = (String) request.getAttribute("memberId");
    String memberName = (String) request.getAttribute("memberName");
    String memberGrade = (String) request.getAttribute("memberGrade");
    int memberPoints = (Integer) request.getAttribute("memberPoints");
    Integer memberCartCount = (Integer) request.getAttribute("memberCartCount");
    Integer memberWishCount = (Integer) request.getAttribute("memberWishCount");
    Integer memberCouponCount = (Integer) request.getAttribute("memberCouponCount");
%>
<c:choose>
<c:when test="${mypage_lnb == 'mileage_lists'}">
<div class="common_lnb mileage_lnb">
</c:when>
<c:when test="${mypage_lnb == 'coupon_lists'}">
<div class="common_lnb item3">
</c:when>
<c:otherwise>
<div class="common_lnb">
</c:otherwise>
</c:choose>
	<div class="my">
		<div class="txt${mypage_lnb != 'mileage_lists' ? ' grade_area' : ''}">
			<% if (memberGrade != null && memberGrade.equals("SILVER")) { %>
			<div class="img silver grade_info g100"><span>실버</span></div>
			<% } else if (memberGrade != null && memberGrade.equals("GOLD")) { %>
			<div class="img gold grade_info g200"><span>실버</span></div>
			<% } else if (memberGrade != null && memberGrade.equals("DIAMOND")) { %>
			<div class="img diamond grade_info g300"><span>실버</span></div>
			<% } else if (memberGrade != null && memberGrade.equals("TRINITY")) { %>
			<div class="img trinity grade_info g400"><span>실버</span></div>
			<% } else { %>
			<div class="img silver grade_info g100"><span></span></div>
			<% } %>
			<p><strong class="name"><%= (memberName != null ? memberName : "회원") %></strong>님</p>
		</div>
		<div class="btn_area">
			<button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
			<!-- <span>시음노트 작성하면 등급 UP</span> -->
		</div>
	</div>
	<div class="${mypage_lnb != 'mileage_lists' ? 'my_info ' : ''}my_class_info">
		<ul class="${mypage_lnb == 'coupon_lists' ? 'col3' : ''}">
		<c:choose>
		<c:when test="${mypage_lnb == 'mileage_lists'}">
			<li class="on">
				<p class="tit">누적 마일리지</p>
				<div class="num_box">
					<span>${saved != null ? saved : 0}</span>
				</div>
			</li>
			<li>
				<p class="tit">사용 마일리지</p>
				<div class="num_box">
					<span>${used != null ? used : 0}</span>
				</div>
			</li>
			<li>
				<p class="tit">가용 마일리지</p>
				<div class="num_box">
					<span>${usable != null ? usable : 0}</span>
				</div>
			</li>
			<!-- <li class="on">
				<p class="tit">소멸예정마일리지</p>
				<div class="num_box">
					<span>0</span>
				</div>
			</li> -->
		</c:when>
		<c:when test="${mypage_lnb == 'coupon_lists'}">
			<li class="">
				<p class="tit">총 쿠폰 발행 수</p>
				<div class="num_box">
					<span>${total != null ? total : 0}</span>
				</div>
			</li> 
			<li class="">
				<p class="tit">사용 쿠폰 수</p>
				<div class="num_box">
					<span>${used != null ? used : 0}</span>
				</div>
			</li>
			<li class="">
				<p class="tit">가용  쿠폰 수</p>
				<div class="num_box">
					<span>${usable != null ? usable : 0}</span>
				</div>
			</li>
		</c:when>
		<c:otherwise>
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
		</c:otherwise>
		</c:choose>
		</ul>
	</div>
</div>