<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 주문완료</title>
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
<section id="contents">
	<div class="lnb order_lnb lnb_wrap step_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand" id="select_brand">
				<h2 class="my_value js_selectBtn">주문완료</h2>
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
		<div class="content order order_ok_page">
			<div class="top_txt">
				<p class="tit">고객님,<br class="pc_hidden">주문이 완료되었습니다.</p>
				<p>주문번호: <em>202405231716140GPA</em> (주문일 : 2024.05.23)</p>
			</div>
			<div class="c_lists">
				<ul>
					<li>
						<div class="box ip_img">
							<picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(min-width:768px)"><!-- pc이미지 -->
								<source srcset="../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(max-width:767px)"><!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" alt=""><!-- pc이미지 -->
							</picture>
						</div>
						<div class="box con">
							<div class="more_info">
								<p class="prd_name"><a href="/shop/product/product_view?product_cd=02B044">뵈브 드 베르네 브뤼 200ml</a></p>
								<div class="icon country">
									<span><img src="../../asset/images/shop/product/icon/g501.png" alt=""></span>프랑스
								</div>
								<span class='icon box'>ml</span>
							</div>
						</div>
						<div class="box opt">
							<!-- <span>용량 : 750ML</span>
							<span>빈티지 : 2015년</span> -->
							<span>용량 : </span>
						</div>
						<div class="box price">
							<!-- <p class="sub_txt">20% 할인 남은 시간 : 1일 10시간 27분</p> -->
							<del>9,500원</del>
							<ins>8,500원</ins>
							<span>1EA</span>
						</div>
					</li>
				</ul>
			</div>
			<div class="form_area left">
				<div class="f_top"><h2>주문자</h2></div>
				<div class="info_box">
					<dl>
						<dt>주문자명</dt>
						<dd>고객</dd>
					</dl>
					<dl>
						<dt>이메일</dt>
						<dd>gogek1234@gmail.com</dd>
					</dl>
					<dl>
						<dt>연락처</dt>
						<dd>010-9999-9999</dd>
					</dl>
				</div>
				<div class="f_top"><h2>받는 사람</h2></div>
				<div class="info_box">
					<dl>
						<dt>수령방법</dt>
						<dd>직접픽업</dd>
					</dl>
					<dl>
						<dt>수령자명</dt>
						<dd>고객</dd>
					</dl>
					<dl>
						<dt>연락처</dt>
						<dd>010-9999-9999</dd>
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
				<div class="f_top"><h2>결제정보</h2></div>
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
			<div class="ntc_list">
				<div class="box">
					<p>교환/환불 방법</p>
					<em>교환/환불/반품취소 요청은 픽업지로 설정한 매장으로 유선 문의 부탁 드립니다.</em>
					와인나라 압구정점 TEL. <a href="tel:025414363">02-541-4363</a><br>
					와인나라 경희궁점 TEL. <a href="tel:027754663"></a> 02-775-4663</a><br>
					와인나라 양평점 TEL. <a href="tel:0226320727"></a> 02-2632-0727</a><br>
					와인나라 청담점  TEL. <a href="tel:025584811"></a> 02-598-4811 (청담점)</a><br>
					와인나라 코엑스점 TEL. <a href="tel:025589800"></a> 02-558-9880</a><br>
					와인나라 서래마을점 TEL. <a href="tel:025929035"></a> 02-592-9035</a>
				</div>
			</div>
			<div class="btn_area col2">
				<button type="button" class="btn_txt" onclick="location.href='/shop/main'"><span>계속 쇼핑하기</span></button>
				<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/mypage/shopping/order_lists'"><span>주문배송 확인</span></button>
			</div>
		</div>
	</div>
	<script type="text/JavaScript">
	var log = '{"02B044":"1"}';
	log = JSON.parse(log);

	RC_Method({
		sign_up_data: "2024-04-10 22:25:14",
		page_type:"paymentComplete_page", 
		behavior:"page_view",
		extra: {
			purchased_products : log
		}
	});
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
var page = 'order_ok';
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