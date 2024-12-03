<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 나의 쿠폰</title>
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
<%@ include file="../common/mypage_lnb.jsp" %>
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
<%@ include file="coupon_lists/coupon_lists_page.jsp" %>
<script>
function Reg_Submit() {
	if($("#coupon_number").val() == ""){
		alert("쿠폰번호를 입력해주세요.");
		return;
	}
	//Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url : "/shop/mypage/note/coupon_proc",
		data 	: $("#couponForm").serialize(),
		dataType : 'json',
		async: false,
		success	: function (res) {
			if (typeof res.msg !== "undefined") {
				alert(res.msg);
			}
			if( $.trim(res.status) == "ok"){
				location.reload();
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