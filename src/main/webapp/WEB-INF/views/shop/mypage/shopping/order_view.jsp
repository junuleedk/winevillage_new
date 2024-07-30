<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 주문내역</title>
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
<%@ include file="../../common/header.jsp" %>
<!-- //header -->
<%@ include file="../../common/layer.jsp" %>
<%@ include file="../../common/script.jsp" %>

<!-- contents -->
<section id="contents" style="margin-top: 188px;">
	<div class="lnb mypage_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>주문내역</span></button>
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
							<div class="num_box">
								<span>0</span>
							</div>
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
						<p><strong class="name">윤영길</strong>님 안녕하세요!</p>
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
						<li class="on"><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
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
						<!-- <li><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
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
	<div class="content mypage shopping order order_ok_page order_view_page">
		<div class="inner">
			<div class="top_info">
				<div class="page_tit">
					<h2 class="tit">주문내역</h2>
				</div>
			</div>
			<div class="top_txt">
				<p>주문번호: <em>202405231716140GPA</em> (주문일 : 2024.05.23)</p>
			</div>
			<div class="c_lists">
				<ul>
					<li>
					<div class="box ip_img">
						<picture style="background:#E0EBF8">
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(min-width:768px)">
						<!-- pc이미지 -->
						<source srcset="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(max-width:767px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" alt="">
						<!-- pc이미지 -->
						</picture>
					</div>
					<div class="box con">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=02B044">뵈브 드 베르네 브뤼 200ml</a>
							</p>
							<span class="label" style="background:#E0EBF8">스파클링</span><span class="label" style="background:#E0EBF8">프랑스</span><span class="icon box">ml</span>
						</div>
					</div>
					<div class="box opt">
						<span>용량 : </span>
					</div>
					<div class="box price">
						<!--p class="sub_txt">20% 할인 남은 시간 : 1일 10시간 27분</p-->
						<ins>8,500원</ins>
						<!--del>9,500원</del-->
						<span>1EA</span>
						<!--<button type="button" class="btn_txt btn_write"><span>시음노트 작성</span></button>-->
					</div>
					</li>
				</ul>
			</div>
			<div class="form_area left">
				<div class="f_top">
					<h2>주문자</h2>
				</div>
				<div class="info_box">
					<dl>
						<dt>주문자명</dt>
						<dd>고객</dd>
					</dl>
					<dl>
						<dt>이메일</dt>
						<dd>gogek1234@gogek.com</dd>
					</dl>
					<dl>
						<dt>연락처</dt>
						<dd>010-9999-9999</dd>
					</dl>
				</div>
				<div class="f_top">
					<h2>받는 사람</h2>
				</div>
				<div class="info_box">
					<dl>
						<dt>수령방법</dt>
						<dd>직접픽업</dd>
					</dl>
					<dl>
						<dt>수령자명</dt>
						<dd>윤주상</dd>
					</dl>
					<dl>
						<dt>연락처</dt>
						<dd>010-2409-4511</dd>
					</dl>
					<!--직접픽업 -->
					<dl>
						<dt>픽업일</dt>
						<dd>2024-05-24</dd>
					</dl>
					<dl>
						<dt>픽업매장</dt>
						<dd>시청점</dd>
					</dl>
					<!--// 직접픽업 -->
					<!-- 매장방문 -->
					<!--// 택배배송 -->
					<dl>
						<dt>요구사항</dt>
						<dd></dd>
					</dl>
				</div>
			</div>
			<div class="form_area right">
				<div class="f_top">
					<h2>결제정보</h2>
				</div>
				<div class="t_price_info">
					<dl>
						<dt>총 구매금액</dt>
						<dd>8,500원</dd>
					</dl>
					<dl>
						<dt>배송비</dt>
						<dd>+ 0원</dd>
					</dl>
					<dl>
						<dt>쿠폰할인</dt>
						<dd>- 0원</dd>
					</dl>
					<dl>
						<dt>마일리지</dt>
						<dd>- 0원</dd>
					</dl>
					<dl>
						<dt>기프트카드</dt>
						<dd>- 0원</dd>
					</dl>
					<dl class="total">
						<dt>최종결제금액</dt>
						<dd>8,500원</dd>
					</dl>
					<dl class="pay">
						<dt>결제수단</dt>
						<dd>카드결제</dd>
					</dl>
				</div>
			</div>
			<!-- <div class="ntc_list">
				<div class="box">
					<p>교환/환불 방법</p>
					- 교환/환불/반품취소 요청 : 상품 수령 후 1주일 내 처리 됩니다.<br>
					- 고객님의 의한 단순변심 : 고객님께서 왕복 배송비 12,000원)를 부담하셔야 합니다.<br>
					- 상품에 문제가 있을 경우 : 당사에서 배송비를 부담합니다.
				</div>
			</div> -->
			<div class="btn_area col3">
				<button type="button" class="btn_txt" onclick="history.back();"><span>주문목록</span></button>
				<!-- <button type="button" class="btn_txt btn_black" onclick="printReceipt('20', '24394489904349');"><span>영수증출력</span></button> -->
			</div>
		</div>
	</div>
	<!-- page_script -->
	<script>
		function cancelSubmit(ocode, otype_cd){
			if( otype_cd == '10' ){
				alert("1:1문의에 문의바랍니다");
				location.href = '/shop/cs/qna_write';
			} else {
				if(confirm("주문을 취소 하시겠습니까?")){
					Csrf.Set(_CSRF_NAME_); //토큰 초기화
					$.ajax({
						type : "POST",
						url : "cancel_proc_ajax?ajax_mode=ORDER_CANCEL",
						dataType : 'json',
						async : false,
						data : {"ocode" : ocode, "part_yn" : "N"},
						success : function (res) {
							alert(res.msg);
							if( $.trim(res.status) == "ok"){
								location.reload();
							}
							return;
						},
						error: function (res) {
							alert(res.responseText);
						}
					});
				}
			}
		}
		function printReceipt(otype, tno){
			var url = "";
			var ocode = "202404101712122YUI";
			var amount = "2025-00-00 00:00:00";
			if(otype == '10'){ //가상계좌
				url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=vcnt_bill&tno="+tno+"&order_no="+ocode+"&trade_mony="+amount;
			} else if(otype == '20') {//카드결제
				url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=card_bill&tno="+tno+"&order_no="+ocode+"&trade_mony="+amount;
			} else if(otype == '30') {//계좌이체
				url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=acnt_bill&tno="+tno+"&order_no="+ocode+"&trade_mony="+amount;
			} else if(otype == '40') {//휴대폰결제
				url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=mcash_bill&tno="+tno+"&order_no="+ocode+"&trade_mony="+amount;
			}
			if( url != ''){
				console.log(url);
				Common.openWindowPop(url,'영수증출력','scrollbars=yes,resizable=yes,width=470,height=815');
			} else {
				alert("오류가 발생했습니다.");
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