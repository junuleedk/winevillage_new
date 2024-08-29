<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
    // memberId와 memberName은 @ModelAttribute를 통해 설정된 속성
    String memberId = (String) request.getAttribute("memberId");
    String memberName = (String) request.getAttribute("memberName");
    int memberPoints = (Integer) request.getAttribute("memberPoints");
%>
<header id="header" class="header mypage_index_header">
<!-- 로딩바 -->
<div class="loading">
    <div class="loading_bar">
        <div class="loading_img">
            <img src="<c:url value='/asset/images/shop/default/ico_loading.svg' />" alt="">
        </div>
    </div>
    <script type="text/javascript">
    var loding = setInterval(function () {
        // $('.loading_bar').animate({'width' : '100%' }, 2000, function(){
        //     $('.loading_bar').css({ 'width' : '0%' });
        // });
    }, 2100);
    window.onload = function () {
        clearInterval(loding);
        $(".loading").fadeOut(function () {
            $(".loading").remove();
        });
    }
    </script>
</div>
<input type="hidden" id="session_id" value="${ memberId }">
<!-- 최상단 배너 -->
<!-- <div class="top_banner time_out">
	<div class="top_banner_slide">
		<a href="/shop/mypage/action/qna_lists">
			<div class="banner">
				<h3 class="banner_tit">
					<span>1:1문의가 접수되었습니다.</span>
				</h3>
			</div>
		</a>
	</div>
