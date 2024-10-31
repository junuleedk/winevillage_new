<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 공지사항</title>
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
<section id="contents" style="margin-top: 188px;">
	<div class="lnb cs_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>공지사항</span></button>
				<ul class="mb_lnb_lists">
					<li class="on"><a href="/shop/cs/notice_lists">공지사항</a></li>
					<li><a href="/shop/cs/faq_lists">자주하는 질문</a></li>
					<li><a href="/shop/cs/qna_write">1:1문의</a></li>
					<li><a href="/shop/company/member_benefit">회원혜택</a></li>
					<li><a href="/shop/cs/nomem_cert">비회원주문조회</a></li>
				</ul>
			</div>
		</div>
		<div class="pc_lnb mb_hidden">
			<div class="page_tit">
				<h2><span>공지사항</span></h2>
			</div>
			<ul class="menu tab4">
				<li class="on"><a href="/shop/cs/notice_lists"><span>공지사항</span></a></li>
				<li><a href="/shop/cs/faq_lists"><span>자주하는 질문</span></a></li>
				<li><a href="/shop/cs/qna_write"><span>1:1문의</span></a></li>
				<li><a href="/shop/cs/nomem_cert"><span>비회원주문조회</span></a></li>
			</ul>
		</div>
	</div>
	<div class="wrap">
		<div class="content cs notice_view_page">
			<div class="view_page_wrap notice_view_wrap">
				<div class="view_tit_wrap">
					<h3 class="tit">[공지] 와인나라 온라인몰 이용안내</h3>
					<i class="date"></i>
				</div>
				<div class="con">
					<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(77, 77, 77); font-family: 나눔고딕, NanumGothic, 돋움, Dotum, ">
						<li style="box-sizing: border-box; color: rgb(76, 76, 76); line-height: 22px; list-style: none; margin-bottom: 6px; padding-left: 8px; position: relative;"><br>
						</li>
						<li style="box-sizing: border-box; color: rgb(76, 76, 76); line-height: 22px; list-style: none; margin-bottom: 6px; padding-left: 8px; position: relative;">안녕하세요, 와인나라입니다.</li>
						<li style="box-sizing: border-box; color: rgb(76, 76, 76); line-height: 22px; list-style: none; margin-bottom: 6px; padding-left: 8px; position: relative;">와인나라 온라인몰에서 구매하는 주류는 매장을 방문하여 수령하여야 하며, 주류를 매장 외부로 반출하여 소비자에게 배달하거나 판매할 수 없습니다.</li>
						<li style="box-sizing: border-box; color: rgb(76, 76, 76); line-height: 22px; list-style: none; margin-bottom: 6px; padding-left: 8px; position: relative;">주류 구매 시 픽업 원하시는 매장과 날짜 선택 후 방문 픽업 부탁드립니다.&nbsp;</li>
						<li style="box-sizing: border-box; color: rgb(76, 76, 76); line-height: 22px; list-style: none; margin-bottom: 6px; padding-left: 8px; position: relative;"><br>
						</li>
						<li style="box-sizing: border-box; color: rgb(76, 76, 76); line-height: 22px; list-style: none; margin-bottom: 6px; padding-left: 8px; position: relative;">감사합니다.</li>
					</ul>
				</div>
				<button type="button" class="btn_txt btn_black" onclick="javascript:location.href='/shop/cs/notice_lists'"><span>목록</span></button>
			</div>
			<!--//event_view_wrap-->
		</div>
		<!--//event event_lists_page-->
	</div>
	<script>
		$('input[type="text"]').keydown(function() {
			if (event.keyCode === 13) {
				event.preventDefault();
				get_notice_list('search');
			}
		});
		$(document).ready(function(){
			get_notice_list();
			//스크롤 바닥 감지
			window.addEventListener('scroll', moreShowList);
			function moreShowList() {
			// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
				if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
					get_notice_list('more');
				}
			}
			// if(더 호출할 것이 없을 때 스크롤 기능 제거){
			//      window.removeEventListener('scroll', moreShowList);
			// }
		})
		function get_notice_list(mode){
			Csrf.Set(_CSRF_NAME_);
			if(mode == 'more'){
				var page = $('#page').val();
				page++;
				$('#page').val(page);
			}else if(mode == 'search'){
				$('#page').val(1);
				$('.notice_lists *').remove();
			}
			var params = $("#listFrm").serialize();
			$.ajax({
				url : "/shop/cs/notice_lists_ajax",
				type : "post",
				data : params,
				success:function(data){
					// console.log(data);
					$('.notice_lists').append(data);
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
	var page = 'notice_view';
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