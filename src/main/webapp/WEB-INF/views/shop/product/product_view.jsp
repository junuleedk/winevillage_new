<%@ page import="com.winevillage.product.ProductDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	ProductDTO productDTO = (ProductDTO) request.getAttribute("product");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ ${product.product_name}</title>
<%@ include file="../common/common.jsp" %>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
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
<meta property="og:url" content="www.winenara.com/shop/product/product_view?product_cd=03P858"/>
<meta property="og:description" content="알리아니코 품종이 가진 이중성을 완벽하게 조화시킨 부띠끄 와인"/>
<meta property="og:image" content="../../uploads/product/2783_detail_030.png"/>
<script src="../../asset/js/wn.product.js"></script>
<div class="lnb product_lnb product_view_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand" id="select_brand">
			<h2 class="my_value js_selectBtn">${product.product_name}</h2>
		</div>
		<p class="cart">
			<a href="/shop/cart/cart_lists"><span>Cart List</span>
			</a>
		</p>
	</div>
</div>
<div class="wrap">
	<div class="content product product_view_page product_lists_page">
		<div class="line_map mb_hidden">
			<ul>
				<li onclick="location.href='/shop/main'" style="cursor: pointer;">HOME</li>
				<li onclick="location.href='/shop/product/product_lists'" style="cursor: pointer;">ALL WINES</li>
				<li onclick="location.href='/shop/product/product_view'" style="cursor: pointer;">PRODUCT</li>
			</ul>
		</div>
		<div class="product_view_wrap">
			<div class="main_prd_detail">
				<div class="main_img_area" style="background:${product.bg_color}">
					<div class="main_img js_main_img easyzoom easyzoom--overlay easyzoom--with-toggle">
						<img data-src="../../uploads/product/550/${product.thumbnail}" alt="" class="lozad">
						<!-- 일반 이미지 경로가 들어가야합니다. -->
						<!-- 아래에도 확대이미지 경로를 넣어주셔야합니다. -->
						<div class="easyzoom-flyout zoom_btn_active lozad" style="display:none">
							<img data-src="../../uploads/product/550/${product.thumbnail}" style="position: absolute; top: 0px; left: 0px;">
						</div>
					</div>
					<div class="label_wrap">
						<%-- NEW 아이콘 --%>
						<c:if test="${product.label_thumbnail_1 == 'icon new' || product.label_thumbnail_2 == 'icon new'}">
						<span class="icon new">NEW</span>
						</c:if>
						<%-- SALE 아이콘 --%>
						<c:if test="${product.label_thumbnail_1 == 'icon sale' || product.label_thumbnail_2 == 'icon sale'}">
						<span class="icon sale">SALE</span>
						</c:if>
						<%-- BEST 아이콘 --%>
						<c:if test="${product.label_thumbnail_1 == 'icon best' || product.label_thumbnail_2 == 'icon best'}">
						<span class="icon best">BEST</span>
						</c:if>
						<%-- 기타 아이콘 --%>
						<c:if test="${product.label_thumbnail_2 != null && product.label_thumbnail_2 != 'icon new' && item.label_thumbnail_2 != 'icon sale' && item.label_thumbnail_2 != 'icon best'}">
						${product.label_thumbnail_2}
						</c:if>
					</div>
				</div>
				<div class="thumbnail">
					<ul>
						<li class="on">
							<button type="button" class='thumnail_btn_js'>
							<picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="../../uploads/product/550/${product.thumbnail}" media="(min-width:768px)">
								<!-- pc이미지 -->
								<source srcset="../../uploads/product/550/${product.thumbnail}" media="(max-width:767px)">
								<!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="../../uploads/product/550/${product.thumbnail}" alt="">
								<!-- pc이미지 -->
							</picture>
							</button>
						</li>
					</ul>
				</div>
			</div>
			<div class="info_area">
				<div class="more_info">
					<div class="over_wrap tit_wrap">
						<p class="prd_name">${product.product_name}</p>
						<p class="prd_en_name">${product.product_en_name}</p>
						<p class="prd_info">${product.product_info}</p>
						<div class="share_area">
							<button type="button" class="open">공유</button>
							<div class="share_layer">
								<button type="button" class="facebook" onclick="share_sns('F');">페이스북으로 공유하기</button>
								<button type="button" class="kakao" onclick="share_sns('K');">카카오로 공유하기</button>
								<button type="button" class="url" onclick="share_sns('U');">URL로 공유하기</button>
								<button type="button" class="close">공유하기 레이어 닫기</button>
							</div>
							<script>
								$('.share_area .open').on('click', function(){
									$(this).addClass('on');
								})
								$('.share_area .close').on('click', function(){
									$('.share_area .open').removeClass('on');
								})
							</script>
						</div>
					</div>
					<ul class="cate_label">
						<c:if test="${not empty product.label_type}">
						<li class="label" style="background:${product.bg_color}">${product.label_type}</li>
						</c:if>
						<c:if test="${not empty product.label_country}">
						<li class="label" style="background:${product.bg_color}">${product.label_country}</li>
						</c:if>
						<c:if test="${not empty product.label_grapevariety}">
						<li class="label" style="background:${product.bg_color}">${product.label_grapevariety}</li>
						</c:if>
					</ul>
					<div class="price_box">
						<p class="price info_box">
							<c:choose>
							<c:when test="${product.stock == '0'}">
							<ins class="out out_price"><fmt:formatNumber value="${product.price_original}" pattern="#,###"/>원</ins><br>
							<ins class="out tel">매장문의<a href="javascript:commonUI.layer.open('store_layer')">문의 매장정보 열기</a></ins>							
							</c:when>
							<c:otherwise>
							<c:choose>
							<c:when test="${product.price_discount != null && product.price_discount != '0'}">
							<span>${product.price_discount_rate}%</span>
							<ins><fmt:formatNumber value="${product.price_original}" pattern="#,###"/>원</ins>
							<del><fmt:formatNumber value="${product.price_discount}" pattern="#,###"/>원</del>
							</c:when>
							<c:otherwise>
							<ins><fmt:formatNumber value="${product.price_original}" pattern="#,###"/>원</ins>
							</c:otherwise>
							</c:choose>
							</c:otherwise>
							</c:choose>
						</p>
						<c:if test="${product.price_deal == 1}">
						<p class="price sale">
							<span>${product.price_deal_rate}%</span>
							<em>${product.price_deal_amount}병 이상 구매시</em>
							<ins><fmt:formatNumber value="${product.price_deal_price}" pattern="#,###"/>원</ins>
							<em>(1병 기준)</em>
						</p>
						</c:if>
					</div>
					<!-- 픽업제외매장 -> 픽업가능매장으로 변경 -->
					<c:if test="${not empty product.exclude}">
					<p class="exclude">
						${product.exclude}
					</p>					
					</c:if>
					<!-- //픽업제외매장 -> 픽업가능매장으로 변경 -->
					<c:if test="${not empty product.sale_txt}">
					<p class="sale_txt">${product.sale_txt}</p>
					</c:if>
					<div class="buy_process">
						<div class="black_bg">&nbsp;</div>
						<div class="hide_process">
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt wish_btn" onclick='commonUI.layer.open("login_layer");'>찜하기</button>
							<c:choose>
							<c:when test="${product.stock == '0'}">
							<!-- 매장문의 -->
							<button type="button" class="btn_txt cart_btn buy_process_btn" disabled>구매 희망 시, 방문가능한 매장으로 문의해주세요.</button>							
							</c:when>
							<c:otherwise>
							<!--피씨-->
							<button type="button" onclick="RC_Method({page_type:'product_page', behavior: 'user_action', action: 'shopping_basket'}); chklayer();" class="btn_txt cart_btn buy_process_btn">장바구니</button>
							<button type="button" onclick="RC_Method({page_type:'product_page', behavior: 'user_action', action: 'buying'}); chklayer();" class="btn_txt buy_btn btn_black buy_process_btn">바로구매</button>
							<!--피씨-->
							</c:otherwise>
							</c:choose>
						</div>
					</div>
					<dl class="details">
						<c:set var="bg_color" value="${product.bg_color}" />
						<c:set var="styleAttr" value=" style=\"background:${bg_color};\"" />
						<c:if test="${product.sweetness != null && product.sweetness != ''}">
						<dt>당도</dt>
						<dd>
							<span class="label"${product.sweetness == '1' ? styleAttr : ''}>드라이</span>
							<span class="label"${product.sweetness == '2' ? styleAttr : ''}>미디움드라이</span>
							<span class="label"${product.sweetness == '3' ? styleAttr : ''}>미디엄</span>
							<span class="label"${product.sweetness == '4' ? styleAttr : ''}>미디움스윗</span>
							<span class="label"${product.sweetness == '5' ? styleAttr : ''}>스윗</span>
						</dd>
						</c:if>
						<c:if test="${product.body != null && product.body != ''}">
						<dt>바디</dt>
						<dd>
							<span class="label"${product.body == '1' ? styleAttr : ''}>가벼움</span>
							<span class="label"${product.body == '2' ? styleAttr : ''}>약간가벼움</span>
							<span class="label"${product.body == '3' ? styleAttr : ''}>중간</span>
							<span class="label"${product.body == '4' ? styleAttr : ''}>약간무거움</span>
							<span class="label"${product.body == '5' ? styleAttr : ''}>무거움</span>
						</dd>
						</c:if>
						<c:if test="${product.acidity != null && product.acidity != ''}">
						<dt>산도</dt>
						<dd>
							<span class="label"${product.acidity == '1' ? styleAttr : ''}>낮음</span>
							<span class="label"${product.acidity == '2' ? styleAttr : ''}>약간낮음</span>
							<span class="label"${product.acidity == '3' ? styleAttr : ''}>중간</span>
							<span class="label"${product.acidity == '4' ? styleAttr : ''}>약간높음</span>
							<span class="label"${product.acidity == '5' ? styleAttr : ''}>높음</span>
						</dd>
						</c:if>
						<c:if test="${product.tannins != null && product.tannins != ''}">
						<dt>타닌</dt>
						<dd>
							<span class="label"${product.tannins == '1' ? styleAttr : ''}>약함</span>
							<span class="label"${product.tannins == '2' ? styleAttr : ''}>약간약함</span>
							<span class="label"${product.tannins == '3' ? styleAttr : ''}>중간</span>
							<span class="label"${product.tannins == '4' ? styleAttr : ''}>약간강함</span>
							<span class="label"${product.tannins == '5' ? styleAttr : ''}>강함</span>
						</dd>
						</c:if>
						<c:if test="${product.alcohol != null && product.alcohol != ''}">
						<dt>알코올</dt>
						<dd>
							<span class="label"${product.alcohol == '1' ? styleAttr : ''}>낮음(~11%)</span>
							<span class="label"${product.alcohol == '2' ? styleAttr : ''}>중간(12~13%)</span>
							<span class="label"${product.alcohol == '3' ? styleAttr : ''}>높음(14%+)</span>
						</dd>
						</c:if>
					</dl>
					<c:if test="${not empty product.vivino_link}">
					<div class="wn_babel">
						<div class="box">
							<a href="${product.vivino_link}" target="_blank">
							<div class="img">
								<img src="../../asset/images/shop/default/ico_vivino_small.png" alt="">
							</div>
							<div class="info">
								<%
								// 제품의 vivino_score 값을 가져옵니다.
								Double vivinoScore = null;
								if (productDTO != null && productDTO.getVivino_score() != null) {
									try {
										vivinoScore = Double.parseDouble(productDTO.getVivino_score());
									} catch (NumberFormatException e) {
										vivinoScore = 0.0; // 변환 실패 시 기본값 설정
									}
								}
								// 백분율로 계산합니다. 예를 들어, 10이 최대값이라면 100으로 나누어 100을 곱합니다.
								int vivino_star = (vivinoScore != null) ? (int) ((vivinoScore / 5.0) * 100) : 0;
								%>
								<strong>${product.vivino_score}</strong>
								<div class="star_area">
									<div class="star_cover" style="width:<%= vivino_star %>%">&nbsp;</div>
									<div class="star">&nbsp;</div>
								</div>
								<p>${product.vivino_ratings} ratings</p>
							</div>
							</a>
						</div>
					</div>
					<c:if test="${product.info_btn == '1'}">
					<a href="#" onclick="alert('상품 정보가 없습니다.');return false;" class="info_btn">상품정보 다운로드</a>
					</c:if>
					</c:if>
				</div>
				<!-- 문의 매장정보 레이어 -->
				<div class="layer store_layer" id="store_layer">
					<div class="display_table">
						<div class="table_cell">
							<div class="layer_area">
								<button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
								<div class="layer_con">
									<p class="tit">문의 매장정보</p>
									<table class="tbl_list">
										<colgroup>
											<col class="col_w01">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>매장</th>
												<th>매장 연락처</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>송도점</td>
												<td><a href="tel:0328330833">032-833-0833</a></td>
											</tr>
											<tr>
												<td>신용산점</td>
												<td><a href="tel:0263283835">02-6328-3835</a></td>
											</tr>
											<tr>
												<td>압구정점</td>
												<td><a href="tel:025414363">02-541-4363</a></td>
											</tr>
											<tr>
												<td>경희궁점</td>
												<td><a href="tel:027754663">02-775-4663</a></td>
											</tr>
											<tr>
												<td>코엑스점</td>
												<td><a href="tel:025589880">02-558-9880</a></td>
											</tr>
											<tr>
												<td>서래마을점</td>
												<td><a href="tel:025929035">02-592-9035</a></td>
											</tr>
											<tr>
												<td>일산점</td>
												<td><a href="tel:0319111556">031-911-1556</a></td>
											</tr>
											<tr>
												<td>홍대점</td>
												<td><a href="tel:023260116">02-326-0116</a></td>
											</tr>
											<tr>
												<td>시청점</td>
												<td><a href="tel:027773999">02-777-3999</a></td>
											</tr>
											<tr>
												<td>성수점</td>
												<td><a href="tel:0269493869">02-6949-3869</a></td>
											</tr>
											<tr>
												<td>MOWa</td>
												<td><a href="tel:027535008">027535008</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- //문의 매장정보 레이어 -->
				${product.etc}
			</div>
			<div class="tab_area">
				<div class="tab_btn">
					<ul class="tab_btn_area">
						<li>
							<button type="button" class="on">
								<span>PRODUCT</span>
							</button>
						</li>
						<%-- 차후 변경 --%>
						<li>
							<button type="button" onclick="RC_Method({page_type:'product_page', behavior: 'user_action', action: 'winery_info'})">
								<span>RELATED PRODUCT</span>
							</button>
						</li>
						<%-- 차후 변경 --%>
						<li>
							<button type="button" onclick="RC_Method({page_type:'product_page', behavior: 'user_action', action: 'winery_info'})">
								<span>REVIEW (1)</span>
							</button>
						</li>
					</ul>
				</div>
				<div class="tab_con detail_con on">
					${ product.content }
				</div>
				<div class="tab_con prd_con">
					<%@ include file="product_view/n_prd_list.jsp" %>
					<!-- <div class="btn_area" id="more_button_wine">
						<button type="button" onclick="getList('add')" class="btn_txt"><span>더보기</span></button>
					</div> -->
				</div>
				<!--<div class="tab_con detail_con">
					<p style="text-align: center;" align="center"> <img src=" /uploads/editor/data/editor/goods/210810/9468c676ae990ab30b0fbba4d5d1dafc_100445.png" title="9468c676ae990ab30b0fbba4d5d1dafc_100445.png" class="js-smart-img"> </p>                </div>-->
				<!-- <div class="tab_con food_con">
					<div class="js_tab">
						<ul class="js_tabBtn"></ul>
					</div>
				</div> -->
				<div class="tab_con review_con">
					<%-- 차후 구현 --%>
					<div class="ratings_tit">
						<p>5.0 <em>(1 ratings)</em></p>
					</div>
					<ul class="tasting_review_lists">
						<!-- product_view_tasting_review_ajax -->
						<li>
							<div class="top">
								<div class="box tit">
									<p>알파박스 앤 다이스 솔라 </p>
								</div>
								<div class="box grade">
									<div class="name">
										<p></p>
										<div class="star_area">
											<!-- 별 한 개당 20% -->
											<span class="full_gold" style="width:100%"></span>
											<span class="empty"></span>
										</div>
									</div>
									<p class="date">2022-11-29</p>
								</div>
							</div>
							<div class="con">
								<div class="box" onclick="reviewImgLayer('42')" style="cursor: pointer;">첫인상은 강건한 시라.  m+바디에 곱게 갈린, 드라이하고 탄탄한 높은 타닌,  높은 산도. 혀에서는 코에서보다 졸인 과일이 더 파워풀.  잘 녹아든 오크가 존재감은 강하면서도 섬세하고 은은		</div>
							</div>								
						</li>
					</ul>
					<div class="btn_area">
						<button type="button" class="btn_txt" onclick="getTastingReview('more')"><span>더보기</span></button>
						<input type="hidden" id="tasting_page" value="1">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="layer buy_process_layer">
	<%-- 차후 구현 --%>
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<div class="cart_txt">
					<p>장바구니에 상품이 담겼습니다.</p>
					<p><a href="/shop/cart/cart_lists">바로가기</a></p>
				</div>
				<div class="layer_tit">
					<span>알파박스 앤 다이스 솔라 </span>
					<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				</div>
				<div class="layer_con">
					<!-- <p class="info_txt">빈티지와 용량을 선택하세요.</p> -->
					<div class="border_style">
						<ul>
							<li class="4952" data-product-cd='03P858' data-base-price='49000' data-product-gb="C" data-option-cd1="OPT_1" data-option-cd2="OPT_2" data-option-cd3="" data-value-cd1="OPT_1_1" data-value-cd2="OPT_2_2" data-value-cd3="" data-option-gb="C" data-option-value-nm1="750" data-option-value-nm2="2018" data-option-value-nm3="" data-option-price1="0" data-option-price2="0" data-option-price3="" data-stock-seq="4952" data-mandatory-yn="Y">
							<div class="select_line">
								<div class="checkbox type2">
									<input type="checkbox" id="4952" name="check[]" value="4952" autocomplete="off">
									<label for="4952">&nbsp;</label>
								</div>
							</div>
							<div class="info_area">
								<div class="volume_line">
									<span>알파박스 앤 다이스 솔라 </span>
								</div>
								<div class="total_price_line">
									<div>
										<span>상품금액</span>
										<ins class="supply_ins">49,000원</ins>
									</div>
									<div class="discount">
										<span>할인금액</span>
										<ins class="sale_ins">0원</ins>
									</div>
									<div class="total">
										<span>총 결제금액</span>
										<ins class="total_ins">49,000원</ins>
									</div>
								</div>
								<div class="count_line">
									<div class="quantity type2">
										<button type="button" class="min" onclick="change_qty(this, -1, 49000, 0,49000,0 )">빼기</button>
										<input type="text" class="qty" value='1' readonly>
										<button type="button" class="plus" onclick="change_qty(this, 1, 49000, 0,49000,0 )">추가</button>
									</div>
								</div>
							</div>
							</li>
						</ul>
					</div>
					<div class="btn_area col2">
						<button type="button" class="btn_txt" onclick="product_chk('03P858', 'F', '2201');"><span>장바구니</span></button>
						<button type="button" class="btn_txt btn_black" onclick="product_chk('03P858', 'T', '2201');"><span>바로구매</span></button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 리뷰 레이어 (유형 퍼블 추가) -->