</div> -->
<!-- //최상단 배너 -->
<div class="top">
	<div class="wrap">
		<ul class="left_menu">
			<li class="language mb_hidden">
				<button type="button">
					<span>
						<img class="langg" src="<c:url value='/asset/images/shop/default/pc_icon_flag_korea_sq.png' />" alt="">
					</span>
					<span class="txt">KOR</span>
				</button>
			</li>
			<li class="language mb_hidden">
				<button type="button" onclick="location.href='/en/main'">
					<span class="langg">
						<img class="langg" src="<c:url value='/asset/images/shop/default/pc_icon_flag_usa_sq.png' />" alt="">
					</span>
					<span class="txt">ENG</span>
				</button>
			</li>
			<li class="sns_area mb_hidden">
			<!-- <button type="button" class="btn_sel" onclick="$(this).parent().toggleClass('on');"><span class="ico_kakao">카카오톡채널</span></button> -->
			<ul>
				<!-- <li><button type="button" onclick="window.open('https://www.facebook.com/welcometowinenara');"><span class="ico_facebook">페이스북</span></button></li> -->
				<li><button type="button" onclick="window.open('https://www.instagram.com/winenara_official/')"><span class="ico_insta">인스타그램</span></button></li>
				<!-- <li><button type="button" onclick="window.open('https://blog.naver.com/winenara2175')"><span class="ico_blog">네이버블로그</span></button></li> -->
				<li><button type="button" onclick="window.open('https://www.youtube.com/channel/UCCfl_ClO1lV5CNOmH8vRa2w')"><span class="ico_youtube">유튜브</span></button></li>
				<li><button type="button" onclick="window.open('http://pf.kakao.com/_vlkxfxb')"><span class="ico_kakao">카카오톡채널</span></button></li>
			</ul>
			</li>
			<!-- <li class="store_area mb_hidden">
				<button type="button" class="btn_sel" onclick="$(this).parent().toggleClass('on');"><span id="choice_store">매장선택</span></button>
				<ul>
					<li><button type="button" onClick="setHeaderStore('2212');"><span>경희궁점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2214');"><span>코엑스점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2215');"><span>서래마을점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2217');"><span>일산점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2218');"><span>홍대점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2219');"><span>시청점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2220');"><span>성수점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2221');"><span>압구정점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2222');"><span>신용산점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2223');"><span>송도점</span></button></li>
					<li><button type="button" onClick="setHeaderStore('2224');"><span>MOWa Shop</span></button></li>
				</ul>
			</li> -->
			<li class="mb_search_btn mb_hidden"><button type="button" onclick="commonUI.header.Search.clickFn()">Mobile Search</button></li>
		</ul>
		<h1 class="logo">
			<a href="../main.html">
				<picture>
					<!--[if IE 9]><video style="display: none;"><![endif]-->
					<source srcset="<c:url value='/asset/images/shop/default/logo_header_pc.svg' />" media="(min-width:768px)">
					<!-- pc이미지 -->
					<source srcset="<c:url value='/asset/images/shop/default/logo_header_mb.svg' />" media="(max-width:767px)">
					<!-- mb이미지 -->
					<!--[if IE 9]></video><![endif]-->
					<img src="<c:url value='/asset/images/shop/default/logo_header_pc.svg' />" alt="WINEVILLAGE 2024" draggable="false">
					<!-- pc이미지 -->
				</picture>
			</a>
		</h1>
		<ul class="right_menu">
			<li class="cart">
				<a href="/shop/cart/cart_lists">
					<span>Cart List</span>
				</a>
			</li>
			<!-- <li class="mobile_mypage pc_hidden">
					<a href="/shop/mypage/shopping/mypage"><img src="<c:url value='/asset/images/shop/default/pc_icon_mypage.png' />" alt="My Page"></a>
			</li> -->
			<li class="mb_hidden wish">
				<a href="/shop/mypage/note/wish_lists">
					<img src="<c:url value='/asset/images/shop/default/pc_icon_wish.png' />" alt="Wish List">
				</a>
			</li>
			<!-- <li class="pc_search_btn mb_hidden"><button type="button" onclick="commonUI.header.Search.clickFn()">PC Search</button></li>-->
			<li class="mypage mb_hidden">
				<button type="button" onclick="commonUI.header.Mypage.clickFn()">
					<img src="<c:url value='/asset/images/shop/default/pc_icon_mypage.png' />" alt="My Page">
				</button>
				<div class="mypage_layer">
					<div class="on_login">
						<ul>
							<li>
								<h3><%= memberName %>님 </h3>
								<p class="info">실버</p>
							</li>
							<li>
								<h3>가용 마일리지</h3>
								<p class="info"><%= memberPoints %>P</p>
								<!-- <p class="sub_info">소멸예정 : 0P (2024.5<em>.01</em>)</p> -->
								<p class="sub_info">
									소멸예정 : 0P (<em>
									2024.04.30 </em>)
								</p>
							</li>
							<li class="top_line">
								<h3><a href="javascript:openProfile();">테이스트 프로파일</a></h3>
							</li>
							<li class="top_line">
								<h3><a href="/shop/mypage/shopping/mypage">마이페이지</a></h3>
							</li>
							<li class="top_line">
								<h3><a href="/shop/mypage/note/giftcard_lists">기프트카드</a></h3>
							</li>
						</ul>
						<button type="button" class="btn_txt btn_black logout_btn on" id="logoutBtn">로그아웃</button>
						<!-- <button type="button" class="btn_txt btn_black logout_btn on" onclick="location.href='/shop/auth/logout'">로그아웃</button> -->
					</div>
				</div>
			</li>
			<li class="mb_hidden">
				<a href="/shop/cs/notice_lists">
					<img src="<c:url value='/asset/images/shop/default/pc_icon_center.png' />" alt="Info Center">
				</a>
			</li>
		</ul>
		<!-- 로그인했을 경우 나타나는 GNB 메뉴 -->
		<div class="summary_menu">
			<p><a href="/shop/mypage/shopping/mypage">고객님</a></p>
			<p><a href="/shop/mypage/note/mileage_lists">마일리지<em><%= memberPoints %>P</em></a></p>
			<p><a href="/shop/mypage/note/coupon_lists">쿠폰<em>1</em></a></p>
		</div>
	</div>
