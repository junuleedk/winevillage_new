<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 나의 마일리지</title>
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
<section id="contents" style="margin-top: 188px;">
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
<%@ include file="mileage_lists/mileage_lists_page.jsp" %>
<script>
</script>
<!-- //page_script -->
<input type="hidden" id="page" value="1">
<script>
var list_gb = "plus_list";
$(".js_tab > ul > li > button").on("click",function() {
	list_gb = $(this).attr("data-val");
	get_mlg_list();
});
$(document).ready(function(){
	DatePeriod.GetDate(10, 'date_s', 'date_e');
	get_mlg_list();
})
//스크롤 바닥 감지
window.addEventListener('scroll', moreShowList);
function moreShowList() {
//  if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
	if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
		get_mlg_list('more');
	}
}
var page = 1;
function get_mlg_list(mode){
	//Csrf.Set(_CSRF_NAME_);
	if(mode == 'more'){
		page = $('#page').val();
		page++;
		$('#page').val(page);
	} else {
		page = 1;
	}
	$.ajax({
		url : '/shop/mypage/note/mileage_erp_lists_ajax',
		type : 'post',
		data : {'page':page, "list_gb":list_gb , "sh_s_date" : $("#date_s").val(), "sh_e_date" : $("#date_e").val() },
		success:function(res){
			if($.trim(res) == ""){
				if(mode == 'more'){
					// alert("마지막 페이지입니다.");
					window.removeEventListener('scroll', moreShowList);
				} else {
					if(list_gb == 'minus_list') {
						$('.mypage_use_lists').html("<li class='nodata'>내역이 없습니다.</li>");
					} else {
						$('.mypage_lists').html("<li class='nodata'>내역이 없습니다.</li>");
					}
				}
			} else{
				if(mode == 'more'){
					console.log(res);
					if(list_gb == 'minus_list') {
						$('.mypage_use_lists').append(res);
					} else {
						$('.mypage_lists').append(res);
					}
				}else{
					if(list_gb == 'minus_list') {
						$('.mypage_use_lists').html(res);
					} else {
						$('.mypage_lists').html(res);
					}
				}
			}
		},error:function(res){
			console.log(res);
		}
	});
}
</script>
<!-- page_script -->
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