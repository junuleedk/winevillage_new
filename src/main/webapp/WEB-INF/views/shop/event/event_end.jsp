<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ PROMOTION </title>
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
	<div class="lnb comm_lnb bg_lnb event_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>완료된 프로모션</span></button>
				<ul class="mb_lnb_lists">
					<li><a href="/shop/event/event_lists">이달의 프로모션</a></li>
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
				<li><a href="/shop/event/event_lists"><span>이달의 프로모션</span></a></li>
				<li class="on"><a href="/shop/event/event_end"><span>완료된 프로모션</span></a></li>
				<!-- <li><a href="/shop/event/theme/theme_ing_lists">진행중인 기획전</a></li>
				<li><a href="/shop/event/theme_end/theme_end_lists">종료된 기획전</a></li> -->
				<!-- <li><a href="/shop/event/review/review_lists">이벤트 당첨자 발표</a></li> -->
				<!-- <li><a href="/shop/event/theme_review/theme_review_lists">기획전 당첨자 발표</a></li> -->
			</ul>
		</div>
	</div>
	<div class="wrap">
		<div class="content event event_end_page">
			<div class="event_lists_wrap">
				<ul id="end_event_list">
					<li class="end_event">
						<a href="/shop/event/event_view?no=386">
							<div class="img">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/event/fc054854141dd309427923e9ce9058ad.png" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/event/fc054854141dd309427923e9ce9058ad.png" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/event/fc054854141dd309427923e9ce9058ad.png" alt="">
									<!-- pc이미지 -->
								</picture>
							</div>
							<div class="text">
								<strong class="tit">아르테비노 오너 방한 디너</strong>
								<span class="con"></span>
								<i class="date">2024.06.07 ~ 2024.06.13</i>
							</div>
						</a>
					</li>
					<li class="end_event">
						<a href="/shop/event/event_view?no=384">
							<div class="img">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/event/d0eb2f2cbc65ef8756c31d5bad404296.png" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/event/d0eb2f2cbc65ef8756c31d5bad404296.png" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/event/d0eb2f2cbc65ef8756c31d5bad404296.png" alt="">
									<!-- pc이미지 -->
								</picture>
							</div>
							<div class="text">
								<strong class="tit">Drink on 'Seongsu' 6월 </strong>
								<span class="con"></span>
								<i class="date">2024.06.05 ~ 2024.06.15</i>
							</div>
						</a>
					</li>
					<li class="end_event">
						<a href="/shop/event/event_view?no=381">
							<div class="img">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/event/04eb5b1f71359764d837ce6014b76b12.jpg" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/event/04eb5b1f71359764d837ce6014b76b12.jpg" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/event/04eb5b1f71359764d837ce6014b76b12.jpg" alt="">
									<!-- pc이미지 -->
								</picture>
							</div>
							<div class="text">
								<strong class="tit">마르케제 안티노리 X 라연 디너</strong>
								<span class="con"></span>
								<i class="date">2024.05.30 ~ 2024.06.20</i>
							</div>
						</a>
					</li>
					<li class="end_event">
						<a href="/shop/event/event_view?no=378">
							<div class="img">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/event/ca20dd531aa30c930370c3cf37dcc545.jpg" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/event/ca20dd531aa30c930370c3cf37dcc545.jpg" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/event/ca20dd531aa30c930370c3cf37dcc545.jpg" alt="">
									<!-- pc이미지 -->
								</picture>
							</div>
							<div class="text">
								<strong class="tit">에스쿠도로호 X 그래비티 서울 판교 디너</strong>
								<span class="con"></span>
								<i class="date">2024.05.23 ~ 2024.05.29</i>
							</div>
						</a>
					</li>
					<li class="end_event">
						<a href="/shop/event/event_view?no=377">
							<div class="img">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/event/a62c547dcde474b76c4f1e68324f69e5.png" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/event/a62c547dcde474b76c4f1e68324f69e5.png" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/event/a62c547dcde474b76c4f1e68324f69e5.png" alt="">
									<!-- pc이미지 -->
								</picture>
							</div>
							<div class="text">
								<strong class="tit">WINENARA FAMILY SALE</strong>
								<span class="con"></span>
								<i class="date">2024.05.20 ~ 2024.06.03</i>
							</div>
						</a>
					</li>
					<li class="end_event">
						<a href="/shop/event/event_view?no=376">
							<div class="img">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/event/9ec0d9c0c32e9529870ff242f490a7f1.png" media="(min-width:768px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/event/9ec0d9c0c32e9529870ff242f490a7f1.png" media="(max-width:767px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../uploads/event/9ec0d9c0c32e9529870ff242f490a7f1.png" alt="">
									<!-- pc이미지 -->
								</picture>
							</div>
							<div class="text">
								<strong class="tit">Bordeaux Night 와인 시음회</strong>
								<span class="con"></span>
								<i class="date">2024.05.14 ~ 2024.06.07</i>
							</div>
						</a>
					</li>
					<script>
					// var page = 1;
					// var cnt = 6;
					// // alert(page + " : " + cnt);
					// if(page == 1 && cnt < 1){
					//     $('#more_btn').hide();
					// }else if(page > 1 && cnt < 1){  
					//     alert('마지막 글입니다.');
					//     $('#more_btn').hide();
					// }else{
					//     $('#more_btn').show();
					// }
					</script>
				</ul>
				<!-- <button type="button" class="btn_txt" id="more_btn" onclick="get_event_end_list('more');"><span>더보기</span></button> -->
			</div>
			<!--//event-lists-wrap-->
		</div>
		<!--//event event_end_page-->
	</div>
	<form action="https://www.winenara.com/shop/event/event_list_end_ajax" method="post" id="listFrm" accept-charset="utf-8">
		<input type="hidden" name="witplus_csrf_token" value="03c9584ca9d10fb26fad1c3affbec255">
		<input type="hidden" name="page" id="page" value="1">
		<input type="hidden" name="stat" id="stat" value="2">
	</form>
	<script>
		$(document).ready(function(){
			get_event_end_list();
			//스크롤 바닥 감지
			window.addEventListener('scroll', moreShowList);
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
			Csrf.Set(_CSRF_NAME_);
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
					$('#end_event_list').append(data);
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