</div>
<div class="bottom">
	<h1 class="fixed_logo" style="display:none;">
		<a href="/shop/main">
			<img src="<c:url value='/asset/images/shop/default/pc_fixed_logo.png' />" alt="WINENARA 1987" draggable="false">
		</a>
	</h1>
	<div class="wrap">
		<!-- <button type="button" class="pc_category" onclick="$('.category_gnb').toggleClass('on');"><span>CATEGORY</span></button> -->
		<div class="gnb">
			<ul>
				<!-- <li><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100">WINE</a></li>
				<li><a href="/shop/product/product_lists?sh_category1_cd=20000">BEER&LIQUOR</a></li>
				<li><a href="/shop/product/product_lists?sh_category1_cd=50000">TICKET</a></li>
				<li><a href="/shop/product/product_lists?sh_category1_cd=40000">OTHER</a></li> -->
				<li class="">
					<a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100">WINE</a>
					<div class="pc_category_gnb">
						<div class="flex_box">
							<div class="box wine">
								<ul>
									<li class="ico_red"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10101">레드</a></li>
									<li class="ico_white"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10102">화이트</a></li>
									<li class="ico_rose"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10108">로제</a></li>
									<li class="ico_sparkling"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10103">스파클링</a></li>
									<li class="ico_spirits"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10105">주정강화</a></li>
								</ul>
								<ul>
									<li class="ico_france"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10201">프랑스</a></li>
									<li class="ico_italia"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10202">이탈리아</a></li>
									<li class="ico_spain"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10203">스페인</a></li>
									<li class="ico_germ"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10204">독일</a></li>
									<li class="ico_usa"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10206">미국</a></li>
									<li class="ico_chile"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10205">칠레</a></li>
									<li class="ico_argentina"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10209">아르헨티나</a></li>
									<li class="ico_aus"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10207">호주</a></li>
									<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10210">기타 구대륙</a></li>
									<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10211">기타 신대륙</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="">
					<a href="/shop/product/product_lists?sh_category1_cd=20000">BEER&amp;LIQUOR</a>
					<div class="pc_category_gnb">
						<div class="flex_box">
							<div class="box other">
								<ul>
									<li class="ico_whiskey"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20101">위스키</a></li>
									<li class="ico_cognac"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20102">꼬냑</a></li>
									<li class="ico_tequila"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20105">데킬라</a></li>
									<li class="ico_jin"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20103">진</a></li>
									<li class="ico_rum"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20106">럼</a></li>
									<li class="ico_beer"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20200&amp;sh_category3_cd=20201">맥주</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="">
					<a href="/shop/product/product_lists?sh_category1_cd=50000">Ticket</a>
				</li>
				<li class="">
					<a href="/shop/product/product_lists?sh_category1_cd=40000">OTHER</a>
					<div class="pc_category_gnb">
						<div class="flex_box">
							<div class="box other">
								<ul>
									<li class="ico_acc"><a href="/shop/product/product_lists?sh_category1_cd=40000&amp;sh_category2_cd=40100&amp;sh_category3_cd=40101">액세서리</a></li>
									<li class="ico_ticket"><a href="/shop/product/product_lists?sh_category1_cd=50000">티켓</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class=" pc_hidden ">
					<a href="/shop/product/product_lists?sh_category1_cd=50000">티켓</a>
				</li>
				<li style="display:none !important" class="mb_hidden opacity">
					<a href="/shop/product/best_product_lists?group_cd=20240206">En Primeur</a>
				</li>
				<li class="mb_hidden opacity">
					<a href="/shop/event/event_lists">PROMOTION</a>
				</li>
				<li class="mb_hidden opacity">
					<a href="/shop/company/store">SHOP</a>
				</li>
				<li class=" opacity">
					<a href="/shop/company/mood" class="club-link">CLUB</a>
					<div class="pc_category_gnb">
						<div class="flex_box">
							<div class="box other" style="display:flex">
								<ul>
									<li><a href="/shop/company/mood" class="mood-live-link">MOOD LIVE</a></li>
									<li><a href="/shop/company/fnb_view?no=58">MOOD SEOUL</a></li>
									<li><a href="/shop/company/fnb_view?no=57">SAV SEOUL</a></li>
									<li><a href="/shop/company/fnb_view?no=102">TERRENO SEOUL</a></li>
									<li><a href="/shop/company/fnb_view?no=101">CLUB CORAVIN</a></li>
									<li><a href="/shop/company/fnb_view?no=97">MOWa</a></li>
									<li><a href="/shop/company/fnb_view?no=72">Le Monde Du Vin</a></li>
									<li><a href="/shop/company/fnb_view?no=63">E.O.D Pub&amp;Lounge</a></li>
									<li><a href="/shop/company/fnb_view?no=103">EDLS</a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="mb_hidden opacity">
					<a href="/shop/community/brandstory_lists">BLOG&amp;VIDEO</a>
				</li>
				<!-- <li class=" opacity">
					<a href="/shop/community/video_lists">VIDEO</a>
				</li> -->
				<li class="mb_hidden opacity">
					<a href="/shop/company/about_us">ABOUT US</a>
				</li>
			</ul>
			<button type="button" class="pc_category" onclick="$(this).toggleClass('on');$('.bottom .wrap>.pc_category_gnb').toggleClass('on');"><span></span></button>
		</div>
		<div class="pc_category_gnb">
			<div class="flex_box">
				<div class="box wine">
					<p class="tit"><strong>WINE</strong></p>
					<ul>
						<li class="ico_red"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10101">레드</a></li>
						<li class="ico_white"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10102">화이트</a></li>
						<li class="ico_rose"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10108">로제</a></li>
						<li class="ico_sparkling"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10103">스파클링</a></li>
						<li class="ico_spirits"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10100&amp;sh_category3_cd=10105">주정강화</a></li>
					</ul>
					<ul>
						<li class="ico_france"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10201">프랑스</a></li>
						<li class="ico_italia"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10202">이탈리아</a></li>
						<li class="ico_spain"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10203">스페인</a></li>
						<li class="ico_germ"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10204">독일</a></li>
						<li class="ico_usa"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10206">미국</a></li>
						<li class="ico_chile"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10205">칠레</a></li>
						<li class="ico_argentina"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10209">아르헨티나</a></li>
						<li class="ico_aus"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10207">호주</a></li>
						<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10210">기타 구대륙</a></li>
						<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&amp;sh_category2_cd=10200&amp;sh_category3_cd=10211">기타 신대륙</a></li>
					</ul>
				</div>
				<div class="box other">
					<p class="tit"><strong>BEER &amp; LIQUOR</strong></p>
					<ul>
						<li class="ico_whiskey"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20101">위스키</a></li>
						<li class="ico_cognac"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20102">꼬냑</a></li>
						<li class="ico_tequila"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20105">데킬라</a></li>
						<li class="ico_jin"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20103">진</a></li>
						<li class="ico_rum"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20100&amp;sh_category3_cd=20106">럼</a></li>
						<li class="ico_beer"><a href="/shop/product/product_lists?sh_category1_cd=20000&amp;sh_category2_cd=20200&amp;sh_category3_cd=20201">맥주</a></li>
					</ul>
					<p class="tit"><strong>TICKET</strong></p>
					<ul>
						<li class="ico_ticket"><a href="/shop/product/product_lists?sh_category1_cd=50000">티켓</a></li>
					</ul>
					<p class="tit"><strong>OTHER</strong></p>
					<ul>
						<li class="ico_acc"><a href="/shop/product/product_lists?sh_category1_cd=40000&amp;sh_category2_cd=40100&amp;sh_category3_cd=40101">액세서리</a></li>
					</ul>
				</div>
				<div class="box">
					<p class="tit">
						<a href="/shop/product/best_product_lists?group_cd=20240206"><strong>En Primeur</strong></a>
					</p>
					<p class="tit"><strong>PROMOTION</strong></p>
					<ul>
						<li><a href="/shop/event/event_lists">이달의 프로모션</a></li>
						<li><a href="/shop/event/event_end">완료된 프로모션</a></li>
						<li><a href="/shop/cs/special">특판문의</a></li>
					</ul>
					<p class="tit">
						<a href="/shop/company/store"><strong>SHOP</strong></a>
					</p>
					<p class="tit">
						<strong>BLOG</strong>
					</p>
					<ul>
						<li><a href="/shop/community/brandstory_lists">OUR BRANDS</a></li>
						<li><a href="/shop/community/magazine_con_lists">OUR STORIES</a></li>
					</ul>
				</div>
				<div class="box">
					<p class="tit"><strong>VIDEO</strong></p>
					<ul>
						<li><a href="/shop/community/video_lists">BRANDS FILM</a></li>
						<li><a href="/shop/community/film_lists">WINENARA FILM</a></li>
					</ul>
					<p class="tit"><strong>ABOUT US</strong></p>
					<ul>
						<li><a href="/shop/company/about_us">WINENARA</a></li>
						<li><a href="/shop/company/brand">BRANDS</a></li>
						<li><a href="/shop/company/store">SHOP</a></li>
						<li><a href="/shop/company/fnb">F&amp;B</a></li>
						<li><a href="/shop/community/press_lists">PRESS</a></li>
						<li><a href="/shop/company/member_benefit">MEMBERSHIP</a></li>
					</ul>
				</div>
				<div class="box">
					<p class="tit"><strong>고객센터</strong></p>
					<ul>
						<li><a href="/shop/cs/notice_lists">공지사항</a></li>
						<li><a href="/shop/cs/faq_lists">자주하는 질문</a></li>
						<li><a href="/shop/cs/qna_write">1:1문의</a></li>
						<li><a href="/shop/cs/nomem_cert">비회원 주문조회</a></li>
					</ul>
					<div class="info">
						<a href="tel:0807320101">080-732-0101</a>
						<p>
							<em>[운영시간]</em> 10:00~17:00<br>
							 (점심시간 12:00~13:00)<br>
							<em>[휴무]</em> 주말 및 공휴일
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<button type="button" onclick="commonUI.header.Search.clickFn()" class="fixed_search_btn">PC Search</button>
	<a href="/shop/mypage/shopping/mypage" class="fixed_mypage"><img src="<c:url value='/asset/images/shop/default/pc_icon_mypage.png' />" alt="My Page"></a>
	<a href="/shop/cart/cart_lists" class="fixed_cart"></a>
