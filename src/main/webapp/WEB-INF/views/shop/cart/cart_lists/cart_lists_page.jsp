<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="content order cart_lists_page">
	<!-- 탭 버튼 형식 -->
	<!-- <div class="tab_area">
		<ul class="tab1">
			<li class="on">
				<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=P'">
					<span>온라인주문<em class="count">1</em></span>
				</button>
			</li>
			<li >
				<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=V'">
					<span>매장방문주문</span>
				</button>
			</li>
			<li >
				<button type="button" onclick="location.href='/shop/cart/cart_lists?order_gb=D'">
					<span>택배배송</span>
				</button>
			</li>
		</ul>
	</div> -->
	<!-- 라디오박스 형식(두 개 중 골라 쓰시면 됩니다) -->
	<!-- <div class="radio_area">
		<div class="radiobox">
			<input type="radio" name="receive_way" id="pickup" checked>
			<label for="pickup"><span>직접픽업(Array건)</span></label>
		</div>
		<div class="radiobox">
			<input type="radio" name="receive_way" id="store">
			<label for="store"><span>매장방문(0건)</span></label>
		</div>
		<div class="radiobox">
			<input type="radio" name="receive_way" id="shipping">
			<label for="shipping"><span>택배배송</span></label>
		</div>
	</div> -->
	<div class="c_lists">
		<div class="top">
			<div class="checkbox type2">
				<input type="checkbox" id="all_sel">
				<label for="all_sel">전체선택</label>
			</div>
			<button type="button" id="btn_del">선택삭제</button>
		</div>
		<c:if test="${not empty lists}">
		<ul>
		<c:forEach items="${lists}" var="item" varStatus="loop">
			<li class="${item.cart_no}">
			<div class="box ip_img">
				<div class="checkbox type2">
					<input type="checkbox" id="cart_seq_${item.cart_no}" name="cart_seq[]" class="ip_check" value="${item.cart_no}"
					data-qty="${item.quantity}" data-price="${item.price_original}" data-supply-price="<c:choose><c:when test='${item.price_deal == 1 and item.price_deal_amount >= item.quantity}'>${item.price_deal_price}</c:when><c:otherwise>${item.price_discount != 0 ? item.price_discount : item.price_original}</c:otherwise></c:choose>"
					data-discount-price="<c:choose><c:when test="${item.price_deal == 1 && item.quantity >= item.price_deal_amount}">${item.price_original - item.price_deal_price}</c:when><c:otherwise>${item.price_discount != 0 ? item.price_original - item.price_discount : 0}</c:otherwise></c:choose>"
					data-promotion-limit="N">
					<label for="cart_seq_${item.cart_no}">
					<picture style="background:${item.bg_color}">
					<!--[if IE 9]><video style="display: none;"><![endif]-->
					<source srcset="../../uploads/product/${item.thumbnail}" media="(min-width:768px)">
					<!-- pc이미지 -->
					<source srcset="../../uploads/product/${item.thumbnail}" media="(max-width:767px)">
					<!-- mb이미지 -->
					<!--[if IE 9]></video><![endif]-->
					<img src="../../uploads/product/${item.thumbnail}" alt="">
					<!-- pc이미지 -->
					</picture>
					</label>
				</div>
			</div>
			<div class="box con">
				<div class="more_info">
					<p class="prd_name">
						<a href="/shop/product/product_view.do?product_code=${item.product_code}" target="_blank">
						${item.product_name}<br>
						</a>
					</p>
					<div class="cate_label">
						<c:if test="${item.label_type != null}"><span class="label" style="background:${item.bg_color}">${item.label_type}</span></c:if><c:if test="${item.label_country != null}"><span class="label" style="background:${item.bg_color}">${item.label_country}</span></c:if><c:if test="${item.label_grapevariety != null}"><span class="label" style="background:${item.bg_color}">${item.label_grapevariety}</span></c:if>
					</div>
					<!-- 픽업제외매장 -->
					<!-- //픽업제외매장 -->
				</div>
			</div>
			<!-- <div class="box opt">
				<span></span>
			</div> -->
			<div class="box price_amount">
				<div class="box amount">
					<div class="quantity" data-cart-seq="${item.cart_no}" data-product-cd="${item.product_code}" data-base-price="${item.price_discount != null ? item.price_discount : item.price_original}" data-opt-gb="C">
						<button type="button" class="minus" onclick="box_qty(this, -1);">감소</button>
						<input type="text" class="qty" title="수량" value="${item.quantity}">
						<button type="button" class="plus" onclick="box_qty(this, +1);">증가</button>
					</div>
					<!-- <select class="packing" onchange="change_packing('${item.cart_no}',this.value)">
						<option value="">포장선택</option>
						<option value="2701">쇼핑백</option>
						<option value="2702">완충포장</option>
						<option value="2703">칠링백(+2,000원)</option>
						<option value="2704">선물포장(+5,000원)</option>
					</select> -->
				</div>
				<div class="box price price_con">
					<div>
						<span>상품금액</span>
						<ins><fmt:formatNumber value="${item.price_original * item.quantity}" pattern="#,###"/>원</ins>						
					</div>
					<div class="discount">
						<span>할인금액</span>
						<c:choose>
						<c:when test="${item.price_deal == 1 && item.quantity >= item.price_deal_amount}">
						<ins><fmt:formatNumber value="${(item.price_original * item.quantity) - (item.price_deal_price * item.quantity)}" pattern="#,###"/>원</ins>
						</c:when>
						<c:otherwise>
						<ins><fmt:formatNumber value="${item.price_discount != 0 ? (item.price_original * item.quantity) - (item.price_discount * item.quantity) : 0}" pattern="#,###"/>원</ins>
						</c:otherwise>
						</c:choose>
					</div>
					<div class="total">
						<span>총 결제금액</span>
						<c:choose>
						<c:when test="${item.price_deal == 1 && item.quantity >= item.price_deal_amount}">
						<ins><fmt:formatNumber value="${item.price_deal_price * item.quantity}" pattern="#,###"/>원</ins>
						</c:when>
						<c:otherwise>
						<ins><fmt:formatNumber value="${item.price_discount != 0 ? (item.price_discount * item.quantity) : (item.price_original * item.quantity)}" pattern="#,###"/>원</ins>
						</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<!-- <div class="box btn">
					<button type="button" class="btn_like wish_29E404 " id="wish_29E404" onclick="product.likeProduct('29E404');">좋아요</button>
					<button type="button" class="btn_del basic" value="${item.cart_no}">삭제</button>
				</div> -->
			</li>
		</c:forEach>
		</ul>
		</c:if>
		<c:if test="${empty lists}">
		<ul><li class="nodata">장바구니 상품이 없습니다.</li></ul>
		</c:if>
	</div>
	<div class="reload_container">
		<div class="total_price">
			<dl class="dash">
				<dt>상품금액</dt>
				<dd id="supply">원</dd>
			</dl>
			<dl class="plus">
				<dt>할인금액</dt>
				<dd id="sale">원</dd>
			</dl>
			<!-- 	<dl class="equal">
				<dt>배송비</dt>
				<dd>0원</dd>
			</dl> -->
			<dl class="total">
				<dt>총 결제금액</dt>
				<dd id="total">원</dd>
			</dl>
		</div>
	</div>
	<!-- <p class="txt">당일 픽업은 오늘(04월19일) 오후 4시 이전 주문 완료 후 1시간 이후 픽업만 가능합니다.</p> -->
	<div class="btn_area col2">
		<button type="button" class="btn_txt" onclick="location.href='/shop/product/product_lists?sh_category1_cd=10000'"><span>계속 쇼핑하기</span></button>
		<button type="button" class="btn_txt" onclick="orderSet('c')"><span>선택상품 주문</span></button>
		<button type="button" class="btn_txt btn_black" onclick="orderSet('a')"><span>전체상품 주문</span></button>
	</div>
	<div class="recommend_area">
		<!--   <h3>추천 상품</h3>
		<ul class="prd_list" id="cart_recommend">
		</ul> -->
		<!-- <div class="btn_area">
			<button type="button" class="btn_txt" id="more_button_wine" onclick="getList('add')"><span>더보기</span></button>
		</div> -->
	</div>
</div>