<div class="layer review_img_layer">
	<%-- 차후 구현 --%>
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">리뷰 보기</div>
				<div class="layer_con" id="review_div">
					<div class="rv_slide slick-initialized slick-slider" id="rv_slide">
						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" role="listbox" style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);"></div>
						</div>
					</div>
					<div class="rv_con">
						<p class="tit">알파박스 앤 다이스 솔라 </p>
						<div class="grade">
							<div class="star_area">
								<span class="full_gold" style="width:100%"></span>
								<span class="empty"></span>
							</div>
							<p class="date">2022-11-29</p>
						</div>
						<div class="txt">
							<!-- <em>아주 좋아요.</em>  -->첫인상은 강건한 시라.  m+바디에 곱게 갈린, 드라이하고 탄탄한 높은 타닌,  높은 산도. 혀에서는 코에서보다 졸인 과일이 더 파워풀.  잘 녹아든 오크가 존재감은 강하면서도 섬세하고 은은 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //리뷰 레이어 (유형 퍼블 추가) -->
<link rel="stylesheet" type="text/css" href="../../asset/css/shop/jqcloud.min.css"/>
<link rel="stylesheet" type="text/css" href="../../asset/css/shop/slick.css"/>
<link rel="stylesheet" type="text/css" href="../../asset/css/shop/easyzoom.css"/>
<script type="text/javascript" src="../../asset/js/jqcloud.min.js"></script>
<script type="text/javascript" src="../../asset/js/slick.min.js"></script>
<script type="text/javascript" src="../../asset/js/easyzoom.js"></script>
<!-- http://mistic100.github.io/jQCloud/demo.html -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
// $(function(){
// 	getList('init');
// });
var page;
var product_cd = '03P858';
// 관련상품 
function getList(mode){
	if( mode=="init"){
		page = 1;
	}else{
		page += 1;
	}
	$.ajax({
		type: "get",
		url : "/shop/product/relationWine",
		data: { 'page' : page, 'product_cd' : product_cd },
		success : function (res) {
			if(!res){
				//alert('마지막 페이지입니다.');
				window.removeEventListener('scroll', moreShowList);
				if( mode === 'init'){
					var html = "<li class='nodata'>등록된 정보가 없습니다.</li>";
					$("#SimilarWine").append(html); 
				}
				$("#more_button_wine").hide(); 
			}else{
				$("#SimilarWine").append(res);
			}
			$('.main_img .slider').not('.slick-initialized').slick({
				dots: true,
				arrows: true
			});
			vivino_keyword();
		},
		error: function (res) {
			alert("error");
		}
	});
}
// 장바구니 바로가기 초기화면 가리기
$(".cart_txt").hide();
// 리뷰 이미지 레이어 오픈 (유형 퍼블 추가)
function reviewImgLayer(use_review_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	
	//AJAX를 통한 리뷰 불러오기(추후 사용)
	// $.ajax({
	// 	type: "post",
	// 	url : "/shop/product/review_view_ajax",
	// 	data: {use_review_seq:use_review_seq},
	// 	success : function (res) {
	// 		if(res != ""){
	// 			$("#review_div").empty();
	// 			$("#review_div").append(res);
	// 			commonUI.layer.open('review_img_layer');
	// 				//리뷰 이미지 레이어 슬라이드
	// 			$(".review_img_layer .rv_slide").slick({
	// 				arrows: true,
	// 				dots: true,
	// 				infinite: true,
	// 			});
	// 		}
	// 	},
	// 	error: function (res) {
	// 		alert("error");
	// 	}
	// });

	commonUI.layer.open('review_img_layer');
	$(".review_img_layer .rv_slide").slick({
		arrows: true,
		dots: true,
		infinite: true,
	});
}
//동영상 재생버튼
$(".btn_play").on("click", function(){
	document.getElementById("video1").play();
	$(this).remove();
});
//상단 상품 이미지 easyzoom
$(".zoom_btn").on("click", function() {
	var $easyzoom = $(".easyzoom").easyZoom();
	var api2 = $easyzoom.filter(".easyzoom--with-toggle").data("easyZoom");
	var $zoomImg = $(".zoom_btn_active");
	var $this = $(this);
	if ($this.data("active") === true) {
		$this.removeClass("on").data("active", false);
		api2.teardown();
		$zoomImg.hide();
	} else {
		$this.addClass("on").data("active", true);
		api2._init();
		$zoomImg.show();
	}
});
$('.sidedish>button').on('click', function(){
	$(this).toggleClass('on');
})
// 구성상품 PC통 슬라이드
if($(window).width() > 768){
	$('.sidedish .set_list>ul').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		variableWidth: true,
		infinite: false,        
		dots: false,
		arrows: true, 
	});    
}
// 구성상품
$('.sidedish .set_list>ul .main_img .slider').slick({
	slidesToShow: 1,
	slidesToScroll: 1,
	variableWidth: false,     
	dots: true,
	arrows: true,
});
var withgoodwine	= false;
var winery			= false;
var tastingNote		= false;
var notesort = "best";
var note_keyword = '';
var currentUrl = window.location.href;
var pvIdx = currentUrl.indexOf('product_view')
currentUrl = currentUrl.slice(pvIdx);
var tabIdx = currentUrl.indexOf('tab');
$('.black_bg').on('click', function(){
	$('.show_btn').show();
	$('.buy_process_btn').hide();
	$('.buy_process').removeClass('on');
})
$('.show_btn').on('click', function(){
	// $('.show_btn').hide();
	$('.buy_process_btn').show();
	$('.buy_process').addClass('on');
})
$('.js_select>button').on('click', function(){
	$(this).toggleClass('on')
});
$('.thumnail_btn_js').on('click', function(){
	$('.thumbnail li').removeClass('on');
	$(this).parent().addClass('on');
	var changeSrc = $(this).find('img').attr('src');
	$('.js_main_img').find('img').attr('src', changeSrc);
});
// 비비노 키워드
$(function() {
	var product_cd = '${product.product_code}';
	var words = [];	// 키워드 담을 배열
	var mobile_chk = 'WEB';
	//Csrf.Set(_CSRF_NAME_); //토큰 초기화
	// $.ajax({
	// 	type: "POST",
	// 	url : "/shop/product/vivino_keyword_ajax",
	// 	data: {product_cd:product_cd},
	// 	success : function (res) {
	// 		if (typeof(res)=="string"){ res = JSON.parse(res); }
	// 		if(res.status == "ok"){
	// 			var vivino = res.list;
	// 			for(var i = 0;i < vivino.length;i++){
	// 				var tempObj = {};
	// 				tempObj['text'] = vivino[i]['keyword_kr'];
	// 				tempObj['weight'] = vivino[i]['score'];
	// 				tempObj['color'] = vivino[i]['keyword_rgb'];
	// 				words.push(tempObj);
	// 			}
	// 			var some_words_with_same_weight = $(".cloud_"+product_cd).jQCloud(words, {
	// 				width: 334,
	// 				height: 135
	// 			});
	// 			return false;
	// 		}else{
	// 			if(mobile_chk !== "MOBILE"){
	// 				$(".cloud_"+product_cd).html("<p class='jq_nodata'><span>관련정보가 없습니다.</span></p>");
	// 			}else{	// 모바일일때
	// 				$("#source_a").css("display","none");
	// 				$("#btn_ntc").css("display","none");
	// 			}
	// 			return false;
	// 		}
	// 	},
	// 	error: function (res) {
	// 		alert("상품 리스트 조회시 에러가 발생했습니다.");
	// 		alert(res.responseText);
	// 	}
	// });
});
// 슬라이드시 비비노 키워드 호출
function vivino_keyword(){
	$('.main_img .slider').on('afterChange', function(event, slick, currentSlide){
		var product_cd = $(this).data('cd');
			var words = [];	// 키워드 담을 배열
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url : "/shop/product/vivino_keyword_ajax",
			data: {product_cd:product_cd},
			success : function (res) {
				if (typeof(res)=="string"){ res = JSON.parse(res); }
				if(res.status == "ok"){
					var vivino = res.list;
					for(var i = 0;i < vivino.length;i++){
						var tempObj = {};
						tempObj['text'] = vivino[i]['keyword_kr'];
						tempObj['weight'] = vivino[i]['score'];
						tempObj['color'] = vivino[i]['keyword_rgb'];
						words.push(tempObj);
					}
					var some_words_with_same_weight = $(".cloud_"+product_cd).jQCloud(words, {
						width: 334,
						height: 135
					});
					return false;
				}else{
					console.log("no_list");
					return false;
				}
			},
			error: function (res) {
				alert("상품 리스트 조회시 에러가 발생했습니다.");
				alert(res.responseText);
			}
		});
	});
};
//수량 변경
function change_qty(e, add, sale_price, special_price, supply_price, option_price){
	var qty				=	$(e).siblings('.qty').val();		// 현재 개수
	var change			=	parseInt(qty) + parseInt(add);
	var quantity_set_yn =   '';
	var quantity_set	=   1;
	if(change<1){
		return false;
	}
	$(e).siblings('.qty').val(change);
	quantity_set2	=   '';
	if( quantity_set_yn === 'Y' && change >= quantity_set2){
			$(e).parents("li").find('.supply_ins').text((supply_price*change).toLocaleString()+'원');
			$(e).parents("li").find('.sale_ins').text(( (supply_price*change) - (special_price*change) ).toLocaleString()+'원');
			$(e).parents("li").find('.total_ins').text((special_price*change).toLocaleString()+'원');
	}else{
		$(e).parents("li").find('.supply_ins').text((supply_price*change).toLocaleString()+'원');
		$(e).parents("li").find('.sale_ins').text(( (supply_price*change) - (sale_price*change) ).toLocaleString()+'원');
		$(e).parents("li").find('.total_ins').text((sale_price*change).toLocaleString()+'원');
	}
	/* ######## 번들프로모션 교차구매 2023-04-18 ######## */
			/* ######## 번들프로모션 교차구매 2023-04-18 ######## */
	if( $(".qty").hasClass("g_qty") ){
		$(".g_qty").val(change);
	}
}
function product_chk(product_cd, iscurr,store, set ='N'){ 
	var varUA = navigator.userAgent.toLowerCase(); //userAgent 값 얻기
	var app_use_yn = "N";
	var c_mandatory	= true;				//조합옵션 필수 체크 변수
	var s_mandatory	= true;				//개별옵션 필수 체크 변수
	var i_mandatory	= true;				//추가옵션 필수 체크 변수
	var qty_set		= true;				
	// 웹체크
	if(app_use_yn == "Y"){
		if ( varUA.indexOf('android') > -1) {
			//안드로이드
			alert("구매는 앱에서만 가능합니다.");
			location.href='https://play.google.com/store/apps?utm_source=apac_med&utm_medium=hasem&utm_content=Oct0121&utm_campaign=Evergreen&pcampaignid=MKT-EDR-apac-kr-1003227-med-hasem-ap-Evergreen-Oct0121-Text_Search_BKWS-BKWS%7cONSEM_kwid_43700058439439522_creativeid_477136134430_device_c&gclid=Cj0KCQjw_4-SBhCgARIsAAlegrUySF6V3T6hKmWHrsklb6fWZCpSkFq0X9LOrBd7h0UXrg3BTD9ft5QaAvH5EALw_wcB&gclsrc=aw.ds';
			return false;
		} else if ( varUA.indexOf("iphone") > -1||varUA.indexOf("ipad") > -1||varUA.indexOf("ipod") > -1 ) {
			//ios
			alert("구매는 앱에서만 가능합니다.");
			location.href='https://www.apple.com/kr/ios/ios-15/?&mtid=209254jz40384&aosid=p238&mnid=sEaXwcwi4-dc_mtid_209254jz40384_pcrid_554814771341_pgrid_128369994841_&cid=wwa-kr-kwgo-iphone-Brand-iOS-iOS-';
			return false;
		} else {
			//아이폰, 안드로이드 외
			alert("구매는 앱에서만 가능합니다.");
			location.href='https://play.google.com/store/apps/details?id=com.makeshop.powerapp.pyungan&hl=ko&gl=US';
			return false;
		}
	}
	var option_ea = 0;
	if( option_ea > 0 ) {
		if($("input[name='check[]']:checked").length < option_ea){
			alert("주문할 상품 옵션을 최소 " + option_ea + "개 이상 선택해주세요.");
			return false;
		}
	}else{ 
		if($("input[name='check[]']:checked").length < 1){
			alert("주문할 상품을 선택해 주세요.");
			return false;
		}
	}
	$('li[data-option-gb="C"]').each(function(idx){
			if( $(this).data('mandatory-yn') === 'Y'){
				c_mandatory = false;
			}
			return false;
	});
	$('li[data-option-gb="S"]').each(function(idx){
			if( $(this).data('mandatory-yn') === 'Y'){
				s_mandatory = false;
			}
			return false;
	});
	$('li[data-option-gb="I"]').each(function(idx){
			if( $(this).data('mandatory-yn') === 'Y'){
				i_mandatory = false;
			}
			return false;
	});
	var product_array = [];
	$("input[name='check[]']:checked").each(function(idx){
		var product_add = 'N';
		var product_info = {};
		product_info.price			=	$('.' + $(this).val() ).data('base-price');				//가격
		product_info.product_cd		=	$('.' + $(this).val() ).data('product-cd');				//상품코드
		product_info.is_mobile		=	commonUI.isMobile;										// 모바일으로 주문 여부
		product_info.qty			=	$('.' + $(this).val() ).find('.qty').val();				// 상품 갯수
		var idx_qty					=   $('.' + $(this).val() ).find('.qty').val();
		product_info.product_gb		=	$('.' + $(this).val() ).data('product-gb');	
		product_info.delivery_gb	=	'A';					//배송 구분
		product_info.order_gb		=   '2201';			//픽업 구분
		product_info.stock_seq		=	$('.' + $(this).val() ).data('stock-seq');	
		if( product_info.product_gb === 'P'){
			product_info.option_yn = 'N';
		}else if(product_info.product_gb === 'C'){
			product_info.packing		=   $( "#packing_"+ $(this).val() ).val();
			if( c_mandatory === false ){														//조합옵션이 필수일때 체크 유무
				if($('.' + $(this).val() ).data('mandatory-yn') === 'Y'){
					c_mandatory = true;
				}
			}
			product_info.option_yn = 'Y';
			product_info.options = [];
			product_info.options.push({
				'option_cd'		: $('.' + $(this).val() ).data('option-cd1'),
				'option_gb'		: "C",
				'value_cd'		: $('.' + $(this).val() ).data('value-cd1')
			});
			product_info.options.push({
				'option_cd'		: $('.' + $(this).val() ).data('option-cd2'),
				'option_gb'		: "C",
				'value_cd'		: $('.' + $(this).val() ).data('value-cd2')
			});
			if ($('.' + $(this).val() ).data('option-cd3'))
			{
				product_info.options.push({
					'option_cd'		: $('.' + $(this).val() ).data('option-cd3'),
					'option_gb'		: "C",
					'value_cd'		: $('.' + $(this).val() ).data('value-cd3')
				});
			}
		}else if(product_info.product_gb === 'I'){
			product_add = 'Y';
			if( !product_array[0]){
				alert('추가 상품외의 상품을 선택하지 않으셨습니다.');
				return false;
			}
			if( i_mandatory === false ){														//조합옵션이 필수일때 체크 유무
				if($('.' + $(this).val() ).data('mandatory-yn') === 'Y'){
					i_mandatory = true;
				}
			}
			product_array[0].options.push({
				'option_gb': 'I', 
				'option_cd': $('.' + $(this).val() ).data('option-cd'),
				'option_nm': $('.' + $(this).val() ).data('option-nm'),
				'value_cd': $('.' + $(this).val() ).data('value-cd'),
				'value_nm': $('.' + $(this).val() ).data('option-value-nm'),
				'option_qty' : product_info.qty,
				'option_price': $('.' + $(this).val() ).data('option-price'),
			});
		}else if(product_info.product_gb === 'S'){
			if( s_mandatory === false ){														//조합옵션이 필수일때 체크 유무
				if($('.' + $(this).val() ).data('mandatory-yn') === 'Y'){
					s_mandatory = true;
				}
			}
			product_info.option_yn = 'Y';
			product_info.options = [];
			product_info.options.push({
				'option_cd'		:$('.' + $(this).val() ).data('option-cd'),
				'option_gb'		: "S",
				'option_price'	: $('.' + $(this).val() ).data('option-price'),
				'value_cd'		: $('.' + $(this).val() ).data('value-cd')
			});
		}
		if (product_add === 'N')
		{
			product_array.push(product_info);
		}
	});
	if( qty_set === false){
		return;
	}
			if( !c_mandatory || !s_mandatory || !i_mandatory ){
		alert('필수 상품을 선택하지 않으셨습니다.');
		return false;
	}
	console.log(product_array);
	console.log(set);
	if(iscurr == 'F'){
		product.cartProduct(product_array, set);
	}else{
		product.buyProduct(product_array);
	}
}
/*공유 및 URL 복사*/
var img_url = "";
if(img_url !== ''){
	img_url = 'https://www.winenara.com/uploads/product/';
}
	Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
