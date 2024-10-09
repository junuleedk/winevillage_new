<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ PROMOTION </title>
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
<section id="contents" style="margin-top: 188px;">
	<div class="lnb comm_lnb bg_lnb event_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>완료된 프로모션</span></button>
				<ul class="mb_lnb_lists">
					<li><a href="/shop/event/event_lists.do">이달의 프로모션</a></li>
					<!-- <li><a href="/shop/event/theme/theme_ing_lists">진행중인 기획전</a></li>
					<li><a href="/shop/event/theme_end/theme_end_lists">종료된 기획전</a></li> -->
					<!-- <li><a href="/shop/event/review/review_lists">이벤트 당첨자 발표</a></li> -->
					<!-- <li><a href="/shop/event/theme_review/theme_review_lists">기획전 당첨자 발표</a></li> -->
				</ul>
			</div>
		</div>
		<div class="pc_lnb mb_hidden">
			<div class="page_tit">
				<h2><span>PROMOTION</span></h2>
			</div>
			<ul class="menu tab2">
				<li><a href="/shop/event/event_lists.do"><span>이달의 프로모션</span></a></li>
				<li class="on"><a href="/shop/event/event_end.do"><span>완료된 프로모션</span></a></li>
				<!-- <li><a href="/shop/event/theme/theme_ing_lists">진행중인 기획전</a></li>
				<li><a href="/shop/event/theme_end/theme_end_lists">종료된 기획전</a></li> -->
				<!-- <li><a href="/shop/event/review/review_lists">이벤트 당첨자 발표</a></li> -->
				<!-- <li><a href="/shop/event/theme_review/theme_review_lists">기획전 당첨자 발표</a></li> -->
			</ul>
		</div>
	</div>
	<div class="wrap">
		<div class="content event event_end_page">
			<%@ include file="event_end/event_lists_wrap.jsp" %>
			<!--//event-lists-wrap-->
		</div>
		<!--//event event_end_page-->
	</div>
	<form action="https://www.winenara.com/shop/event/event_list_end_ajax" method="post" id="listFrm" accept-charset="utf-8">
		<!-- <input type="hidden" name="witplus_csrf_token" value="03c9584ca9d10fb26fad1c3affbec255"> -->
		<input type="hidden" name="page" id="page" value="1">
		<input type="hidden" name="stat" id="stat" value="2">
	</form>
	<script>
		$(document).ready(function(){
			get_event_end_list();
			//스크롤 바닥 감지
			//window.addEventListener('scroll', moreShowList);
			function moreShowList() {
			// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
				if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
					get_event_end_list('more');
				}
			}
			// if(더 호출할 것이 없을 때 스크롤 기능 제거){
			//      window.removeEventListener('scroll', moreShowList);
			// }
		});
		function get_event_end_list(mode){
			/* Csrf.Set(_CSRF_NAME_); */
			if(mode == 'more'){
				var page = $('#page').val();
				page++;
				$('#page').val(page);
			}
			var params = $("#listFrm").serialize();
			$.ajax({
	            url : "/shop/event/event_list_end_ajax",
	            type : "post",
	            data : params,
	            success:function(data){
	                // console.log(data);
	                $('#end_event_list').append(data.html);
	                
	             	// 더 이상 불러올 데이터가 없으면 버튼 숨기기
	                if (!data.more_btn) {
	                    $('#more_btn').hide();  // hasMore가 false면 버튼 숨기기
	                }
					// 더 이상 불러올 데이터가 없으면 스크롤 이벤트 제거
	                // if(더 호출할 것이 없을 때 스크롤 기능 제거){
	                //      window.removeEventListener('scroll', moreShowList);
	                // }
	            },error:function(request,status,error){
	                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	            }
	        })
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
	var page = 'event_lists';
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