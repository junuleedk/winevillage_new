<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 주문서 작성</title>
<%@ include file="../common/common.jsp" %>
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

<!-- header -->
<%@ include file="../common/header.jsp" %>
<!-- //header -->
<%@ include file="../common/layer.jsp" %>
<%@ include file="../common/script.jsp" %>

<!-- contents -->
<section id="contents" class="mb_margin_0" style="margin-top: 188px;">
	<div class="lnb order_lnb lnb_wrap step_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand" id="select_brand">
				<h2 class="my_value js_selectBtn">주문서 작성</h2>
			</div>
		</div>
		<!-- 주문서 작성페이지 -->
		<div class="pc_lnb order_tit">
			<div class="page_tit">
				<picture>
				<source srcset="../../asset/images/shop/order/pc_smart_pickup.jpg" media="(min-width:768px)">
				<source srcset="../../asset/images/shop/order/mb_smart_pickup.jpg" media="(max-width:767px)">
				<img src="../../asset/images/shop/order/pc_smart_pickup.jpg" alt="스마트 픽업" draggable="false">
				</picture>
			</div>
		</div>
	</div>
	<div class="wrap">
		<script type="text/javascript" src="../../asset/js/wn.order.js?v=240318123259"></script>
		<style>
			.quick_menu{display:none}
		</style>
		<form action="https://www.winenara.com/shop/order/order_write" id="orderForm" name="orderForm" method="post" accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token" value="08633b4733f552562e46d53b7a4091b7">
			<input type="hidden" name="session_id" id="session_id" value="sdt8jf9apfihit38e89d33fpcgn8uflm">
			<div class="content order order_write_page">
				<div class="c_lists">
					<ul>
						<li>
						<div class="box ip_img">
							<picture style="background:#E0D8EA">
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" media="(min-width:768px)">
								<!-- pc이미지 -->
								<source srcset="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" media="(max-width:767px)">
								<!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" alt="">
								<!-- pc이미지 -->
							</picture>
						</div>
						<div class="box con">
							<div class="more_info">
								<p class="prd_name">
									<a href="/shop/product/product_view?product_cd=03T999">디아블로 데블스 카나발 스위트</a>
								</p>
								<!-- <div class="icon type">
									<span class="" style="background:#;">&nbsp;</span>레드
								</div>
								<div class="icon country">
									<span><img src="../../asset/images/shop/product/iocn/g505.png" alt=""></span>칠레
								</div> -->
								<span class="label" style="background:#E0D8EA">레드</span><span class="label" style="background:#E0D8EA">칠레</span>
								<!-- <span class="icon box"></span> -->
								<!-- 픽업제외매장 -->
								<!-- //픽업제외매장 -->
							</div>
						</div>
						<div class="box opt mb_hidden">
							<!-- <span>용량 : 750ML</span>
							<span>빈티지 : 2015년</span> -->
							<span>용량 : </span>
						</div>
						<div class="box price_amount">
							<div class="box price">
								<!--p class="sub_txt">20% 할인 남은 시간 : 1일 10시간 27분</p-->
								<ins>14,900원</ins>
								<!--del>50,000원</del-->
								<span>1EA</span>
							</div>
						</div>
						</li>
						<input type="hidden" id="cNo" name="cNo" value="65277">
						<input type="hidden" id="qty65277" name="qty65277" value="1">
						<input type="hidden" id="sum_product_price65277" name="sum_product_price65277" value="14900">
						<!-- 합계액 -->
						<input type="hidden" id="product_cd65277" name="product_cd65277" value="03T999">
						<!-- 상품코드 -->
						<input type="hidden" id="free_trans_yn65277" name="free_trans_yn65277" value="Y">
						<!-- 상품별 무료배송 여부 -->
						<input type="hidden" id="coupon_yn65277" name="coupon_yn65277" value="Y">
						<!-- 상품별 쿠폰적용 여부 -->
						<input type="hidden" id="reserve_price65277" name="reserve_price65277" value="0">
						<!-- 상품별 적립금 -->
					</ul>
				</div>
				<div class="form_area left">
					<div class="f_top">
						<h2>주문자 정보</h2>
						<!-- <div class="checkbox type2">
							<input type="checkbox" id="info_update" name="info_update" value="Y">
							<label for="info_update">회원정보로 자동 업데이트</label>
						</div> -->
					</div>
					<ul>
						<li>
							<div class="l_tit">
								<label for="or_name">이름</label>
							</div>
							<div class="form_box">
								<input type="text" id="or_name" name="or_name" placeholder="이름을 입력해주세요." value="고객" readonly="">
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="or_email">이메일</label>
							</div>
							<div class="form_box">
								<input type="text" id="or_email" name="or_email" placeholder="이메일을 입력해주세요." value="gogek1234@gmail.com">
								<!-- <p class="input_info_txt">이메일을 입력해주세요.</p> -->
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="or_hp">연락처</label>
							</div>
							<div class="form_box">
								<input type="text" id="or_hp" name="or_hp" placeholder="'-'제외한 숫자만 입력해주세요." value="01099999999">
								<!-- <p class="input_info_txt">'-'제외한 숫자만 입력해주세요.</p> -->
							</div>
						</li>
					</ul>
					<input type="hidden" id="home_zip" value="">
					<input type="hidden" id="home_addr1" value="">
					<input type="hidden" id="home_addr2" value="">
					<div class="f_top">
						<h2>수령/배송정보</h2>
						<div class="checkbox type2">
							<input type="checkbox" name="copy_mem_info" id="copy_mem_info" value="Y" onclick="order.setReAddr();">
							<label for="copy_mem_info">주문자와 동일</label>
						</div>
					</div>
					<ul>
						<!-- <li>
							<div class="l_tit">
								<p>수령방법</p>
							</div>
							<div class="form_box">
								<div class="radio_area col3">
									<div class="radiobox type2 ">
										<input type="radio" name="receive_way" id="pickup" checked value="P">
										<label for="pickup">직접픽업</label>
									</div>
								</div>
							</div>
						</li> -->
						<input type="hidden" name="order_gb" value="P">
						<!-- 수령방법 - 직접픽업 선택시 -->
						<li class="receive_way_con pickup">
							<ul>
								<li>
									<div class="l_tit">
										<label for="re_name">수령자명</label>
									</div>
									<div class="form_box">
										<input type="text" id="receipt_name" name="re_name" placeholder="이름을 입력해주세요.">
										<p class="input_info_txt">
											수령자명을 입력해주세요.
										</p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="re_hp">연락처</label>
									</div>
									<div class="form_box">
										<input type="text" id="receipt_tel" name="re_hp" placeholder="'-'제외한 숫자만 입력해주세요.">
										<p class="input_info_txt">
											연락처를 입력해주세요.
										</p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="pickup_store_cd">수령장소</label>
									</div>
									<input type="hidden" id="store_holiday" name="store_holiday">
									<div class="form_box">
										<select name="pickup_store_cd" id="pickup_store_cd">
											<option value="">매장 선택</option>
											<option value="2212">경희궁점 </option>
											<option value="2214">코엑스점 </option>
											<option value="2215">서래마을점 </option>
											<option value="2217">일산점 </option>
											<option value="2218">홍대점 </option>
											<option value="2219">시청점 </option>
											<option value="2220">성수점 </option>
											<option value="2221">압구정점 </option>
											<option value="2222">신용산점 </option>
											<option value="2223">송도점 </option>
											<option value="2224">MOWa Shop </option>
										</select>
									</div>
								</li>
								<li class="date">
									<div class="l_tit">
										<label for="receipt_date">수령일</label>
									</div>
									<div class="form_box">
										<div class="checkbox type2 " id="today_checkbox">
											<input type="radio" id="r_today" name="pickup_date" value="2024-04-19">
											<label for="r_today">오늘 (04월19일)</label>
										</div>
										<div class="checkbox type2 " id="tomorrow_checkbox">
											<input type="radio" id="r_tomorrow" name="pickup_date" value="2024-04-20">
											<label for="r_tomorrow">내일 (04월20일)</label>
										</div>
										<div class="checkbox type2" id="next_tomorrow_checkbox">
											<input type="radio" id="r_next_tomorrow" name="pickup_date" value="2024-04-21">
											<label for="r_next_tomorrow">모레 (04월21일)</label>
										</div>
										<div class="pick_area">
											<div class="checkbox type2">
												<input type="radio" id="r_day_pick" name="pickup_date">
												<label for="r_day_pick">당일픽업</label>
											</div>
											<div class="datepicker">
												<input type="text" id="receipt_date" placeholder="수령일을 선택해주세요." readonly="readonly" class="hasDatepicker"><button type="button" class="ui-datepicker-trigger">선택</button>
											</div>
											<button id="store_map" type="button" class="btn_txt btn_black" onclick="">매장위치</button>
										</div>
										<p class="input_info_txt">
											<b id="store_info_basic">매장을 선택하면 매장 영업 시간이 표시됩니다.</b>
											<b id="weekdays_store_info_txt1" style="display:none">-“***점의</b><b id="weekdays_store_info_txt2" style="display:none">*월*일</b><b id="weekdays_store_info_txt3" style="display:none">영업시간은 **시 ~ **시입니다”</b>
											<b id="weekend_store_info_txt1" style="display:none">-“***점의</b><b id="weekend_store_info_txt2" style="display:none">*월*일</b><b id="weekend_store_info_txt3" style="display:none">영업시간은 **시 ~ **시입니다”</b><br>
											 - 주문하신 상품의 <em class="info">준비가 완료되면 알림톡을 통해 안내드릴 예정이오니, 꼭 확인 후 방문 부탁</em> 드립니다. <br>
											 - <em class="info">14시까지의 결제완료</em> 건은 <em class="info">익일 17시부터 수령 가능</em>합니다.<br>
											 - <em class="info">14시이후의 결제완료</em> 건은 <em class="info">익익일 17시부터 수령 가능</em>합니다.<br>
											 - <em class="info">금요일 14시까지의 결제완료</em> 건은 <em class="info">토/일/월 수령 가능</em>합니다. (일요일 코엑스점만 가능)<br>
											 - <em class="info">금요일 14시이후~월요일 14시까지의 결제완료</em> 건은 <em class="info">화요일 17시부터 수령 가능</em>합니다.<br>
											<b>- 주류통신 판매에 대한 명령위임 고시에 따라 주류상품은 <em class="info">온라인 결제 후 매장픽업</em>이 필요합니다.</b>
										</p>
									</div>
								</li>
								<li class="receipt_memo_con">
									<div class="l_tit">
										<label for="receipt_memo">요청사항</label>
									</div>
									<div class="form_box">
										<textarea name="trans_memo" id="receipt_memo" placeholder="내용을 입력해주세요."></textarea>
									</div>
								</li>
							</ul>
						</li>
						<!-- //수령방법 - 직접픽업 선택시 -->
					</ul>
				</div>
				<div class="form_area right">
					<div class="f_top">
						<h2>주문계산기</h2>
					</div>
					<ul>
						<li class="t_price">
							<div class="l_tit">
								<p>총 상품가격</p>
							</div>
							<div class="form_box">
								<p id="order_price_span">14,900원</p>
							</div>
						</li>
						<li class="coupon">
							<div class="l_tit">
								<label for="coupon">쿠폰할인</label>
							</div>
							<div class="form_box">
								<div class="ip_box">
									<input type="text" id="coupon_sale" name="coupon_sale" value="0" class="numeric" title="쿠폰할인금액" readonly="readonly">
								</div>
								<div class="btn_area col2">
									<button type="button" class="btn_txt" id="openCouponList"><span>쿠폰조회</span></button>
									<button type="button" class="btn_txt btn_lgray" onclick="order.CouponReSet();"><span>쿠폰리셋</span></button>
								</div>
							</div>
						</li>
						<li class="mileage">
							<div class="l_tit">
								<label for="mileage">마일리지</label>
							</div>
							<div class="form_box">
								<div class="ip_box">
									<input type="text" id="use_reserve" name="use_reserve" value="0" class="numeric" title="사용할 마일리지">
								</div>
								<p class="input_info_txt">
									(<span class="info"> 0P</span> 사용가능 )
								</p>
								<div class="checkbox type2">
									<input type="checkbox" id="all_use_reserve" value="Y">
									<label for="all_use_reserve">전액사용</label>
								</div>
							</div>
						</li>
						<li class="gift">
							<div class="l_tit">
								<label for="gift">기프트카드</label>
							</div>
							<div class="form_box">
								<div class="ip_box">
									<input type="text" id="use_giftcard" name="use_giftcard" value="0" class="numeric" title="사용할 키프트카드">
								</div>
								<p class="input_info_txt">
									(<span class="info"> 0원</span> 사용가능 )
								</p>
								<div class="checkbox type2">
									<input type="checkbox" id="all_use_giftcard" value="Y">
									<label for="all_use_giftcard">전액사용</label>
								</div>
							</div>
						</li>
					</ul>
					<input type="hidden" id="add_trans_yn" name="add_trans_yn" value="N">
					<!-- 도서산간지역 -->
					<input type="hidden" id="add_trans_price" name="add_trans_price" value="0">
					<!-- 추가배송비 -->
					<input type="hidden" id="buy_coupon_price" name="buy_coupon_price" value="14900">
					<!-- 쿠폰할인 가능금액 -->
					<input type="hidden" id="trans_price" name="trans_price" value="0">
					<!-- 현재 배송비 -->
					<input type="hidden" id="const_trans_limit" name="const_trans_limit" value="0">
					<!-- 기본 국내 배송비 제한금액 30000 -->
					<input type="hidden" id="const_trans_price" name="const_trans_price" value="4500">
					<!-- 기본 국내 배송비 3000 -->
					<input type="hidden" id="mb_reserve" name="mb_reserve" value="">
					<input type="hidden" id="mb_deposit" name="mb_deposit" value="0">
					<input type="hidden" id="mb_giftcard" name="mb_giftcard" value="0">
					<input type="hidden" id="order_price" name="order_price" value="14900">
					<!-- 최종금액(배송비 포함)-->
					<input type="hidden" id="order_origin_price" name="order_origin_price" value="14900">
					<!-- 총상품가(배송비 미포함)-->
					<input type="hidden" id="coupon_member_seq" name="coupon_member_seq">
					<!-- 쿠폰 사용번호 -->
					<input type="hidden" id="coupon_gb" name="coupon_gb">
					<!-- 무료배송쿠폰번호-->
					<input type="hidden" id="cart_seqs" name="cart_seqs">
					<input type="hidden" id="ticket_yn" name="ticket_yn" value="N">
					<div class="f_top">
						<h2>결제정보</h2>
					</div>
					<div class="t_price_info">
						<dl>
							<dt>총 구매금액</dt>
							<dd id="order_price_dd">14,900원</dd>
						</dl>
						<dl style="display:none">
							<dt>
							배송비 
							<!-- <span class="sub_txt">총 구입금액 5만원 이상 무료 배송</span> -->
							</dt>
							<dd id="trans_price_span">+ 0원</dd>
						</dl>
						<dl>
							<dt>쿠폰할인</dt>
							<dd id="coupon_span">- 0원</dd>
						</dl>
						<dl>
							<dt>마일리지</dt>
							<dd id="reserve_price_dd">- 0원</dd>
						</dl>
						<dl>
							<dt>기프트카드</dt>
							<dd id="giftcard_price_dd">- 0원</dd>
						</dl>
						<dl class="total">
							<dt>최종결제금액</dt>
							<dd id="finish_price_span">14,900원</dd>
						</dl>
						<dl class="pay">
							<dt>결제수단</dt>
							<dd>
								<div class="radiobox type2">
									<input type="radio" name="otype_cd" id="otype_cd_20" value="20" checked="">
									<label for="otype_cd_20">신용카드</label>
								</div>
								<!-- <div class="radiobox type2">
									<input type="radio" name="otype_cd" id="otype_cd_10" value="10">
									<label for="otype_cd_10">가상계좌</label>
								</div>
								<div class="radiobox type2">
									<input type="radio" name="otype_cd" id="otype_cd_30" value="30">
									<label for="otype_cd_30">실시간계좌이체</label>
								</div> -->
								<div class="radiobox type2">
									<input type="radio" name="otype_cd" id="otype_cd_70" value="70">
									<label for="otype_cd_70">카카오페이</label>
								</div>
								<div class="radiobox type2">
									<input type="radio" name="otype_cd" id="otype_cd_60" value="60">
									<label for="otype_cd_60">페이코</label>
								</div>
								<div class="radiobox type2">
									<input type="radio" name="otype_cd" id="otype_cd_40" value="40">
									<label for="otype_cd_40">휴대폰결제</label>
								</div>
							</dd>
						</dl>
					</div>
					<!-- <p class="txt">
					- 가상계좌, 실시간계좌이체 중 세금계산서 발행을 원하실 경우 상단 ‘배송 시 요구사항’에 메모하시거나 1:1 게시판에 요청하여 주시기 바랍니다.<br>
					- 부가세법 시행령에 따라 지출증빙용 현금영수증을 신청하신 경우 세금계산서 발급이 가능하지 않습니다.
					</p> -->
				</div>
				<div class="btn_area col2">
					<button type="button" class="btn_txt" onclick="location.href='/shop/cart/cart_lists'"><span>취소</span></button>
					<button type="button" class="btn_txt btn_black" onclick="order.orderSubmit();"><span>주문하기</span></button>
				</div>
			</div>
			<!-- 매장위치 레이어 -->
			<div class="layer store_layer" id="store_layer">
				<div class="display_table">
					<div class="table_cell">
						<div class="layer_area">
							<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
							<div class="layer_con">
								<div id="daumRoughmapContainer1704935441335" name="daumRoughmap" class="root_daum_roughmap root_daum_roughmap_landing">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //매장위치 레이어 -->
		</form>
	</div>
	<!-- kakao 지도 -->
	<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
	<script charset="UTF-8" src="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/9148b03e/roughmapLander.js"></script>
	<script charset="UTF-8">
		// new daum.roughmap.Lander({
		//     "timestamp" : "1660624714871",
		//     "key" : "2bdon",
		//     "mapWidth" : "640",
		//     "mapHeight" : "360"
		// }).render();
		function openStoreLayout(code, key) {
			$("div[name='daumRoughmap']").empty();
			$("div[name='daumRoughmap']").attr("id", "daumRoughmapContainer"+code);
			new daum.roughmap.Lander({
				"timestamp" : code,
				"key" : key,
				"mapWidth" : "640",
				"mapHeight" : "360"
			}).render();
			commonUI.layer.open('store_layer', { bg : true, alert : true });
		}
	</script>
	<!-- //kakao 지도 -->
	<!-- DAUM 주소 API -->
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
	<script charset="UTF-8" type="text/javascript" src="https://t1.daumcdn.net/postcode/api/core/221018/1666013742754/221018.js"></script>
	<div id="daum_layer" style="display:none;position:fixed;overflow:hidden;z-index:101;-webkit-overflow-scrolling:touch;">
		<img src="https://t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="Address.Close()" alt="닫기 버튼">
	</div>
	<!-- DAUM 주소 API -->
	<!-- KCP -->
	<div id="kcpReturn">
	</div>
	<!-- //KCP -->
	<!-- KCP 인증 -->
	<form action="/shop/member/join/KCP/kcpcert_proc" name="form_auth" id="form_auth">
		<input type="hidden" name="site_cd" id="site_cd" value="AI3K5">
		<input type="hidden" name="ordr_idxx" id="ordr_idxx">
		<input type="hidden" name="req_tx" id="req_tx" value="cert">
		<input type="hidden" name="cert_method" id="cert_method" value="01">
		<input type="hidden" name="cert_otp_use" id="cert_otp_use" value="Y">
		<input type="hidden" name="action" id="action" value="https://cert.kcp.co.kr/kcp_cert/cert_view.jsp">
		<input type="hidden" name="Ret_URL" id="Ret_URL" value="https://www.winenara.com/shop/member/join/kcpcert_response_ajax">
		<input type="hidden" name="cert_enc_use_ext" id="cert_enc_use_ext" value="Y">
		<input type="hidden" name="kcp_birth" id="kcp_birth">
		<input type="hidden" name="veri_up_hash" id="veri_up_hash">
		<input type="hidden" name="param_opt_1" id="param_opt_1" value="sdt8jf9apfihit38e89d33fpcgn8uflm">
		<input type="hidden" name="param_opt_2" id="param_opt_2" value="">
		<input type="hidden" name="param_opt_3" id="param_opt_3" value="order_write_page">
	</form>
	<!-- //KCP 인증 -->
	<!-- page_script -->
	<script>
	// 제외할 날짜
	var disabledDays = ["2018-9-24", "2018-9-25", "2018-9-26", "2022-4-7"];
	var disabledWeek = [0,5];
	// 날짜를 나타내기 전에(beforeShowDay) 실행할 함수
	// /* disabledDays (날짜) 의 경우 2022-01-01의 형식이 아니라 2022-1-1 형식으로 해야해서 컨트롤러에서 해당 형식으로 변경된 배열을 사용 */
	function disableSomeDay(date) {
		var month = date.getMonth();
		var dates = date.getDate();
		var year = date.getFullYear();
		if($.inArray(year + '-' +(month+1) + '-' + dates,disabledDays) != -1 || $.inArray(year + '-0' +(month+1) + '-' + dates,disabledDays) != -1) {
			// console.log(year+'-'+(month+1) + '-' + dates );
			return [false];
		}
		if($.inArray(date.getDay(),disabledWeek) != -1){
			return [false];
		}
	// console.log(disabledDays);
		return [true];
		// // 해당하지 않는 날짜는 주말이 아닌 경우에만 표시한다.
		// // var noWeekend = jQuery.datepicker.noWeekends(date);
		// // return noWeekend[0] ? [true] : noWeekend;
		//
		// return [date.getDay() != 0 && date.getDay() != 1,''];
	}
	$(".datepicker").on("click", function() {
		if($("#pickup_store_cd").val() == ''){
			alert("수령 장소를 먼저 선택해주세요.");
			$(".ui-datepicker").hide();
			return;
		} else {
			$(".ui-datepicker").show();
		}
	});
	//수령일 - 선택
	$("#receipt_date").on("change", function() {
		$("#r_day_pick").prop("checked", true);
		$("#r_day_pick").val($(this).val());
		var date_d = new Date($(this).val()).getDay();
		var date_mm = $(this).val().split('-')[1];
		var date_dd = $(this).val().split('-')[2];
		if(date_d == '0' || date_d == '6'){
			$("#weekend_store_info_txt2").text(date_mm+"월"+date_dd+"일 ");
			$("#weekdays_store_info_txt1").hide();
			$("#weekdays_store_info_txt2").hide();
			$("#weekdays_store_info_txt3").hide();
			$("#weekend_store_info_txt1").show();
			$("#weekend_store_info_txt2").show();
			$("#weekend_store_info_txt3").show();
		} else {
			$("#weekdays_store_info_txt2").text(date_mm+"월"+date_dd+"일 ");
			$("#weekdays_store_info_txt1").show();
			$("#weekdays_store_info_txt2").show();
			$("#weekdays_store_info_txt3").show();
			$("#weekend_store_info_txt1").hide();
			$("#weekend_store_info_txt2").hide();
			$("#weekend_store_info_txt3").hide();
		}
		$("#store_info_basic").hide();
	});
	$("#store_map").on("click", function() {
		if($("#pickup_store_cd").val() == ''){
			alert("수령 장소를 먼저 선택해주세요.");
			$("#r_today").prop("checked", false);
			$("#r_tomorrow").prop("checked", false);
			$("#r_next_tomorrow").prop("checked", false);
			return;
		}
	});
	$("#r_today, #r_tomorrow, #r_next_tomorrow").on("click", function() {
		if($("#pickup_store_cd").val() == ''){
			alert("수령 장소를 먼저 선택해주세요.");
			$("#r_today").prop("checked", false);
			$("#r_tomorrow").prop("checked", false);
			$("#r_next_tomorrow").prop("checked", false);
			return;
		} else {
			var date_d = new Date($(this).val()).getDay();
			var date_mm = $(this).val().split('-')[1];
			var date_dd = $(this).val().split('-')[2];
			if(date_d == '0' || date_d == '6'){
				$("#weekend_store_info_txt2").text(date_mm+"월"+date_dd+"일 ");
				$("#weekdays_store_info_txt1").hide();
				$("#weekdays_store_info_txt2").hide();
				$("#weekdays_store_info_txt3").hide();
				$("#weekend_store_info_txt1").show();
				$("#weekend_store_info_txt2").show();
				$("#weekend_store_info_txt3").show();
			} else {
				$("#weekdays_store_info_txt2").text(date_mm+"월"+date_dd+"일 ");
				$("#weekdays_store_info_txt1").show();
				$("#weekdays_store_info_txt2").show();
				$("#weekdays_store_info_txt3").show();
				$("#weekend_store_info_txt1").hide();
				$("#weekend_store_info_txt2").hide();
				$("#weekend_store_info_txt3").hide();
			}
			$("#store_info_basic").hide();
		}
	});
	//수령장소 변경시
	$("#pickup_store_cd").on("change", function() {
		$("#receipt_date").val('');
		$("#r_day_pick").prop("checked", false);
		$("#r_day_pick").val('');
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type : "POST",
			url : "store_holiday_ajax",
			dataType : 'json',
			async : false,
			data : {"store_cd" : $(this).val()},
			success : function (res) {
				// console.log(res.holiday_arr);
				// console.log(res.holiday_date_arr);
				/* disabledDays (날짜) 의 경우 2022-01-01의 형식이 아니라 2022-1-1 형식으로 해야해서 컨트롤러에서 해당 형식으로 변경된 배열을 사용 */
				disabledWeek = res.holiday_arr;
				disabledDays = res.holiday_date_arr;
				masterDisabledDays = res.master_holiday_date_arr;
				/*********************************************************************************************************/
				/* 본사 휴무일은 지정일 2시 이후 선택할 수 없음. */
				if(res.master_holiday_date_arr.length > 0){
					for(var i=0; i<res.master_holiday_date_arr.length; i++){
						console.log(res.master_holiday_date_arr[i]);
						disabledDays.unshift(res.master_holiday_date_arr[i]);
					}
				}
				/* 본사 휴무일은 지정일 2시 이후 선택할 수 없음.*/
				/*********************************************************************************************************/
				/*********************************************************************************************************/
				/* 수령일 ‘오늘’은 당일 오전 10시 이후 선택할 수 없음. 오전 9시 59분 주문건까지만 당일 픽업 가능하게 설정 */
							/* 수령일 ‘오늘’은 당일 오전 10시 이후 선택할 수 없음. 오전 9시 59분 주문건까지만 당일 픽업 가능하게 설정 */
				/*********************************************************************************************************/
				var nnext_date_disabled = "N";
				/*********************************************************************************************************/
				/* 수령일 ‘내일’은 전일 오후 2시 이후 선택할 수 없음. 오후 1시 59분 주문건까지만 익일 픽업 가능으로 설정 */
							/* 수령일 ‘내일’은 전일 오후 2시 이후 선택할 수 없음. 오후 1시 59분 주문건까지만 익일 픽업 가능으로 설정 */
				/*********************************************************************************************************/
				/****************************************/
				/* 당일배송 상품이 아닌 경우 당일배송 x */
				var today_yn = "N";
													if( $("#pickup_store_cd").val() == "" ){
							today_yn = "Y";
						}
				if(today_yn != 'Y'){
					disabledDays.unshift("2024-4-19");
				}
				/* 당일배송 상품이 아닌 경우 당일배송 x */
				/****************************************/
				$('.datepicker input').datepicker( "option", "beforeShowDay", disableSomeDay );
				/* 매장 선택 후 선택한 요일 재셋팅 */
				$("#r_today").prop("checked", false);
				$("#r_tomorrow").prop("checked", false);
				$("#r_next_tomorrow").prop("checked", false);
				$("#today_checkbox").removeClass("cancel");
				$("#r_today").prop("disabled", false);
				$("#tomorrow_checkbox").removeClass("cancel");
				$("#r_tomorrow").prop("disabled", false);
				$("#next_tomorrow_checkbox").removeClass("cancel");
				$("#r_next_tomorrow").prop("disabled", false);
				/* 매장 선택 후 선택한 요일 재셋팅 */
				if(nnext_date_disabled == 'Y'){
					$("#next_tomorrow_checkbox").addClass("cancel");
					$("#r_next_tomorrow").prop("disabled", true);
				}
				/* 휴무 요일 계산 start */
				var today_week_str         = parseInt("5");
				var tomorrow_week_str      = parseInt("6");
				var next_tomorrow_week_str = parseInt("0");
				if( res.holiday_arr.length > 0){
					if( res.holiday_arr.indexOf(today_week_str) > -1){
						$("#today_checkbox").addClass("cancel");
						$("#r_today").prop("disabled", true);
					}
					if( res.holiday_arr.indexOf(tomorrow_week_str) > -1){
						$("#tomorrow_checkbox").addClass("cancel");
						$("#r_tomorrow").prop("disabled", true);
					}
					if( res.holiday_arr.indexOf(next_tomorrow_week_str) > -1){
						$("#next_tomorrow_checkbox").addClass("cancel");
						$("#r_next_tomorrow").prop("disabled", true);
					}
				}
				/* 휴무 요일 계산 end */
				/* 휴무 일자 계산 start */
				var today         = "2024-04-19";
				var tomorrow      = "2024-04-20";
				var next_tomorrow = "2024-04-21";
				if( res.holiday_date_arr_origin.length > 0){
					if( res.holiday_date_arr_origin.indexOf(today) > -1){
						$("#today_checkbox").addClass("cancel");
						$("#r_today").prop("disabled", true);
					}
					if( res.holiday_date_arr_origin.indexOf(tomorrow) > -1){
						$("#tomorrow_checkbox").addClass("cancel");
						$("#r_tomorrow").prop("disabled", true);
					}
					if( res.holiday_date_arr_origin.indexOf(next_tomorrow) > -1){
						$("#next_tomorrow_checkbox").addClass("cancel");
						$("#r_next_tomorrow").prop("disabled", true);
					}
				}
				if( res.master_holiday_date_arr_origin.length > 0){
					if( res.master_holiday_date_arr_origin.indexOf(today) > -1){
						$("#today_checkbox").addClass("cancel");
						$("#r_today").prop("disabled", true);
					}
					if( res.master_holiday_date_arr_origin.indexOf(tomorrow) > -1){
						$("#tomorrow_checkbox").addClass("cancel");
						$("#r_tomorrow").prop("disabled", true);
					}
					if( res.master_holiday_date_arr_origin.indexOf(next_tomorrow) > -1){
						$("#next_tomorrow_checkbox").addClass("cancel");
						$("#r_next_tomorrow").prop("disabled", true);
					}
				}
				/* 휴무 일자 계산 end */
				/* 당일 픽업 가능 계산 start */
				$("#today_checkbox").addClass("cancel");
				$("#r_today").prop("disabled", true);
																if( $("#pickup_store_cd").val() == "" ){
							$("#today_checkbox").removeClass("cancel");
							$("#r_today").prop("disabled", false);
						}
														/* 당일 픽업 가능 계산 end */
				$("#weekdays_store_info_txt1").text("-“"+res.store_info_list.company_nm+"의 ");
				$("#weekdays_store_info_txt2").text("04월19일 ");
				$("#weekdays_store_info_txt3").text("영업시간은 "+res.store_info_list.weekdays_time+"입니다”");
				$("#weekend_store_info_txt1").text("-“"+res.store_info_list.company_nm+"의 ");
				$("#weekend_store_info_txt2").text("04월19일 ");
				$("#weekend_store_info_txt3").text("영업시간은 "+res.store_info_list.weekend_time+"입니다”");
								$("#weekdays_store_info_txt1").show();
					$("#weekdays_store_info_txt2").show();
					$("#weekdays_store_info_txt3").show();
					$("#weekend_store_info_txt1").hide();
					$("#weekend_store_info_txt2").hide();
					$("#weekend_store_info_txt3").hide();
				$("#store_info_basic").hide();
				$("#store_map").attr("onclick", "openStoreLayout('"+res.store_info_list.gps_timestamp+"','"+res.store_info_list.gps_key+"');");
			},
			error: function (res) {
				alert(res.responseText);
			}
		});
	});
	//수령방법 - 선택한 수령방법 컨텐츠만 노출
	var receiveId = $("input[name='receive_way']");
	receiveId.change(function(){
		$check_val = $("input[name='receive_way']:checked").val();
		if($check_val != 'P'){
			if($check_val == 'P'){
				alert("매장 선택을 온라인으로 변경해주세요.");
			} else if($check_val == 'V'){
				alert("매장 선택 후 매장 주문으로 주문해주세요.");
			} else if($check_val == 'D'){
				alert("해당 상품은 택배 배송이 불가합니다.");
			}
			$("input[name='receive_way']").each(function(){
				if($(this).val() == 'P'){
					$(this).prop("checked", true);
				}
			});
			return;
		}
		var receiveCkdId = $("input[name='receive_way']:checked").attr("id"),
			receiveCon = $("."+receiveCkdId);
		$(".receive_way_con").hide();
		receiveCon.show();
		if(receiveCkdId == "store"){
			$(".t_price_info .pay").hide();
		}else{
			$(".t_price_info .pay").show();
		}
		$("input[name='order_gb']").val(receiveId.val());
	});
	//배송지선택 - 이전주문 배송지일 때만 셀렉트 노출
	var addrId = $("input[name='shipping_addr']");
	addrId.change(function(){
		var addrCkdId = $("input[name='shipping_addr']:checked").attr("id");
		if(addrCkdId == "record_addr"){
			$("#addr_sel").show();
		}else{
			$("#addr_sel").hide();
		}
	});
	//숫자만 입력
	$("#or_hp, #receipt_tel, #re_hp").bind("change keyup input", function(e){
		this.value = this.value.replace(/[^0-9]/g,'');      //숫자만
	});
	$(document).ready(function(){
		//주문 스크립트 호출
		// order.initOrder();
		$(orderForm.or_name).on('keyup', function () {
			form_check.or_name(this);
		});
		$(orderForm.or_email).on('keyup', function () {
			form_check.or_email(this);
		});
		$(orderForm.or_hp).on('keyup', function () {
			form_check.or_hp(this);
		});
		$(orderForm.re_name).on('keyup', function () {
			form_check.re_name(this);
		});
		$(orderForm.re_hp).on('keyup', function () {
			form_check.re_hp(this);
		});
	});
	$("#openCouponList").on("click", function() {
		if(fnSaleDisabled1()){
			commonUI.layer.open('coupon_layer', { bg : true, alert : true });
			searchCouponData();
		}
	});
	</script>
	<!-- //page_script -->
	<script type="text/javascript" src="../../asset/js/kcp/approval_key.js"></script>
	<script>
		function call_pay_form()
		  {
			var v_frm = document.order_info;
			// 인코딩 방식에 따른 변경 -- Start
			if(v_frm.encoding_trans == undefined)
			{
				v_frm.action = PayUrl;
			}
			else
			{
				if(v_frm.encoding_trans.value == "UTF-8")
				{
					v_frm.action = PayUrl.substring(0,PayUrl.lastIndexOf("/"))  + "/jsp/encodingFilter/encodingFilter.jsp";
					v_frm.PayUrl.value = PayUrl;
				}
				else
				{
					v_frm.action = PayUrl;
				}
			}
				// 인코딩 방식에 따른 변경 -- End
			if (v_frm.Ret_URL.value == "")
			{
			  /* Ret_URL값은 현 페이지의 URL 입니다. */
			  alert("연동시 Ret_URL을 반드시 설정하셔야 됩니다.");
			  return false;
			}
			else
			{
			  v_frm.submit();
			}
		}
	</script>
	<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script>
	<style type="text/css"></style>
	<div id="kcp_content" style="background-color: white;">
	</div>
	<div id="kcp_mask" class="kcpTransDiv" style="display:none">
	</div>
	<div id="kcp_progress" class="spin_container">
	</div>
	<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/js/ajax.js?N9Q2BTGTFT08YL5R2M95EHW3MJ2AY08R" charset="EUC-KR"></script>
	<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/cross_service/extends/util.js?N9Q2BTGTFT08YL5R2M95EHW3MJ2AY08R" charset="EUC-KR"></script>
	<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/cross_service/extends/spin.min.js?N9Q2BTGTFT08YL5R2M95EHW3MJ2AY08R"></script>
	<script type="text/javascript" src="https://pay.kcp.co.kr/plugin/js/payplus_webExe.js?N9Q2BTGTFT08YL5R2M95EHW3MJ2AY08R" charset="EUC-KR"></script>
	<script type="text/javascript" src="https://npay.kcp.co.kr/plugin/web_cross_hub.js?N9Q2BTGTFT08YL5R2M95EHW3MJ2AY08R" charset="EUC-KR"></script>
	<script type="text/javascript" src="https://npay.kcp.co.kr/js/kcp_jquery-1.8.0.js?ver=3MUD2XSFNWMB7W3XPKWTDROAOEFXE7QN" charset="EUC-KR"></script>
	<script type="text/javascript" src="https://npay.kcp.co.kr/js/kcp_jquery.blockUI.js" charset="EUC-KR"></script>
	<script type="text/javascript" src="https://npay.kcp.co.kr/js/ClientDataHandler.js?ver=3MUD2XSFNWMB7W3XPKWTDROAOEFXE7QN" charset="EUC-KR"></script>
	<script type="text/javascript" src="https://npay.kcp.co.kr/js/json2.js" charset="EUC-KR"></script>
	<div id="kcp_event_form">
	</div>
	<script type="text/javascript" src="https://npay.kcp.co.kr/js/npayUtils.js?ver=3MUD2XSFNWMB7W3XPKWTDROAOEFXE7QN" charset="EUC-KR"></script>
	<script>
		/****************************************************************/
		/* m_Completepayment  설명                                      */
		/****************************************************************/
		/* 인증완료시 재귀 함수                                         */
		/* 해당 함수명은 절대 변경하면 안됩니다.                        */
		/* 해당 함수의 위치는 payplus.js 보다먼저 선언되어여 합니다.    */
		/* Web 방식의 경우 리턴 값이 form 으로 넘어옴                   */
		/****************************************************************/
		function m_Completepayment( FormOrJson, closeEvent )
		{
			var frm = document.order_info;
			/********************************************************************/
			/* FormOrJson은 가맹점 임의 활용 금지                               */
			/* frm 값에 FormOrJson 값이 설정 됨 frm 값으로 활용 하셔야 됩니다.  */
			/* FormOrJson 값을 활용 하시려면 기술지원팀으로 문의바랍니다.       */
			/********************************************************************/
			GetField( frm, FormOrJson );
			if( frm.res_cd.value == "0000" )
			{
				frm.submit();
			}
			else
			{
				alert( "[" + frm.res_cd.value + "] " + frm.res_msg.value );
				closeEvent();
			}
		}
		/* 표준웹 실행 */
		function jsf__pay( form )
		{
			try
			{
				KCP_Pay_Execute( form );
			}
			catch (e)
			{
				console.log(e.message);
				/* IE 에서 결제 정상종료시 throw로 스크립트 종료 */
			}
		}
		/**
		 * 인증 체크
		 * @return {[type]} [description]
		 */
		function auth_type_check(){
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			var auth_form = document.form_auth;
			init_orderid();
			if( auth_form.ordr_idxx.value == "" ){
				alert( "요청번호는 필수 입니다." );
				return false;
			}else{
				if( ( navigator.userAgent.indexOf("Android") > - 1 || navigator.userAgent.indexOf("iPhone") > - 1 ) == false ){ // 스마트폰이 아닌경우
					var return_gubun;
					var width  = 410;
					var height = 500;
					var leftpos = screen.width  / 2 - ( width  / 2 );
					var toppos  = screen.height / 2 - ( height / 2 );
					var winopts  = "width=" + width   + ", height=" + height + ", toolbar=no,status=no,statusbar=no,menubar=no,scrollbars=no,resizable=no";
					var position = ",left=" + leftpos + ", top="    + toppos;
					var AUTH_POP = window.open('/shop/member/join/kcpcert_proc','auth_popup', winopts + position);
				}
				// auth_form.kcp_birth.value = $('#user_birth').val().replace('-','');;
				// auth_form.method = "post";
				// auth_form.target = "auth_popup";
				// auth_form.action = "/shop/member/join/kcpcert_proc_ajax";
				// auth_form.submit();
				$('#form_auth').attr('method', 'post');
				//아이폰의 경우 해당 target이 설정되면 왜인지 post 값이 넘어가지 않음;;
				if( ( navigator.userAgent.indexOf("Android") > - 1 || navigator.userAgent.indexOf("iPhone") > - 1 ) == false ){ // 스마트폰이 아닌경우
					$('#form_auth').attr('target', 'auth_popup');
				}
				$('#form_auth').attr('action', '/shop/member/join/kcpcert_proc_ajax');
				$('#form_auth').submit();
				return true;
			}
		}
		// 앱에서 webView는 opener 를 인식하지 못해서, 모바일 별도처리
		function Mobile(){
			return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
		}
		var adult_chk = false;
		function adult_auth(){
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			var site_cd = $('#site_cd').val()
			var ordr_idxx = $('#ordr_idxx').val();
			$('#up_hash').val(site_cd + ordr_idxx + "000000");
			if(Mobile()){
				var auth_form = document.form_auth;
				auth_form.veri_up_hash.value = site_cd + ordr_idxx + "000000";
				adult_chk = true;
			}
			$('#form_auth').submit();
		}
		function auth_data( frm ){
			var auth_form     = document.form_auth;
			if( frm.up_hash.value != auth_form.veri_up_hash.value ){
				alert("비정상적인 접근입니다.");
				console.log('up_hash 변조 위험');
			}
			const today = new Date();
			const birthDate = new Date(parseInt(frm.r_birth.value.substring(0,4)), parseInt(frm.r_birth.value.substring(4,6))-1, parseInt(frm.r_birth.value.substring(6,8)));
			let age = today.getFullYear() - birthDate.getFullYear();
			const m = today.getMonth() - birthDate.getMonth();
			if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
				age--;
			}
			if(age < 19){
				alert('만 19세 이상만 구매 가능합니다.');
				location.href = "/shop/main";
			}
			adult_chk = true;
			$('#auth_div').hide();
			location.reload();
		}
		/* 예제 */
		// document.ready(function(){
		//     init_orderid();
		// });
		function init_orderid(){
			var today = new Date();
			var year  = today.getFullYear();
			var month = today.getMonth()+ 1;
			var date  = today.getDate();
			var time  = today.getTime();
			if(parseInt(month) < 10){
				month = "0" + month;
			}
			var vOrderID = year + "" + month + "" + date + "" + time;
			document.form_auth.ordr_idxx.value = vOrderID;
		}
		//datepicker
		$(".datepicker input").datepicker({
			dateFormat: "yy-mm-dd",
			showOn: "both",
			buttonText: "선택",
			minDate: 0
		});
		$("#header").addClass('top_hidden');
		$("#contents").addClass('mb_margin_0');
		function fnSaleDisabled1() {
			if( parseInt($("#use_reserve").val().onlyNum()) > 0 ){
				alert("쿠폰과 마일리지는 동시 사용할 수 없습니다");
				$("#coupon_sale").val(0);
				return false;
			} else {
				return true;
			}
		}
	</script>
	<div class="layer coupon_layer" id="coupon_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
					<div class="layer_tit">
						쿠폰선택
					</div>
					<div class="layer_con">
						<ul id="coupon_list">
							<li class="nodata">사용 가능한 쿠폰이 없습니다.</li>
							<!--
							<li>
								<div class="box">
									<p class="tit">회원가입 (15,000원 할인)</p>
									<p class="date">2020.10.01 ~ 2020.10.31 </p>
								</div>
								<div class="box btn">
									<button type="button">선택</button>
								</div>
							</li>
							<li>
								<div class="box">
									<p class="tit">생일기념 (3% 할인)</p>
									<p class="date">2020.10.01 ~ 2020.10.31 </p>
								</div>
								<div class="box btn">
									<button type="button">선택</button>
								</div>
							</li>
							<li>
								<div class="box">
									<p class="tit">회원등급 (5% 할인)</p>
									<p class="date">2020.10.01 ~ 2020.10.31 </p>
								</div>
								<div class="box btn">
									<button type="button">선택</button>
								</div>
							</li>
							<li>
								<div class="box">
									<p class="tit">구매이벤트 (10% 할인)</p>
									<p class="date">2020.10.01 ~ 2020.10.31 </p>
								</div>
								<div class="box btn">
									<button type="button">선택</button>
								</div>
							</li>
							-->
						</ul>
						<div class="ntc_box">
							 - 쿠폰 당 1개의 상품에 1회 사용하실 수 있습니다.<br>
							 - 쿠폰마다 사용기한이 있으므로 기간 내에 사용해 주시기 바랍니다.<br>
							 - 주문이 입금 완료 된 이후에는 쿠폰을 사용하실 수 없습니다. 주문 시 꼭 쿠폰 적용을 선택하세요.<br>
							 - 행사할인상품은 쿠폰사용이 제한됩니다.
						</div>
						<div class="write_box">
							<form action="https://www.winenara.com/shop/order/order_write" id="couponForm" name="couponForm" method="post" accept-charset="utf-8">
								<input type="hidden" name="witplus_csrf_token" value="08633b4733f552562e46d53b7a4091b7">
								<input type="text" width="0" height="0" style="display:none;">
								<div class="ip_box">
									<input type="text" name="coupon_number" id="coupon_number" title="쿠폰번호 입력란" placeholder="쿠폰번호를 입력해주세요">
									<button type="button" onclick="Reg_Submit();" class="btn_txt btn_black">쿠폰등록</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //쿠폰 레이어 -->
	<script>
	function searchCouponData(){
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
		   type: "POST",
		   url: "/shop/order/order_coupon_ajax",
		   async: false,
		   data: { "buy_coupon_price" : $("#buy_coupon_price").val() },
		   success: function(res){
			// console.log(res);
			   $("#coupon_list").html(res);
		   }
		});
	}
	function Reg_Submit() {
		if($("#coupon_number").val() == ""){
			alert("쿠폰번호를 입력해주세요.");
			return;
		}
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url : "/shop/mypage/note/coupon_proc",
			data    : $("#couponForm").serialize(),
			dataType : 'json',
			async: false,
			success : function (res) {
				alert(res.msg);
				if( $.trim(res.status) == "ok"){
					searchCouponData();
					$("#coupon_number").val("");
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