function share_sns(e){
	RC_Method({page_type:'product_page', behavior: 'user_action', action: 'sharing'});
	var url = window.document.location.href;
	if(e == 'U'){
		var textarea = document.createElement("textarea");
		document.body.appendChild(textarea);
		textarea.value = url;
		textarea.select();
		document.execCommand("copy");
		document.body.removeChild(textarea);
		alert("URL이 복사되었습니다.");
	}else if(e == 'F'){
		window.open( 'http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url) );
	}else if(e == 'K'){
		Kakao.Link.sendDefault({
			objectType: 'feed',
			content: {
				title: '알파박스 앤 다이스 솔라 ',
				description: "알리아니코 품종이 가진 이중성을 완벽하게 조화시킨 부띠끄 와인",
				imageUrl:'https://www.winenara.com/uploads/product/2783_detail_030.png',
				link: {
					mobileWebUrl: 'https://www.winenara.com/shop/product/product_view?product_cd=03P858',
					webUrl:'https://www.winenara.com/shop/product/product_view?product_cd=03P858',
				},
			},
			buttons: [
				{
				title: '웹으로 이동',
				link: {
					mobileWebUrl: 'https://www.winenara.com/shop/product/product_view?product_cd=03P858',
					webUrl : 'https://www.winenara.com/shop/product/product_view?product_cd=03P858',
				},
				},
			]
		});
	}
}
$("#js_select").on( "change", function() {
	getwineryList('init');
});
/*동일 와이너리 상품*/
var winerypage;
var product_local_cd = $("#product_local_cd").text().trim();
var product_make_company = "ALPHA BOX AND DICE";
function getwineryList(mode){
	if( mode=="init"){
		winerypage = 1;
	}else{
		winerypage += 1;
	}
	console.log(winerypage);
	$.ajax({
		type: "get",
		url : "/shop/product/wineryrWine",
		data: { 'page' : winerypage, 'product_make_company' : product_make_company, 'sh_order_by':$("#js_select option:selected").val(), 'mode' : mode},
		success : function (res) {
			if(!res){
				console.log('마지막 페이지입니다.');
				// $("#more_winery_wine").hide();
				window.removeEventListener('scroll', moreShowList);
				if(mode === 'init'){
					var html = "<li class='nodata'>데이터가 없습니다.</li>";
					$("#wineryrWine").append(html);
				}
			}else{
				if(mode == "add"){
					$("#wineryrWine").append(res);
				}else{
					$("#wineryrWine").html(res);
				}
			}
			$('.main_img .slider').not('.slick-initialized').slick({
				dots: true,
				arrows: true
			});
			vivino_keyword();
		},
		error: function (res) {
			alert("error");
		}
	});
}
/*동일 와이너리 상품*/
/*시음노트*/
function getNoteList(mode){
	$.ajax({
		type: "get",
		url : "/shop/product/NoteWine",
		data: { 'product_cd' : product_cd, 'mode' : mode, 'keyword' : note_keyword },
		success : function (res) {
			if(res){
				$(".tasting_note").empty();
				$(".tasting_note").append(res);
			}
		},
		error: function (res) {
			alert("error");
		}
	});
}
/*시음노트*/
function like(use_review_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "L",
			use_review_seq		: use_review_seq
		},
		success : function(result){
			$(".tasting_note").empty();
			getNoteList(notesort);
		},
		error : function(a, b, c){
			alert('오류가 발생했습니다.');
		}
	});
}
function unlike(use_review_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "UL",
			use_review_seq		: use_review_seq
		},
		success : function(result){
			$(".tasting_note").empty();
			getNoteList(notesort);
		},
		error : function(a, b, c){
			alert('오류가 발생했습니다.');
		}
	});
}
function followEvent(follow_id, follow_target_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "F",
			'follow_id'			: follow_id,
			follow_target_seq	: follow_target_seq
		},
		success : function(result){
			$(".tasting_note").empty();
			getNoteList(notesort);
		},
		error : function(a, b, c){
			alert('삭제 중 오류가 발생했습니다.');
		}
	});
}
/*시음노트 정렬*/
$(document).ready(function(){ 
	$('.js_select li').click(function(){ 
		$('.js_select_btn li button').removeClass('on');
		$(this).children().addClass('on');
		if( $(this).index() === 0 ){
			$(".sort_btn").text("베스트순");
			notesort  = "best";
			getNoteList(notesort);
		}else if($(this).index() === 1){
			$(".sort_btn").text("최신등록순");
			notesort  = "new";
			getNoteList(notesort);
		}else if($(this).index() === 2){
			$(".sort_btn").text("높은 별점 순");
			notesort  = "point_high";
			getNoteList(notesort);
		}else if($(this).index() === 3){
			$(".sort_btn").text("낮은 별점 순");
			notesort  = "point_low";
			getNoteList(notesort);
		}
	})
	$("#header .top").addClass('mb_hidden');
	$("#header .bottom").addClass('mb_hidden');
	$("#contents").addClass('mb_margin_0');
	if(tabIdx !== -1){
		var currentTab = currentUrl.substr(tabIdx+4);
		currentUrl = currentUrl.slice(0, tabIdx-1);
		tabFn(currentTab);
	}
	$('.tab_area .tab_btn_area button').on('click', function(){
		var parentIdx = $(this).parent().index();
		tabFn(parentIdx);
	});
})
function noteSearch(){
	note_keyword = $("#note_keyword").val();
	getNoteList(notesort);
}
/*시음노트 정렬*/
function moreShowList(idx) {
// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
	if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
		if(wineryScroll){
			getwineryList('add');
		}else{
//             getList('add');
		}
	}
}
var wineryScroll = false;
function tabFn(idx){
	var parentIdx = Number(idx);
	//history.pushState(null, null, currentUrl+'&tab='+parentIdx); 함께보면좋은와인 에러나서 사용x
	// 페이지 로딩 최적화하기 위해 사용(사용자가 보지 않는 컨텐츠라면 리스트 호출 x, 최초 클릭시에만 실행 )
	wineryScroll = false;
	if( parentIdx === 2 && withgoodwine === false ) {
		// 함께 보면 좋은 와인
		window.removeEventListener('scroll', moreShowList);
//         getList('init');
		withgoodwine = true;
		window.addEventListener('scroll', moreShowList);
	}else if(  parentIdx === 3 && winery === false ){
		window.removeEventListener('scroll', moreShowList);
		// 동일 와이너리 상품
		getwineryList('init');
		winery = true;
		wineryScroll = true;
			window.addEventListener('scroll', moreShowList);
	}else if(  parentIdx === 4 && tastingNote === false ){
		// 시음노트
		getNoteList(notesort);
		tastingNote = true;
	}else{
		console.log('?!!')
	}
	$('.tab_area .tab_btn_area button').removeClass('on');
	$('.tab_area .tab_btn_area button').parent().eq(parentIdx).find('button').addClass('on');
	var newBox = $('.tab_area .tab_con').eq(parentIdx);
	$('.tab_con.prd_con .main_img .slider').slick('unslick');
	$('.tab_area .tab_con').removeClass('on');
	newBox.addClass('on');
	// console.log(newBox);
	$(newBox).find('.main_img .slider').not('.slick-initialized').slick({
		lazyLoad: 'ondemand',
		dots: true,
		arrows: true
	});
}
//test
function chklayer(){
	//바로구매시 첫번째 상품 체크
	var i = 0;
	$('input:checkbox[name="check[]"]').each(function() {
		if(i===0 && $(this).is(":disabled")===false ){
			this.checked = true;
		}
		i++;
	});
		commonUI.layer.open('login_layer');
	}
