<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="item">
	<div class="checkbox type2">
		<input type="checkbox" name="wish[]" id="wish_item${item.product_code}" value="${item.product_code}">
		<label for="wish_item${item.product_code}">&nbsp;</label>
	</div>
	<div class="main_img" style="background:${item.bg_color}">
		<a href="/shop/product/product_view.do?product_code=${item.product_code}" class="prd_img table_box">
			<picture>
				<!--[if IE 9]><video style="display: none;"><![endif]-->
				<source srcset="../../../uploads/product/200/${item.thumbnail}" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../../../uploads/product/200/${item.thumbnail}" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<!--[if IE 9]></video><![endif]-->
				<img src="../../../uploads/product/200/${item.thumbnail}" loading="lazy" alt="">
				<!-- pc이미지 -->
			</picture>
		</a>
		
		<%-- 찜하기 버튼 --%>
		<div class="btn">
			<button type="button" class="wish wish_${item.product_code}${item.wished ? ' on' : ''}" id="wish_${item.product_code}" onclick="product.likeProduct('${item.product_code}');"><span>찜하기</span></button>
		</div>
		<!-- <div class="btn">
			<button type="button" class="wish wish_${item.product_code} on" id="wish_${item.product_code}" onclick="product.likeProduct('${item.product_code}');"><span>찜하기</span></button>
		</div> -->
		
		<%-- 비비노 점수 --%>
		<c:if test="${not empty item.vivino_score}">
		<p class="vivino">VIVINO<em>${item.vivino_score}</em></p>
		</c:if>
		
		<%-- 라벨 (오른쪽 상단) --%>
		<div class="label_wrap">
			<%-- NEW 아이콘 --%>
			<c:if test="${item.label_thumbnail_1 == 'icon new' || item.label_thumbnail_2 == 'icon new'}">
			<span class="icon new">NEW</span>
			</c:if>
			<%-- SALE 아이콘 --%>
			<c:if test="${item.label_thumbnail_1 == 'icon sale' || item.label_thumbnail_2 == 'icon sale'}">
			<span class="icon sale">SALE</span>
			</c:if>
			<%-- BEST 아이콘 --%>
			<c:if test="${item.label_thumbnail_1 == 'icon best' || item.label_thumbnail_2 == 'icon best'}">
			<span class="icon best">BEST</span>
			</c:if>
			<%-- 기타 아이콘 --%>
			<c:if test="${item.label_thumbnail_2 != null && item.label_thumbnail_2 != 'icon new' && item.label_thumbnail_2 != 'icon sale' && item.label_thumbnail_2 != 'icon best'}">
			${item.label_thumbnail_2}
			</c:if>
		</div>
	</div>
	
	<%-- 제품정보 영역 --%>
	<div class="info">
	
		<%-- 제품설명 --%>
		<div class="more_info">
			<p class="prd_name">
				<a href="/shop/product/product_view.do?product_code=${item.product_code}">
					<span>${item.product_name}</span>
					<span class="en">${item.product_en_name}</span>
				</a>
			</p>
			<p class="prd_info">${item.product_info}</p>
		</div>
		
		<%-- 해시태그, 라벨 --%>
		<div class="cate_label">
			<c:if test="${item.label_type != null}">
			<span style="background:${item.bg_color}">${item.label_type}</span>
			</c:if>
			<c:if test="${item.label_country != null}">
			<span style="background:${item.bg_color}">${item.label_country}</span>
			</c:if>
			<c:if test="${item.label_grapevariety != null}">
			<span style="background:${item.bg_color}">${item.label_grapevariety}</span>
			</c:if>
		</div>
		
		<%-- 가격 --%>
		<div class="price_area">
			<c:choose>
			<c:when test="${item.price_deal == 1}">
			<%-- 할인가 --%>
			<p class="price set">
				<span class="regular_price price">
					<em class="discount">${ item.price_discount_rate }%</em>
					<del><fmt:formatNumber value="${item.price_original}" pattern="#,###"/>원</del>
					<ins><fmt:formatNumber value="${item.price_discount}" pattern="#,###"/>원</ins>
				</span>
				<em class="discount">${ item.price_deal_rate }%</em>
				<i>${ item.price_deal_amount }병 이상 구매시</i>
				<ins><fmt:formatNumber value="${item.price_deal_price}" pattern="#,###"/>원</ins>
			</p>
			</c:when>
			<c:otherwise>
			<%-- n병 구매시 --%>
			<p class="price">
				<c:choose>
				<c:when test="${item.price_discount_rate != null and item.price_discount_rate != 0}">
				<!-- 할인가 -->
				<em class="discount">${item.price_discount_rate}%</em>
				<del><fmt:formatNumber value="${item.price_original}" pattern="#,###"/>원</del>
				<ins><fmt:formatNumber value="${item.price_discount}" pattern="#,###"/>원</ins>
				</c:when>
				<c:when test="${item.stock == 0}">
				<ins class="out">매장문의</ins>
				<ins class="out out_price"><fmt:formatNumber value="${item.price_original}" pattern="#,###"/>원</ins>
				</c:when>
				<c:otherwise>
				<ins><fmt:formatNumber value="${item.price_original}" pattern="#,###"/>원</ins>				
				</c:otherwise>
				</c:choose>
			</p>
			</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>