</div>
<!-- mb_lnb -->
<div class="mb_lnb pc_hidden">
	<ul>
		<!-- <li class="btn_back"><button type="button" onclick="location.href='javascript:history.go(-1)';">mobile back</button></li> -->
		<!-- <li class="btn_search"><button type="button" onclick="commonUI.header.Search.clickFn()">mobile Search</button></li> -->
		<li class="btn_order"><button type="button" onclick="location.href='/shop/mypage/shopping/order_lists'"><span>ORDER LIST</span></button></li>
		<li class="btn_search"><button type="button" onclick="commonUI.layer.open('category_layer')"><span>SEARCH</span></button></li>
		<li class="btn_home"><button type="button" onclick="location.href='/shop/main'"><span>mobile Home</span></button></li>
		<!-- <li class="btn_share share_area">
			<button type="button" class="open">공유</button>
			<div class="share_layer">
				<button type="button" class="facebook" onclick="share_sns('F');">페이스북으로 공유하기</button>
				<button type="button" class="kakao" onclick="share_sns('K');">카카오로 공유하기</button>
				<button type="button" class="url" onclick="share_sns('U');">URL로 공유하기</button>
				<button type="button" class="close">공유하기 레이어 닫기</button>
			</div>
			<script>
				$('.share_area .open').on('click', function(){
					$(this).addClass('on');
				})
				$('.share_area .close').on('click', function(){
					$('.share_area .open').removeClass('on');
				})
			</script>
		</li> -->
		<li class="btn_wish"><button type="button" onclick="location.href='/shop/mypage/note/wish_lists'"><span>WISH LIST</span></button></li>
		<li class="btn_mypage"><button type="button" onclick="location.href='/shop/mypage/shopping/mypage'"><span>MY PAGE</span></button></li>
	</ul>
