<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 나의 기프트카드</title>
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
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>나의 기프트카드</span></button>
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
	<div class="common_lnb giftcard_lnb">
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
			<ul class="">
				<li class="">
					<p class="tit">총 보유 금액</p>
					<div class="num_box">
						<span>0</span>
					</div>
				</li>
				<li class="">
					<p class="tit">구입한 금액</p>
					<div class="num_box">
						<span>0</span>
					</div>
				</li>
				<li class="">
					<p class="tit">선물한 금액</p>
					<div class="num_box">
						<span>0</span>
					</div>
				</li>
				<li class="">
					<p class="tit">선물받은 금액</p>
					<div class="num_box">
						<span>0</span>
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
				<li class="on"><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
				<!-- <li ><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
				<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
				<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
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
<div class="content mypage note giftcard_order_page top_gap">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">나의 기프트카드</h2>
			</div>
			<!--				 <div class="gift_price">
					<ul>
						<li><p>총 보유 금액<strong class="price">0</strong></p></li>
						<li><p>구매한 금액<strong class="price">0</strong></p></li>
						<li><p>선물한 금액<strong class="price">0</strong></p></li>
						<li><p>선물받은 금액<strong class="price">0</strong></p></li>
					</ul>
				</div> -->
		</div>
		<div class="tab_area my_gift">
			<ul class="js_tabBtn tab3">
				<li><button type="button" onclick="location.href='/shop/mypage/note/giftcard_lists'"><span>구매하기 내역</span></button></li>
				<li><button type="button" onclick="location.href='/shop/mypage/note/giftcard_give_lists'"><span>선물하기 내역</span></button></li>
				<li><button type="button" onclick="location.href='/shop/mypage/note/giftcard_receive_lists'"><span>받은 기프트카드</span></button></li>
			</ul>
		</div>
		<script type="text/javascript" src="/asset/js/wn.gift.js?v=20211207"></script>
		<form action="https://www.winenara.com/shop/mypage/note/giftcard_order" id="orderForm" name="orderForm" method="post" accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token" value="4313bbdf8c92a882852a7448596ac522"/>
			<input type="hidden" name="order_gb" id="order_gb" value="N">
			<input type="hidden" name="gift_gb" id="gift_gb" value="K">
			<div class="order_box tab_area">
				<p class="form_tit">구분</p>
				<ul class="js_tabBtn tab2">
					<li class='on'><button type="button" id="order_gb_N" onclick="gift.setOrderGb('N');"><span>직접구입</span></button></li>
					<li><button type="button" id="order_gb_G" onclick="gift.setOrderGb('G');"><span>선물하기</span></button></li>
				</ul>
				<div class="js_tabCon on">
					<div class="g_box form_area tab_area">
						<div class="gift_way">
							<p class="form_tit">선물방법</p>
							<ul class="js_tabBtn col2">
								<li class='on'><button type="button" id="gift_gb_K" onclick="gift.setGiftGb('K');" class="kakao_btn"><span>카카오톡으로 선물</span></button></li>
								<li><button type="button" id="gift_gb_S" onclick="gift.setGiftGb('S');" class="sms_btn"><span>문자(SMS)선물</span></button></li>
							</ul>
							<span class="sub_txt">- 결제완료 후 카카오톡 친구를 선택할 수 있습니다.</span>
						</div>
						<div class="js_tabCon on">
							<ul>
								<li>
									<div class="l_tit">
										<label for="product_cd">기프트카드 선택</label>
									</div>
									<div class="form_box">
										<select name="product_cd" id="product_cd">
											<option value="GIFT30000">기프트카드 30,000원</option>
											<option value="GIFT50000">기프트카드 50,000원</option>
											<option value="GIFT100000">기프트카드 100,000원</option>
											<option value="GIFT200000">기프트카드 200,000원</option>
											<option value="GIFT300000">기프트카드 300,000원</option>
										</select>
										<p class="input_info_txt">
										</p>
									</div>
								</li>
								<li class="kakao_on">
									<div class="l_tit">
										<label for="re_name">받는사람 이름</label>
									</div>
									<div class="form_box">
										<input type="text" name="re_name" value="" id="re_name" placeholder="이름을 입력해주세요.">
										<p class="input_info_txt">
										</p>
									</div>
								</li>
								<li class="sms_on">
									<div class="l_tit">
										<label for="re_hp">휴대폰번호</label>
									</div>
									<div class="form_box">
										<input type="text" name="re_hp" value="" id="re_hp" placeholder=" '-'제외한 숫자만 입력해주세요." class="numeric">
										<p class="input_info_txt">
										</p>
									</div>
								</li>
								<li class="sms_on">
									<div class="l_tit">
										<label for="re_hp_check">휴대폰번호 확인</label>
									</div>
									<div class="form_box">
										<input type="text" name="re_hp_check" value="" id="re_hp_check" placeholder="휴대폰번호를 확인해주세요." class="numeric">
										<p class="input_info_txt">
										</p>
									</div>
								</li>
								<li class="kakao_on">
									<div class="l_tit">
										<label for="gift_msg">메시지</label>
									</div>
									<div class="form_box">
										<textarea name="gift_msg" id="gift_msg" placeholder="내용을 입력해주세요."></textarea>
										<p class="input_info_txt">
										</p>
									</div>
								</li>
								<li>
									<div class="l_tit">
										<label for="gift_msg">결제수단</label>
									</div>
									<div class="form_box">
										<div class="radiobox">
											<input type="radio" name="otype_cd" id="otype_cd_20" value="20" checked>
											<label for="otype_cd_20">신용카드</label>
										</div>
										<!--div class="radiobox">
												<input type="radio" name="otype_cd" id="otype_cd_10" value="10">
												<label for="otype_cd_10">가상계좌</label>
											</div-->
										<div class="radiobox">
											<input type="radio" name="otype_cd" id="otype_cd_30" value="30">
											<label for="otype_cd_30">실시간계좌이체</label>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="btn_area col2">
						<button type="button" onclick="location.href='/shop/mypage/note/giftcard_lists'" class="btn_txt"><span>취소하기</span></button>
						<button type="button" onclick="gift.orderSubmit();" class="btn_txt btn_black"><span>결제하기</span></button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
