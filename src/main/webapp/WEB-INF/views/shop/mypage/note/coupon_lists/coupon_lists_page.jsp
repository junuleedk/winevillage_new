<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
			<form action="<c:url value='/shop/mypage/note/coupon_lists.do' />" id="couponForm" name="couponForm" method="post" accept-charset="utf-8">
				<!-- <input type="hidden" name="witplus_csrf_token" value="2f8bd261ca7f9a337afb9f673cc8b114"/> -->
				<div class="ip_box">
					<input type="text" name="coupon_number" id="coupon_number" title="쿠폰번호 입력란" placeholder="쿠폰번호를 입력해주세요">
					<button type="button" onclick="Reg_Submit();" class="btn_txt btn_black">쿠폰등록</button>
				</div>
			</form>
		</div>
		<div class="coupon_list">
			<ul>
			<c:if test="${not empty lists}">
				<c:forEach items="${lists}" var="item" varStatus="loop">
				<c:set var="now" value="<%= new java.util.Date() %>" />
				<li<c:if test="${item.used == true || item.date_end != null && item.date_end.before(now)}"> class="use"</c:if>>
					<div class="box img mb_hidden">
						<img src="${item.thumbnail != null ? item.thumbnail : '/asset/images/shop/mypage/ico_coupon_default.png'}" alt="">
					</div>
					<div class="box">
						<em>${item.coupon_name}</em>
						할인율/할인금액 : <fmt:formatNumber value="${item.discount}" pattern="#,###"/>원<br>
						 최소 주문금액 : <fmt:formatNumber value="${item.minimum}" pattern="#,###"/>원<br>
						 ${item.date_start} ~ ${item.date_end}
					</div>
					<div class="box status">
					<c:choose>
						<c:when test="${item.used == true}">
						사용완료
						</c:when>
						<c:when test="${item.date_end != null && item.date_end.before(now)}">
						기간만료
						</c:when>
						<c:otherwise>
						사용가능
						</c:otherwise>
					</c:choose>
					</div>
				</li>
				</c:forEach>
			</c:if>
			<c:if test="${empty lists}">
				<li id="nodata">받은 쿠폰이 없습니다.</li>
			</c:if>
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