//리뷰
var tr_page;
// getTastingReview('init');
function getTastingReview(mode){
	if( mode=="init"){
		tr_page = 1;
		$('#tasting_page').val(1);
	}else{
		//page += 1;
		tr_page = parseInt($('#tasting_page').val())+1;
	}
	$.ajax({
		type: "get",
		url : "/shop/product/tasting_view_ajax",
		data: {'mode' : mode, 'page' : tr_page, product_cd: '03P858'},
		success : function (res) {
			if($.trim(res) == ""){
				alert('마지막 페이지입니다.');
				return;
			}else{
				if(mode == 'init'){
					$(".tasting_review_lists").empty();
				}else{
					scrollVal=true;
					$('#tasting_page').val(parseInt($('#tasting_page').val())+1);
				}
				$(".tasting_review_lists").append(res);
				$(".tasting_review_lists>li").each(function(index, item){
					var rvImgLi = $(this).find("li").length;
					if(rvImgLi >= 5){
						$(this).find(".img").children().addClass("more");
					}
				});
			}
		},
		error: function (res) {
			alert("error");
		}
	});
}
</script>
<!--백로그 API-->
<script type="text/JavaScript">
var cmd='';
if( cmd.length>2 ) {
	console.log(cmd);
	console.log('적재');
	RC_Method({
		sign_up_data: "",
		page_type:"product_view", 
		behavior:"page_view",
		extra : {
			list_type: cmd,
			product_id: '03P858'
		}
	});
}else{
	console.log('product_view');
	//중복 전달 방지하기 위해 푸터부분은 예외로 둠
	RC_Method({
		sign_up_data: "",
		page_type : 'product_view', 
		behavior:"page_view"
	});
}
</script>
<!--백로그 API-->
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
	var page = '';
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