</div>
<form action="https://www.winenara.com/shop/order/barcode_view" id="BarcodeForm" name="BarcodeForm" method="post" accept-charset="utf-8">
	<input type="hidden" name="witplus_csrf_token" value="826caf4a31037286f831f231532bd8ac">
	<input type="hidden" name="barcode" value="">
</form>
<!-- //mb_lnb -->
<!-- 뒤로가기 하단 팝업 -->
<!-- <div class="back_event">
	<div class="pop_text">
		<p>‘뒤로’버튼을 한번 더 누르시면 종료됩니다.</p>
	</div>
</div> -->
<!-- 뒤로가기 하단 팝업 -->
<form action="https://www.winenara.com/shop/product/search_product_lists" id="searchForm" name="searchForm" method="get" accept-charset="utf-8">
	<div class="search_layer">
		<div class="search_box">
			<button type="button" class="btn_close" onclick="commonUI.header.Search.clickFn()">Search</button>
			<input type="text" name="keyword" id="keyword" placeholder="오늘 마시고 싶은 와인을 검색해 보세요." autocomplete="off" class="srch_close_event" value="">
			<button type="submit" id="s_btn">검색</button>
		</div>
		<div class="search_result srch_close_event" id="search_block" style="display: none;">
			<div class="result_inner">
				<div class="allDelete off">
					<h2 class="tit">최근검색어</h2>
					<button type="button" class="btn del_btn" onclick="all_del_item();">전체삭제 </button>
				</div>
				<ul id="result_list" class="result_list">
					<li id="nodata">최근검색어 내역이 없습니다.</li>
				</ul>
			</div>
		</div>
	</div>
</form>
</header>
<%@ include file="login_post_frm.jsp" %>