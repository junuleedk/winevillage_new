<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ Shop    </title>
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
			<h2 class="my_value js_selectBtn">알파박스 앤 다이스 솔라 </h2>
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
				<div class="main_img_area" style="background:#E0D8EA">
					<div class="main_img js_main_img easyzoom easyzoom--overlay easyzoom--with-toggle">
						<img data-src="../../uploads/product/550/2783_detail_030.png" alt="" class="lozad">
						<!-- 일반 이미지 경로가 들어가야합니다. -->
						<!-- 아래에도 확대이미지 경로를 넣어주셔야합니다. -->
						<div class="easyzoom-flyout zoom_btn_active lozad" style="display:none">
							<img data-src="../../uploads/product/550/2783_detail_030.png" style="position: absolute; top: 0px; left: 0px;">
						</div>
					</div>
					<div class="label_wrap">
					</div>
				</div>
				<div class="thumbnail">
					<ul>
						<li class="on">
							<button type="button" class='thumnail_btn_js'>
							<picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="../../uploads/product/550/2783_detail_030.png" media="(min-width:768px)">
								<!-- pc이미지 -->
								<source srcset="../../uploads/product/550/2783_detail_030.png" media="(max-width:767px)">
								<!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="../../uploads/product/550/2783_detail_030.png" alt="">
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
						<p class="prd_name">알파박스 앤 다이스 솔라</p>
						<p class="prd_en_name">ALPHA BOX AND DICE XOLA</p>
						<p class="prd_info">알리아니코 품종이 가진 이중성을 완벽하게 조화시킨 부띠끄 와인</p>
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
						<li class="label" style="background:#E0D8EA">레드</li>
						<li class="label" style="background:#E0D8EA">호주</li>
						<li class="label" style="background:#E0D8EA">기타</li>
					</ul>
					<div class="price_box">
						<p class="price info_box">
							<ins class="out out_price">70,000원</ins><br>
							<ins class="out tel">매장문의<a href="javascript:commonUI.layer.open('store_layer')">문의 매장정보 열기</a></ins>
						</p>
					</div>
					<!-- 픽업제외매장 -> 픽업가능매장으로 변경 -->
					<!-- //픽업제외매장 -> 픽업가능매장으로 변경 -->
					<div class="buy_process">
						<div class="black_bg">&nbsp;</div>
						<div class="hide_process">
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt wish_btn" onclick='commonUI.layer.open("login_layer");'>찜하기</button>
							<!-- 매장문의 -->
							<button type="button" class="btn_txt cart_btn buy_process_btn" disabled>구매 희망 시, 방문가능한 매장으로 문의해주세요.</button>
						</div>
					</div>
					<dl class="details">
						<dt>바디</dt>
						<dd>
							<span class="label">가벼움</span>
							<span class="label">약간가벼움</span>
							<span class="label" style="background:#E0D8EA">중간</span>
							<span class="label">약간무거움</span>
							<span class="label">무거움</span>
						</dd>
						<dt>산도</dt>
						<dd>
							<span class="label">낮음</span>
							<span class="label">약간낮음</span>
							<span class="label" style="background:#E0D8EA">중간</span>
							<span class="label">약간높음</span>
							<span class="label">높음</span>
						</dd>
						<dt>타닌</dt>
						<dd>
							<span class="label">약함</span>
							<span class="label">약간약함</span>
							<span class="label">중간</span>
							<span class="label" style="background:#E0D8EA">약간강함</span>
							<span class="label">강함</span>
						</dd>
						<dt>알코올</dt>
						<dd>
							<span class="label">낮음(~11%)</span>
							<span class="label">중간(12~13%)</span>
							<span class="label" style="background:#E0D8EA">높음(14%+)</span>
						</dd>
					</dl>
					<div class="wn_babel">
						<div class="box">
							<a href="https://www.vivino.com/NL/en/alpha-box-and-dice-xola/w/4658173" target="_blank">
							<div class="img">
								<img src="../../asset/images/shop/default/ico_vivino_small.png" alt="">
							</div>
							<div class="info">
								<strong>4.1</strong>
								<div class="star_area">
									<div class="star_cover" style="width:82%">&nbsp;</div>
									<div class="star">&nbsp;</div>
								</div>
								<p>290 ratings</p>
							</div>
							</a>
						</div>
					</div>
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
			</div>
			<div class="tab_area">
				<div class="tab_btn">
					<ul class="tab_btn_area">
						<li>
							<button type="button" class="on">
								<span>PRODUCT</span>
							</button>
						</li>
						<li>
							<button type="button" onclick="RC_Method({page_type:'product_page', behavior: 'user_action', action: 'winery_info'})">
								<span>RELATED PRODUCT</span>
							</button>
						</li>
						<li>
							<button type="button" onclick="RC_Method({page_type:'product_page', behavior: 'user_action', action: 'winery_info'})">
								<span>REVIEW (1)</span>
							</button>
						</li>
					</ul>
				</div>
				<div class="tab_con detail_con on">
					<img src="../../uploads/editor/data/editor/goods/210810/102_105204.png" title="102_105204.png" class="js-smart-img">
					<!-- <p style="text-align: center;" align="center"> <img src=" /uploads/editor/data/editor/goods/210810/9468c676ae990ab30b0fbba4d5d1dafc_100445.png" title="9468c676ae990ab30b0fbba4d5d1dafc_100445.png" class="js-smart-img"> </p> -->
					<div class="txt_area">
						<p>
							<span style="font-family: arial; font-size: 9pt;"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b>
								<span style="font-family: arial; font-size: 9pt;">&gt;구매예약 안내&lt;</span>
							</b>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<span style="font-family: arial; font-size: 9pt;">
								<b style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif;">
									<span style="font-family: arial; font-size: 9pt;">·</span>
								</b>
								<span style="color: rgb(255, 0, 0);">상품 이미지에 표시된 빈티지는 상품 이해를 돕기 위한 샘플 이미지입니다. 빈티지가 상품명에 별도 표기되지 않은 상품은 특정 빈티지로 입고되지 않습니다.</span>
							</span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">· </span>
							</b>
							<span style="font-family: arial; font-size: 9pt; color: rgb(255, 0, 0);">주류통신 판매에 대한 명령위임 고시에 따라 주류상품은 온라인 결제는 가능하나 배송은 불가합니다.</span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">· 일부 제품의 경우 수입사의 사정에 따라 취소 및 환불처리가 될 수 있습니다.</span>
							</b>
							<span style="font-family: arial; font-size: 9pt; color: rgb(255, 0, 0);"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">·</span>
							</b>
							<span style="font-family: arial; font-size: 9pt;">
								<span style="color: rgb(0, 0, 0);">인터넷PC와 모바일앱(App)을 통해 신용카드 결제 또는 간편 결제중 하나를 선택하고 </span>
							</span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<span style="font-family: arial; font-size: 9pt; color: rgb(255, 0, 0);"> 원하시는 수령 매장과 일자를 지정한 후 해당일에 방문 수령 가능합니다.</span>
							<span style="font-size: 9pt; font-family: arial;"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">· </span>
							</b>
							<span style="font-family: arial; font-size: 9pt;">주류가 아닌 상품(악세사리 등)은 온라인 구매와 배송이 가능합니다. (주류가 아닌 상품의 배송 별도 안내)</span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<span style="font-family: arial; font-size: 9pt;"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 10pt;">
								<span style="font-family: arial; font-size: 9pt;">* 주류상품의 매장 방문수령</span>
							</b>
							<span style="font-family: arial; font-size: 9pt;"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">· </span>
							</b>
							<span style="font-family: arial; font-size: 9pt;">수령은 예약 당사자에 한하여 가능하며, 제3자 위임은 불가합니다.</span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">·</span>
							</b>
							<span style="font-family: arial; font-size: 9pt;"> 온라인 구매 예약을 통한 방문 수령시 각 매장의 샵마스터는 상품 수령을 돕고자 아래의 항목을 확인합니다.</span>
							<span style="font-family: arial; font-size: 9pt;"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;"></span>
							</b>
							<span style="font-family: arial; font-size: 9pt;">①</span>
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;"></span>
							</b>
							<span style="font-family: arial; font-size: 9pt;">수령자 본인 확인 (회원가입시 등록된 이름, 연락처 뒷번호 4자리, 본인확인 및 성인인증을 위한 신분증)</span>
							<span style="font-family: arial; font-size: 9pt;"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<span style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<b style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif;">
									<span style="font-family: arial; font-size: 9pt;"></span>
								</b>
							</span>
							<span style="font-family: arial; font-size: 9pt;">②</span>
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;"></span>
							</b>
							<span style="font-family: arial; font-size: 9pt;">결제 완료시 발송되는 주문번호와 주문내용 SMS 확인</span>
						</p>
						<div style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin: 0px; padding: 0px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<p>
								<span style="font-family: 나눔고딕, NanumGothic; font-size: 10pt;">
									<b style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif;"><br></b>
								</span>
							</p>
							<p>
								<span style="font-family: 나눔고딕, NanumGothic; font-size: 10pt;">
									<b style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif;">
										<span style="font-family: arial; font-size: 9pt;">* 구매예약시 유의사항 </span>
									</b>
								</span>
							</p>
						</div>
						<div style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin: 0px; padding: 0px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">· </span>
							</b>
							<span style="font-family: arial; font-size: 9pt;">구매예약 상품의 매장별 재고, 상세 빈티지 확인은 해당 매장에 문의주시기 바랍니다.</span>
							<br>
						</div>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<span style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<b style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif;">
									<span style="font-family: arial; font-size: 9pt;">·</span>
								</b>
							</span>
							<span style="font-size: 9pt; font-family: arial;"> 구매예약한 상품은 수령 지정일로부터 5일 이내에만 해당 매장에서만 수령이 가능하며, </span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<span style="font-size: 9pt; font-family: arial;"> 지정일로부터 5일 이후 해당 매장에서 수령이 필요하신 경우 해당 매장에 문의하여 수령 일정을 조정 하여 주시기 바랍니다.</span>
						</p>
						<p>
							<span style="font-family: arial; font-size: 9pt;"></span>
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 10pt;">
								<span style="font-family: arial; font-size: 9pt;">&gt;주류상품&lt;</span>
							</b>
							<span style="font-size: 9pt; font-family: arial;"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<span style="font-family: arial; font-size: 9pt;">
								<b style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif;">
									<span style="font-family: arial; font-size: 9pt;">·</span>
								</b> 교환 및 반품은 상품 수령 후 7일 이내 가능합니다. 
							</span>
							<span style="font-family: arial; font-size: 9pt;"></span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">·</span>
							</b>
							<span style="font-family: arial; font-size: 9pt;"> 해당 예약 상품은 타상품으로 교환이 불가능 합니다. </span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">·</span>
							</b>
							<span style="font-family: arial; font-size: 9pt;"> 증정품이 있을 경우 증정품을 사용한 경우 반품(환불)이 불가합니다.</span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">·</span>
							</b>
							<span style="font-family: arial; font-size: 9pt;"> 주류상품의 교환 및 반품은 와인나라 직영 매장에서만 가능합니다. </span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">·</span>
							</b>
							<span style="font-family: arial; font-size: 9pt;"> 상품(또는 케이스) 택(tag)제거,전면부 라벨 손상(오염),개봉으로 상품 가치 훼손 시에는 상품수령후 7일 이내라도 교환 및 반품이 불가능합니다.</span>
						</p>
						<p style="font-family: Poppins, 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', malgun, Apple-Gothic, 애플고딕, Tahoma, dotum, 돋움, gulim, 굴림, sans-serif; margin-bottom: 3px; font-size: 13px; background-color: rgb(255, 255, 255);">
							<b style="font-family: 나눔고딕, NanumGothic; font-size: 13.3333px;">
								<span style="font-family: arial; font-size: 9pt;">·</span>
							</b>
							<span style="font-family: arial; font-size: 9pt;"> 일부 상품은 신규 빈티지 출시, 수입 가격 변동 등 제조사 사정으로 가격이 변동될 수 있습니다.</span>
							<span style="font-family: arial; font-size: 9pt;"></span>
						</p>
					</div>
				</div>
				<div class="tab_con prd_con">
					<ul class="n_prd_list" id="SimilarWine">
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03P865" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/5cbb82ccdcb8b5538f5857ac830b81e5.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/5cbb82ccdcb8b5538f5857ac830b81e5.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/5cbb82ccdcb8b5538f5857ac830b81e5.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03P865 " id="wish_03P865" onclick="product.likeProduct('03P865');"><span>찜하기</span></button>
									</div>
									<p class="vivino">VIVINO<em>4.4</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03P865">알파박스 앤 다이스 헤라클레스<span class="en">ALPHA BOX AND DICE HERCULES</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">쉬라즈</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!--  
											<span>24%</span>
											-->
											<!--
											<del>130,000원</del>
											-->
											<ins>99,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03P861" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/3465e954224ca6261e56f55276333029.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/3465e954224ca6261e56f55276333029.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/3465e954224ca6261e56f55276333029.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<p class="vivino">VIVINO<em>4.0</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03P861">알파박스 앤 다이스 아포스틀<span class="en">ALPHA BOX AND DICE APOSTLE</span></a>
										</p>
										<p class="prd_info">
											예수의 피를 모델로 강렬하고 우아함을 표현한 부띠끄 와인
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">쉬라즈</span>
									</div>
									<div class="price_area">
										<p class="price">
											<ins class="out">매장문의</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03P857" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/1858_detail_01.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/1858_detail_01.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/1858_detail_01.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03P857 " id="wish_03P857" onclick="product.likeProduct('03P857');"><span>찜하기</span></button>
									</div>
									<p class="vivino">VIVINO<em>4.2</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03P857">알파박스 앤 다이스 블러드 오브 쥬피터<span class="en">ALPHA BOX AND DICE BLOOD OF JUPITER </span></a>
										</p>
										<p class="prd_info">
											알파 박스 앤 다이스에서 사람들이 가장 많이 찾으면서도 희귀한 존재. 수퍼 투스칸을 좋아한다면 실망하지 않을 와인.
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">산지오베제</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!--  
											<span>30%</span>
											-->
											<!--
											<del>70,000원</del>
											-->
											<ins>49,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03P860" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/274bf308b075ed1755f2a13c02ccb74a.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/274bf308b075ed1755f2a13c02ccb74a.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/274bf308b075ed1755f2a13c02ccb74a.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<p class="vivino">VIVINO<em>4.2</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03P860">알파박스 앤 다이스 아이코나<span class="en">ALPHA BOX AND DICE ICONA</span></a>
										</p>
										<p class="prd_info">
											맥라렌베일에서 표현할 수 있는 카베르네소비뇽의 진수를 보여주는 싱글빈야드 와인
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<ins class="out">매장문의</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03P859" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/37be0197b88bcf0bf3fed79bf18db85c.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/37be0197b88bcf0bf3fed79bf18db85c.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/37be0197b88bcf0bf3fed79bf18db85c.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<p class="vivino">VIVINO<em>4.0</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03P859">알파박스 앤 다이스 시렌<span class="en">ALPHA BOX AND DICE SIREN</span></a>
										</p>
										<p class="prd_info">
											지중해성 기후에서 재배한 네로다볼라 품종의 독특한 매력을 느낄 수 있는 와인. 오크의 직접적인 영향을 배제하기 위해 오래된 부르고뉴산 프렌치 오크통을 사용하고 장기간 천천히 부드러운 숙성을 시킨 와인.
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<ins class="out">매장문의</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03Q462" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/39b6eb54c95c3e1a84dabde3c6b68094.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/39b6eb54c95c3e1a84dabde3c6b68094.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/39b6eb54c95c3e1a84dabde3c6b68094.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<p class="vivino">VIVINO<em>4.0</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03Q462">알파박스 앤 다이스 미스트레스<span class="en">ALPHA BOX AND DICE MISTRESS</span></a>
										</p>
										<p class="prd_info">
											포르투갈의 토착품종으로 포트와인을 만들때 많이 사용되는 Touriga Nacional 품종과 스페인 리오하의 템프라니요 품종, 손으로 수확한 까리냥 품종을 사용하여 이베리아반도 스타일의 블렌딩을 보여주는 와인.
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<ins class="out">매장문의</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#D7F9E2">
									<a href="/shop/product/product_view?product_cd=04D680" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/e0a2993e111d1f5f59b09d321d6f97f3.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/e0a2993e111d1f5f59b09d321d6f97f3.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/e0a2993e111d1f5f59b09d321d6f97f3.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<p class="vivino">VIVINO<em>3.9</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=04D680">알파박스 앤 다이스 데드 와인메이커스 소사이어티 뮈스카<span class="en">ALPHA BOX AND DICE DEAD WINEMAKERS SOCIETY MUSCAT</span></a>
										</p>
										<p class="prd_info">
											화이트와인을 껍질과 함께 침용시키고 오크통에 숙성하여 만든 오렌지 와인.
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#D7F9E2">디저트</span><span style="background:#D7F9E2">호주</span><span style="background:#D7F9E2">모스카토</span>
									</div>
									<div class="price_area">
										<p class="price">
											<ins class="out">매장문의</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#F6EC9C">
									<a href="/shop/product/product_view?product_cd=03P853" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/1856_detail_055.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/1856_detail_055.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/1856_detail_055.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<p class="vivino">VIVINO<em>3.7</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03P853">알파박스 앤 다이스 골든 멀렛 퓨리<span class="en">ALPHA BOX AND DICE GOLDEN MULLET FURY (CORE)</span></a>
										</p>
										<p class="prd_info">
											눈길을 사로잡는 황금빛과 입에 착 붙는 부드러운 질감, 입에 퍼지는 달콤한 타닌감이 매력적인 와인.
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#F6EC9C">레드</span><span style="background:#F6EC9C">호주</span><span style="background:#F6EC9C">세미용</span>
									</div>
									<div class="price_area">
										<p class="price">
											<ins class="out">매장문의</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0EBF8">
									<a href="/shop/product/product_view?product_cd=02A731" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/9093f593b52665f090cc6d382936b147.png" media="(min-width:768px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/9093f593b52665f090cc6d382936b147.png" media="(max-width:767px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/9093f593b52665f090cc6d382936b147.png" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_02A731 " id="wish_02A731" onclick="product.likeProduct('02A731');"><span>찜하기</span></button>
									</div>
									<p class="vivino">VIVINO<em>3.9</em></p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=02A731">알파박스 앤 다이스 타로 프로세코<span class="en">ALPHA BOX AND DICE TAROT PROSECCO</span></a>
										</p>
										<p class="prd_info">
											섬세한 아로마와 프레쉬한 산도가 매력적인 프로세코 와인으로 더운 여름 시원하게 마셨을 때 청량감을 느낄 수 있는 와인.
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0EBF8">스파클링</span><span style="background:#E0EBF8">호주</span><span style="background:#E0EBF8">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!--  
											<span>29%</span>
											-->
											<!--
											<del>35,000원</del>
											-->
											<ins>25,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
					</ul>
					<div class="btn_area" id="more_button_wine">
						<button type="button" onclick="getList('add')" class="btn_txt"><span>더보기</span></button>
					</div>
				</div>
				<!--<div class="tab_con detail_con">
					<p style="text-align: center;" align="center"> <img src=" /uploads/editor/data/editor/goods/210810/9468c676ae990ab30b0fbba4d5d1dafc_100445.png" title="9468c676ae990ab30b0fbba4d5d1dafc_100445.png" class="js-smart-img"> </p>                </div>-->
				<!-- <div class="tab_con food_con">
					<div class="js_tab">
						<ul class="js_tabBtn"></ul>
					</div>
				</div> -->
				<div class="tab_con review_con">
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
	var product_cd = '03P858';
	var words = [];	// 키워드 담을 배열
	var mobile_chk = 'WEB';
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
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