</div>
<!-- KCP -->
<div id="kcpReturn">
</div>
<!-- //KCP -->
<!-- page_script -->
<script>
$(document).ready(function() {
	$(orderForm.gift_msg).on('keyup', function () {
		form_check.gift_msg(this);
	});
	$(orderForm.re_hp_check).on('keyup', function () {
		form_check.re_hp_check(this);
	});
	$(orderForm.re_name).on('keyup', function () {
		form_check.re_name(this);
	});
	$(orderForm.re_hp).on('keyup', function () {
		form_check.re_hp(this);
	});
	//기본값 추가
	gift.setOrderGb('N');
});
</script>
<!-- //page_script -->
<script type="text/javascript" src="/asset/js/kcp/approval_key.js"></script>
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
<script>
/****************************************************************/
/* m_Completepayment  설명									  */
/****************************************************************/
/* 인증완료시 재귀 함수										 */
/* 해당 함수명은 절대 변경하면 안됩니다.						*/
/* 해당 함수의 위치는 payplus.js 보다먼저 선언되어여 합니다.	*/
/* Web 방식의 경우 리턴 값이 form 으로 넘어옴				   */
/****************************************************************/
function m_Completepayment( FormOrJson, closeEvent )
{
	var frm = document.order_info;
	/********************************************************************/
	/* FormOrJson은 가맹점 임의 활용 금지							   */
	/* frm 값에 FormOrJson 값이 설정 됨 frm 값으로 활용 하셔야 됩니다.  */
	/* FormOrJson 값을 활용 하시려면 기술지원팀으로 문의바랍니다.	   */
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