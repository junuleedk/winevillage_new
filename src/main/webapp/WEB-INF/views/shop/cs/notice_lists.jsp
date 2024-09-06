<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
		<div class="content cs notice_lists_page">
			<div class="notice_lists_wrap">
				<form action="https://www.winenara.com/shop/cs/notice_lists_ajax" method="post" id="listFrm" accept-charset="utf-8">
					<input type="hidden" name="witplus_csrf_token" value="50b7028d56235f9e0f57d2c8b64fd1dc">
					<div class="search_box">
						<input type="text" name="keyword" placeholder="검색어를 입력해주세요.">
						<input type="hidden" name="page" id="page" value="1">
						<button type="button" onclick="get_notice_list('search');">검색</button>
					</div>
				</form>
				<table class="tbl_list">
				<caption>공지사항</caption>
				<colgroup>
				<col class="num">
				<col class="tit">
				<col class="date">
				</colgroup>
				<thead>
				<tr class="tbl_list_tit">
					<th class="num">번호</th>
					<th class="tit">제목</th>
					<th class="date">작성일</th>
				</tr>
				</thead>
				<tbody class="notice_lists">
				<tr>
					<td class="num">
						<span class="ico_ntc">공지</span>
					</td>
					<td class="tit">
						<span class="ico_ntc">공지</span>
						<a href="/shop/cs/notice_view?no=1175">
							<p>[공지] 와인나라 온라인몰 이용안내</p>
						</a>
					</td>
					<td class="date">2024.02.23</td>
				</tr>
				<tr>
					<td class="num">
						<span class="ico_ntc">공지</span>
					</td>
					<td class="tit">
						<span class="ico_ntc">공지</span>
						<a href="/shop/cs/notice_view?no=1156">
							<p>[공지] 개인정보 보호법 개정에 따른 휴면 회원 복귀 안내</p>
						</a>
					</td>
					<td class="date">2023.12.01</td>
				</tr>
				<tr>
					<td class="num">
						<span class="ico_ntc">공지</span>
					</td>
					<td class="tit">
						<span class="ico_ntc">공지</span>
						<a href="/shop/cs/notice_view?no=1021">
							<p>와인나라의 개인정보취급방침 및 이용 약관을 개정 안내 (7월 1일)</p>
						</a>
					</td>
					<td class="date">2022.06.13</td>
				</tr>
				<tr>
					<td class="num">318</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=1061">
							<p>와인나라 서울창고 이전으로 인한 배송 불가 안내</p>
						</a>
					</td>
					<td class="date">2022.10.21</td>
				</tr>
				<tr>
					<td class="num">317</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=1050">
							<p>[공지] 추석 명절 와인나라 직영점 및 온라인몰 운영 안내</p>
						</a>
					</td>
					<td class="date">2022.09.08</td>
				</tr>
				<tr>
					<td class="num">316</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=659">
							<p>[공지] 2022 3월 공휴일 와인나라 휴무 안내</p>
						</a>
					</td>
					<td class="date">2022.02.28</td>
				</tr>
				<tr>
					<td class="num">315</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=658">
							<p>[공지] 2022 설연휴 와인나라 휴무 안내</p>
						</a>
					</td>
					<td class="date">2022.01.28</td>
				</tr>
				<tr>
					<td class="num">314</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=657">
							<p>[RAFFLE WEEK 10: 아르망드브리냑 골드브뤼] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.12.23</td>
				</tr>
				<tr>
					<td class="num">313</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=656">
							<p>[RAFFLE WEEK 09: 샤또마고2014] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.12.16</td>
				</tr>
				<tr>
					<td class="num">312</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=655">
							<p>[RAFFLE WEEK 08: 샤또무똥로칠드2015] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.12.09</td>
				</tr>
				<tr>
					<td class="num">311</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=654">
							<p>[RAFFLE WEEK 07: 슈발블랑2009] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.12.02</td>
				</tr>
				<tr>
					<td class="num">310</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=653">
							<p>[마감] 부온크리스티아니x초이닷 갈라디너 진행 안내</p>
						</a>
					</td>
					<td class="date">2021.11.30</td>
				</tr>
				<tr>
					<td class="num">309</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=652">
							<p>[RAFFLE WEEK 06: 헌드레드에이커 카일리모건 2017] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.11.18</td>
				</tr>
				<tr>
					<td class="num">308</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=651">
							<p>[RAFFLE WEEK 05: 샤또마고 2014] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.11.11</td>
				</tr>
				<tr>
					<td class="num">307</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=650">
							<p>[RAFFLE WEEK 04: 사시카이아 2016] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.11.04</td>
				</tr>
				<tr>
					<td class="num">306</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=649">
							<p>서비스 이전에 따른 와인나라 온라인몰(winenara.com) 개인정보 이전 안내</p>
						</a>
					</td>
					<td class="date">2021.10.28</td>
				</tr>
				<tr>
					<td class="num">305</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=648">
							<p>[RAFFLE WEEK 03: 사시카이아 2015] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.10.28</td>
				</tr>
				<tr>
					<td class="num">304</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=647">
							<p>[RAFFLE WEEK 02: 티냐넬로 2017] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.10.21</td>
				</tr>
				<tr>
					<td class="num">303</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=646">
							<p>[RAFFLE WEEK 런칭 스페셜 오프라인 응모 : 사시카이아 2017] 6개 직영점 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.10.21</td>
				</tr>
				<tr>
					<td class="num">302</td>
					<td class="tit">
						<a href="/shop/cs/notice_view?no=645">
							<p>[RAFFLE WEEK 01: 사시카이아 2017] 당첨자 발표</p>
						</a>
					</td>
					<td class="date">2021.10.14</td>
				</tr>
				<script>
		// var page = 1;
		// var cnt = 20;
		// if(page == 1 && cnt < 1){
		//     $('#more_btn').hide();
		// }else if(page > 1 && cnt < 1){  
		//     alert('마지막 글입니다.');
		//     $('#more_btn').hide();
		// }else{
		//     $('#more_btn').show();
		// }
				</script>
				</tbody>
				</table>
				<!-- <button type="button" class="btn_txt" id="more_btn" onclick="get_notice_list('more');"><span>더보기</span></button> -->
			</div>
			<!--//event-lists-wrap-->
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