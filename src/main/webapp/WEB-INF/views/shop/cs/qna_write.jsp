<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 1:1문의</title>
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
<sec:authorize access="!isAuthenticated()">
<%@ include file="../common/header.jsp" %>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<%@ include file="../common/header_loggedin.jsp" %>
</sec:authorize>
<!-- //header -->
<%@ include file="../common/layer.jsp" %>
<%@ include file="../common/script.jsp" %>

<!-- contents -->
<section id="contents" style="margin-top: 188px;">
	<div class="lnb cs_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>1:1문의</span></button>
				<ul class="mb_lnb_lists">
					<li><a href="/shop/cs/notice_lists">공지사항</a></li>
					<li><a href="/shop/cs/faq_lists">자주하는 질문</a></li>
					<li class="on"><a href="/shop/cs/qna_write">1:1문의</a></li>
					<li><a href="/shop/company/member_benefit">회원혜택</a></li>
					<li><a href="/shop/cs/nomem_cert">비회원주문조회</a></li>
				</ul>
			</div>
		</div>
		<div class="pc_lnb mb_hidden">
			<div class="page_tit">
				<h2><span>1:1문의</span></h2>
			</div>
			<ul class="menu tab4">
				<li><a href="/shop/cs/notice_lists"><span>공지사항</span></a></li>
				<li><a href="/shop/cs/faq_lists"><span>자주하는 질문</span></a></li>
				<li class="on"><a href="/shop/cs/qna_write"><span>1:1문의</span></a></li>
				<li><a href="/shop/cs/nomem_cert"><span>비회원주문조회</span></a></li>
			</ul>
		</div>
	</div>
	<div class="wrap">
		<div class="content cs qna_lists_page">
			<div class="qna_lists_wrap">
				<div class="top">
					<span>와인나라 이용 중에 생긴<br>
					불편한 점이나 문의사항을 보내주세요.</span>
				</div>
				<div class="form_area">
					<form action="https://www.winenara.com/shop/cs/qna_proc" method="post" id="postFrm" accept-charset="utf-8">
						<input type="hidden" name="witplus_csrf_token" value="42fabd8087adbdb6a2608c54c2608a8a">
						<ul>
							<li>
							<div class="l_tit">
								<label for="input_disabled">이름</label>
							</div>
							<div class="form_box">
								<input type="text" id="input_disabled" name="writer" value="고객">
							</div>
							</li>
							<li>
							<div class="l_tit">
								<label for="phone">연락처</label>
							</div>
							<div class="form_box">
								<input type="text" id="phone" name="writer_phone" placeholder=" '-'제외한 숫자만 입력해주세요." maxlength="11" oninput="this.value=this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" value="010-9999-9999">
								<!-- <p class="input_info_txt">안내메시지 텍스트</p> -->
							</div>
							</li>
							<li>
							<div class="l_tit">
								<label for="code_gb">구분</label>
							</div>
							<div class="form_box">
								<select name="code_gb" id="code_gb">
									<option value="701">상품관련</option>
									<option value="702">주문/결제관련</option>
									<option value="703">반품/환불관련</option>
									<option value="704">건강정보관련</option>
									<option value="705">기타관련</option>
									<option value="706">상품문의</option>
									<option value="707">회원/정보관리</option>
									<option value="708">배송</option>
									<option value="709">영수증/증빙서류</option>
								</select>
							</div>
							</li>
							<li>
							<div class="l_tit">
								<label for="title">제목</label>
							</div>
							<div class="form_box">
								<input type="text" id="title" name="title" placeholder="제목을 입력해주세요.">
								<!-- <p class="input_info_txt">안내메시지 텍스트</p> -->
							</div>
							</li>
							<li>
							<div class="l_tit">
								<label for="content">문의내용</label>
							</div>
							<div class="form_box">
								<textarea type="text" id="content" name="content" placeholder="문의내용을 입력해주세요."></textarea>
								<!-- <p class="input_info_txt">안내메시지 텍스트</p> -->
							</div>
							</li>
						</ul>
					</form>
					<button type="button" class="btn_txt btn_black" onclick="form_submit();"><span>문의하기</span></button>
				</div>
			</div>
			<!--//qna_lists_wrap-->
		</div>
		<!--//cs qna_lists_page-->
	</div>
	<script>
		function form_submit(){
		if( !$('#input_disabled').val() ){
			alert('이름을 입력해주세요.');
			$('#input_disabled').focus();
			return false;
		}
		if( !$('#phone').val() ){
			alert('연락처를 입력해주세요.');
			$('#phone').focus();
			return false;
		}
		if( !$('#code_gb').val() ){
			alert('구분을 선택해주세요.');
			$('#code_gb').focus();
			return false;
		}
		if( !$('#title').val().trim() ){
			alert('제목을 입력해주세요.');
			$('#title').focus();
			return false;
		}
		if( !$('#content').val() ){
			alert('내용을 입력해주세요.');
			$('#content').focus();
			return false;
		}else{
			var str = $('#content').val();
			str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');
			$('#content').val(str);
		}
		Csrf.Set(_CSRF_NAME_); // 토큰 초기화
		$('#postFrm').submit();
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