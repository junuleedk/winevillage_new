<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 회원정보수정</title>
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

<!-- header -->
<sec:authorize access="!isAuthenticated()">
<%@ include file="../../common/header.jsp" %>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<%@ include file="../../common/header_loggedin.jsp" %>
</sec:authorize>
<!-- //header -->
<%@ include file="../../common/layer.jsp" %>
<%@ include file="../../common/script.jsp" %>

<!-- contents -->
<section id="contents" style="margin-top: 188px;">
	<div class="lnb mypage_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>회원정보수정</span></button>
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
		<div class="common_lnb">
			<div class="my">
				<div class="txt grade_area">
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
							<div class="num_box"><span>0</span></div>
						</a>
					</li> -->
					<li>
						<a href="/shop/mypage/note/coupon_lists">
							<p class="tit">나의 쿠폰</p>
							<div class="num_box"><span>1</span></div>
						</a>
					</li>
					<li class="on">
						<a href="/shop/mypage/note/mileage_lists">
							<p class="tit">나의 마일리지</p>
							<div class="num_box"><span>0</span></div>
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
		<!-- <div class="mb_hidden">
			<div class="my_lnb_info">
				<div class="my">
					<img src="/asset/images/shop/default/ico_user_vip.png" alt="">
					<div class="txt">
						<p><strong class="name">고객</strong>님 안녕하세요!</p>
						<button type="button" class="btn_txt btn_grade" onclick="commonUI.layer.open('grade_layer')">등급현황</button>
					</div>
				</div>
				<div class="my_info">
					<a href="/shop/mypage/shopping/order_lists"><span class="new">N</span><p class="info order_info"><em>주문내역</em>0</p></a>
					<a href="/shop/mypage/note/coupon_lists"><span class="new">N</span><p class="info coupon_info"><em>쿠폰</em>1</p></a>
					<a href="/shop/mypage/note/mileage_lists"><span class="new">N</span><p class="info cash_info"><em>마일리지</em>0</p></a>
					<a href="/shop/mypage/note/giftcard_lists"><span class="new">N</span><p class="info gift_info"><em>기프트카드</em>10,000</p></a>
				</div>
			</div>
		</div> -->
		<div class="mypage_link mb_hidden">
			<ul class="depth_01">
				<li>
					<a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
					<ul class="depth_02">
						<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
						<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
						<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
						<li><a href="/shop/cart/cart_lists">장바구니</a></li>
						<!-- <li><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
							<li><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
					</ul>
				</li>
				<li>
					<a href="#none">쇼핑수첩</a>
					<ul class="depth_02">
						<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
						<!-- <li><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
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
						<li class="on"><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
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
	<div class="content mypage accont member_modify_page">
		<form action="https://www.winenara.com/shop/mypage/account/member_modify_proc" name="modify_form" id="modify_form" method="post" accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token" value="e0c91718897b2d6d0955d47b1242e61b">
			<div class="inner">
				<h2 class="page_tit">회원정보수정</h2>
				<div class="form_area">
					<ul>
						<li>
							<div class="l_tit">
								<label for="user_name">이름</label>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
								<div class="form_box success"> -->
								<input type="text" id="user_name" value="고객" placeholder="" disabled="">
								<p class="input_info_txt">
								</p>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="user_id">아이디</label>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
								<div class="form_box success"> -->
								<input type="text" id="user_id" value="gogek1234" placeholder="" disabled="">
								<p class="input_info_txt">
								</p>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="user_birth">생년월일</label>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
								<div class="form_box success"> -->
								<input type="text" id="user_birth" value="1999-01-01" placeholder="" disabled="">
								<p class="input_info_txt">
								</p>
							</div>
						</li>
						<li class="gender_li">
							<div class="l_tit">
								<label for="user_gender">성별</label>
							</div>
							<div class="form_box">
								<input type="text" id="user_gender" value="남자" disabled="">
							</div>
						</li>
						<li class="tel_li">
							<div class="l_tit">
								<label for="user_name">휴대폰번호</label>
							</div>
							<!-- <div class="form_box">
								<div class="tel_box">
									<input type="text" id="phone" name="phone" value="01099999999" placeholder="'-'제외한 숫자만 입력해주세요." maxlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1'); change_hp();">
									<button type="button" class="btn_txt btn_dgray tel_code change_hp" style="display:none;" id="phone_code_send">인증번호 발송</button>
								</div>
								<div class="code_box code_box_2 change_hp" style="display:none;">
									<input type="text" id="phone_code" name="" placeholder="인증번호 입력">
									<button type="button" class="btn_txt btn_black code_btn" id="phone_code_check">인증</button>
									<p class="code_time" id="time" style="display:none;"></p>
								</div>
							</div> -->
							<div class="form_box">
								<div class="tel_box">
									<input type="text" id="phone" name="phone" value="01099999999" placeholder="'-'제외한 숫자만 입력해주세요." maxlength="11" oninput="this.value=this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1'); change_hp();">
									<button type="button" class="btn_txt btn_black tel_code change_hp code_btn" style="display:none;" id="" onclick="return auth_type_check();">본인인증</button>
								</div>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="email">이메일</label>
							</div>
							<div class="form_box">
								<!-- <div class="form_box error">
								<div class="form_box success"> -->
								<input type="text" id="email" name="email" value="gogek1234@gmail.com" placeholder="">
								<p class="input_info_txt">
								</p>
							</div>
						</li>
						<li class="add_li">
							<div class="l_tit">
								<label for="home_zip">주소</label>
							</div>
							<div class="form_box">
								<div class="add_box_01">
									<input type="text" id="home_zip" name="home_zip" value="" placeholder="" readonly="">
									<button type="button" class="btn_txt btn_dgray" id="addr_open">우편번호찾기</button>
								</div>
								<div class="add_box_02">
									<input type="text" id="home_addr1" name="home_addr1" value="">
									<input type="text" id="home_addr2" name="home_addr2" value="">
								</div>
							</div>
						</li>
						<li class="chk_li">
							<div class="l_tit">
								<label for="">이메일 수신여부</label>
							</div>
							<div class="form_box">
								<div class="checkbox">
									<input type="radio" id="email_no" name="mailing_yn" value="N" checked="">
									<label for="email_no">미동의</label>
								</div>
								<div class="checkbox">
									<input type="radio" id="email_yes" name="mailing_yn" value="Y">
									<label for="email_yes">동의</label>
								</div>
							</div>
						</li>
						<li class="chk_li">
							<div class="l_tit">
								<label for="">SMS 수신여부</label>
							</div>
							<div class="form_box">
								<div class="checkbox">
									<input type="radio" id="sms_no" name="sms_yn" value="N" checked="">
									<label for="sms_no">미동의</label>
								</div>
								<div class="checkbox">
									<input type="radio" id="sms_yes" name="sms_yn" value="Y">
									<label for="sms_yes">동의</label>
								</div>
							</div>
						</li>
						<li class="chk_li">
							<div class="l_tit">
								<label for="">매장</label>
							</div>
							<div class="form_box">
								<select name="store_cd" id="store_cd">
									<option value="">▒ 선택 ▒</option>
									<option value="200000784" selected="">온라인(본사)</option>
									<option value="200000738">경희궁점</option>
									<option value="200000084">코엑스점</option>
									<option value="200000111">서래마을점</option>
									<option value="200000779">일산점</option>
									<option value="200000782">홍대점</option>
									<option value="200000792">시청점</option>
									<option value="200000793">성수점</option>
									<option value="200000796">압구정점</option>
									<option value="200000795">신용산점</option>
									<option value="200000803">송도점</option>
								</select>
							</div>
						</li>
						<li>
							<div class="l_tit">
								<label for="user_id">매장회원번호</label>
							</div>
							<div class="form_box">
								<input type="text" id="q_cst" name="q_cst" value="990000000000" disabled="" placeholder="매장에서 발급받은 회원번호를 입력하세요">
								<p class="input_info_txt">
								</p>
							</div>
						</li>
					</ul>
				</div>
				<div class="btn_area col2">
					<button type="button" class="btn_txt" onclick="history.back('-1')">취소</button>
					<button type="button" class="btn_txt btn_black" onclick="submit_join()">회원정보수정</button>
				</div>
			</div>
		</form>
	</div>
	<input type="hidden" value="01099999999" id="before_phone">
	<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
		<!-- <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼"> -->
		<img src="https://t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
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
		<input type="hidden" name="param_opt_1" id="param_opt_1" value="mbje9t7ketuhdl6g8eoi83of1efv1186">
		<input type="hidden" name="param_opt_2" id="param_opt_2" value="">
		<input type="hidden" name="param_opt_3" id="param_opt_3" value="join_form_page">
	</form>
	<!-- page_script -->
	<!-- <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	function auth_type_check(){
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
			// auth_form.kcp_birth.value = $('#user_birth').val().replace('-','');
			auth_form.method = "post";
			auth_form.target = "auth_popup";
			auth_form.action = "/shop/member/join/kcpcert_proc_ajax";
			auth_form.submit();
			return true;
		}
	}
	// 앱에서 webView는 opener 를 인식하지 못해서, 모바일 별도처리
	function Mobile(){
		return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
	}
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
	var adult_chk = false;
	function auth_data( frm ){
		if(Mobile()){
			location.reload();
		}
		var auth_form     = document.form_auth;
		if( frm.up_hash.value != auth_form.veri_up_hash.value ){
			alert("비정상적인 접근입니다."); 
			console.log('up_hash 변조 위험');
		}   
		adult_chk = true;
		$('#auth_div').hide();
	}
	/* 예제 */
	// window.onload=function(){                
	//     init_orderid();
	// }
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
	var timer = null;
	var isRunning = false;
	var phone_code_time_chk = false;
	var time_chk = true;
	function startTimer(count, display){
		time_chk = true;
		var min, sec;
		timer = setInterval(function(){
			min = parseInt(count / 60, 10);
			sec = parseInt(count % 60, 10);
			min = min < 10 ? "0"+min : min;
			sec = sec < 10 ? "0"+sec : sec;
			display.html(" " + min + ":" + sec);
			//타이머 끝
			if(--count < 0){ 
				clearInterval(timer);
				alert('인증 유효시간 초과');
				display.html('인증 유효시간 초과');
				$('#phone_code_check').hide();
				isRunning = false;
				time_chk = false;
			}
		}, 1000);
		isRunning = true;
	}
	var element_layer = document.getElementById('layer');
	function closeDaumPostcode() {
		element_layer.style.display = 'none';
	}
	function initLayerPosition(){
		var width = 300; //우편번호서비스가 들어갈 element의 width
		var height = 400; //우편번호서비스가 들어갈 element의 height
		var borderWidth = 5; //샘플에서 사용하는 border의 두께
		// 위에서 선언한 값들을 실제 element에 넣는다.
		element_layer.style.width = width + 'px';
		element_layer.style.height = height + 'px';
		element_layer.style.border = borderWidth + 'px solid';
		// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
		element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
	}
	var form_check = {
		phone: function(input){
			if($(input).val() == ''){
				alert('연락처를 입력해주세요.');
				$(input).focus();
				return false;
			}else{
				if(!/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/.test($(input).val())){
					alert('휴대폰번호 양식이 정확하지 않습니다.');
					$(input).focus();
					return false;
				}
			}
			return true;
		},
		// phone_code_send:function(button){
		// 	if(!form_check.phone(modify_form.phone)){
		// 		return false;
		// 	}
		// 	Csrf.Set(_CSRF_NAME_);
		// 	$.ajax({
		// 		url: '/shop/member/join/phone_code_send_ajax',
		// 		type: 'POST',
		// 		data: {'phone': $(modify_form.phone).val()},
		// 		dataType: 'json',
		// 		beforeSend: function(){
		// 			$(button).prop('disabled', true);
		// 		},
		// 		error: function(){
		// 			alert('인증번호 발송 중 오류가 발생했습니다.');
		// 		},
		// 		success: function(result){
		// 			if(result.send){
		// 				alert('등록한 휴대폰 번호로 발송된 인증번호를 입력해주세요.');
		// 				$('#phone_code_check').show();
		// 				$('#time').css('display','block');
		// 				var display = $('#time');
		// 				var leftSec = 180;
		// 				if(isRunning){
		// 					clearInterval(timer);
		// 					display.html("");
		// 					startTimer(leftSec, display);
		// 				}else{
		// 					startTimer(leftSec, display);
		// 				}
		// 			}else{
		// 				alert('인증번호 발송 중 오류가 발생했습니다.');
		// 			}
		// 		},
		// 		complete: function(){
		// 			$(button).prop('disabled', false);
		// 		}
		// 	});
		// },
		phone_code : function(input){
			if($(input).val() == ''){
				alert('인증번호를 확인해 주시기 바랍니다.');
				$(input).focus();
				return false;
			}
			return true;
		},
		// phone_code_check: function(button){
		// 	if(!form_check.phone_code(modify_form.phone_code)){
		// 		return false;
		// 	}
		// 	$.ajax({
		// 		url: '/shop/member/join/phone_code_check_ajax',
		// 		type: 'GET',
		// 		data: {
		// 			'phone': $(modify_form.phone).val(),
		// 			'phone_code': $(modify_form.phone_code).val()
		// 		},
		// 		dataType: 'json',
		// 		beforeSend: function(){
		// 			form_check.phone_code_checked = 'W';
		// 			$(button).prop('disabled', true);
		// 		},
		// 		error: function(){
		// 			alert('인증번호 확인 중 오류가 발생했습니다.');
		// 		},
		// 		success: function(result){
		// 			if(result.checked){
		// 				form_check.phone_code_checked = 'Y';
		// 				alert('인증되었습니다.');
		// 				if(time_chk){
		// 					phone_code_time_chk = true;
		// 				}else{
		// 					phone_code_time_chk = false;
		// 				}
		// 				clearInterval(timer);
		// 			}else{
		// 				form_check.phone_code_checked = 'N';
		// 				alert('잘못된 인증번호입니다.');
		// 			}
		// 		},
		// 		complete: function(){
		// 			$(button).prop('disabled', false);
		// 		}
		// 	});
		// },
		phone_code_checked: 'N',
		email: function(input){
			if($(input).val() == ''){
				alert('이메일을 입력해주세요.');
				return false;
			}else
				if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(input).val())){
					alert('이메일 주소를 다시 확인해주세요.');
					return false;
				}
			return true;
		},
		addr_open:function(button){
			new daum.Postcode({
				oncomplete: function(data) {
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수
					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}
					// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
					if(data.userSelectedType === 'R'){
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
							extraAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if(data.buildingName !== '' && data.apartment === 'Y'){
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if(extraAddr !== ''){
							extraAddr = ' (' + extraAddr + ')';
						}
						// 조합된 참고항목을 해당 필드에 넣는다.
						// console.log('extraAddr : ' + extraAddr);
						// document.getElementById("sample2_extraAddress").value = extraAddr;
					} else {
						// document.getElementById("sample2_extraAddress").value = '';
					}
					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('home_zip').value = data.zonecode;
					document.getElementById("home_addr1").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("home_addr2").focus();
					// iframe을 넣은 element를 안보이게 한다.
					// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					element_layer.style.display = 'none';
				},
			width : '100%',
			height : '100%',
			maxSuggestItems : 5
			}).embed(element_layer);
			// iframe을 넣은 element를 보이게 한다.
			element_layer.style.display = 'block';
			// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
			initLayerPosition();
		}
	}
	$('#addr_open').click(function(){
		form_check.addr_open(this);
	})
	$('#phone_code_send').click(function(){
		form_check.phone_code_send(this);
	});
	$('#phone_code_check').click(function(){
		form_check.phone_code_check(this);
	});
	function change_hp(){
		$('.change_hp').css("display","block");
	}
	function submit_join(){
		var check = true;
		if($('#before_phone').val() !== $('#phone').val()){
			if(!form_check.phone(modify_form.phone)){
				check = false;
			}
			// if(!form_check.phone_code(modify_form.phone_code)){
			//     check = false;
			// }
			// if(form_check.phone_code_checked != 'Y'){
			//     check = false;
			//     if(form_check.phone_code_checked == 'W'){
			//         alert('연락처 인증 중 입니다. 잠시 후에 다시 시도해주세요.');
			//     }else{
			//         alert('연락처 인증이 완료되지 않았습니다.');
			//     }
			// }
			if(!adult_chk){
				alert('연락처 인증이 완료되지 않았습니다.');
				check = false;
			}
		}
		if(!form_check.email(modify_form.email)){
			check = false;
		}
		if(!check){
			return false;
		}
		if (!time_chk){
			alert('휴대폰 인증시간 초과, 다시 인증해주세요.');
			return false;
		}else{
			Csrf.Set(_CSRF_NAME_);
			$('#modify_form').submit();
		}
	}
</script>
<!-- //page_script -->
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