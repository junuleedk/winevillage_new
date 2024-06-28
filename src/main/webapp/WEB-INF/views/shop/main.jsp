<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINENARA 1987 ㅣ 와인의 모든 것이 있는 곳 와인나라입니다! </title>
<%@ include file="common/common.jsp" %>
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
<header id="header" class="header">
<!-- 로딩바 -->
<div class="loading">
	<div class="loading_bar">
		<div class="loading_img">
			<img src="../asset/images/shop/default/ico_loading.svg" alt="">
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
<input type="hidden" id="session_id" value="">
<!-- 최상단 배너 -->
<!-- //최상단 배너 -->
<div class="top">
	<div class="wrap">
		<ul class="left_menu">
			<li class="language mb_hidden"><button type="button"><span><img class="langg" src="../asset/images/shop/default/pc_icon_flag_korea_sq.png" alt=""></span><span class="txt">KOR</span></button></li>
			<li class="language mb_hidden"><button type="button" onclick="location.href='/en/main'"><span class="langg"><img class="langg" src="../asset/images/shop/default/pc_icon_flag_usa_sq.png" alt=""></span><span class="txt">ENG</span></button></li>
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
		<a href="/shop/main">
		<picture>
		<!--[if IE 9]><video style="display: none;"><![endif]-->
		<source srcset="../asset/images/shop/default/pc_logo.png" media="(min-width:768px)">
		<!-- pc이미지 -->
		<source srcset="../asset/images/shop/default/mb_logo.png" media="(max-width:767px)">
		<!-- mb이미지 -->
		<!--[if IE 9]></video><![endif]-->
		<img src="../asset/images/shop/default/pc_logo.png" alt="WINENARA 1987" draggable="false">
		<!-- pc이미지 -->
		</picture>
		</a>
		</h1>
		<ul class="right_menu">
			<li class="cart"><a href="/shop/cart/cart_lists"><span>Cart List</span>
			</a></li>
			<!-- <li class="mobile_mypage pc_hidden">
                <a href="javascript:commonUI.layer.open('login_layer');"><img src="../asset/images/shop/default/pc_icon_mypage.png" alt="My Page"></a>
            </li> -->
			<li class="mb_hidden wish"><a href="/shop/mypage/note/wish_lists"><img src="../asset/images/shop/default/pc_icon_wish.png" alt="Wish List">
			</a></li>
			<!-- <li class="pc_search_btn mb_hidden"><button type="button" onclick="commonUI.header.Search.clickFn()">PC Search</button></li>-->
			<li class="mypage mb_hidden">
			<button type="button" onclick="commonUI.header.Mypage.clickFn()"><img src="../asset/images/shop/default/pc_icon_mypage.png" alt="My Page"></button>
			<div class="mypage_layer">
				<div class="no_login">
					<a href="javascript:commonUI.layer.open('login_layer')">로그인</a>
					<a href="/shop/member/join/law_agreement">회원가입</a>
					<!-- <a href="javascript:commonUI.layer.open('wine_profile_layer')">와인 프로파일(임시 테스트용)</a> -->
				</div>
			</div>
			</li>
			<li class="mb_hidden"><a href="/shop/cs/notice_lists"><img src="../asset/images/shop/default/pc_icon_center.png" alt="Info Center"></a></li>
		</ul>
	</div>
</div>
<div class="bottom">
	<h1 class="fixed_logo" style="display:none;">
	<a href="/shop/main">
	<img src="../asset/images/shop/default/pc_fixed_logo.png" alt="WINENARA 1987" draggable="false">
	</a>
	</h1>
	<div class="wrap">
		<!-- <button type="button" class="pc_category" onclick="$('.category_gnb').toggleClass('on');"><span>CATEGORY</span></button> -->
		<div class="gnb">
			<ul>
                <!-- <li>
                    <a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100">WINE</a>
                </li>
                <li>
                    <a href="/shop/product/product_lists?sh_category1_cd=20000">BEER&LIQUOR</a>
                </li>
                <li>
                    <a href="/shop/product/product_lists?sh_category1_cd=50000">TICKET</a>
                </li>
                <li>
                    <a href="/shop/product/product_lists?sh_category1_cd=40000">OTHER</a>
                </li> -->
				<li class="">
				<a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100">WINE</a>
				<div class="pc_category_gnb">
					<div class="flex_box">
						<div class="box wine">
							<ul>
								<li class="ico_red"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10101">레드</a>
								</li>
								<li class="ico_white"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10102">화이트</a>
								</li>
								<li class="ico_rose"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10108">로제</a>
								</li>
								<li class="ico_sparkling"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10103">스파클링</a>
								</li>
								<li class="ico_spirits"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10105">주정강화</a>
								</li>
							</ul>
							<ul>
								<li class="ico_france"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10201">프랑스</a>
								</li>
								<li class="ico_italia"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10202">이탈리아</a>
								</li>
								<li class="ico_spain"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10203">스페인</a>
								</li>
								<li class="ico_germ"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10204">독일</a>
								</li>
								<li class="ico_usa"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10206">미국</a>
								</li>
								<li class="ico_chile"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10205">칠레</a>
								</li>
								<li class="ico_argentina"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10209">아르헨티나</a>
								</li>
								<li class="ico_aus"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10207">호주</a>
								</li>
								<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10210">기타 구대륙</a></li>
								<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10211">기타 신대륙</a></li>
							</ul>
						</div>
					</div>
				</div>
				</li>
				<li class="">
				<a href="/shop/product/product_lists?sh_category1_cd=20000">BEER&LIQUOR</a>
				<div class="pc_category_gnb">
					<div class="flex_box">
						<div class="box other">
							<ul>
								<li class="ico_whiskey"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20101">위스키</a>
								</li>
								<li class="ico_cognac"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20102">꼬냑</a>
								</li>
								<li class="ico_tequila"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20105">데킬라</a>
								</li>
								<li class="ico_jin"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20103">진</a>
								</li>
								<li class="ico_rum"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20106">럼</a>
								</li>
								<li class="ico_beer"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20200&sh_category3_cd=20201">맥주</a>
								</li>
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
								<li class="ico_acc"><a href="/shop/product/product_lists?sh_category1_cd=40000&sh_category2_cd=40100&sh_category3_cd=40101">액세서리</a>
								</li>
								<li class="ico_ticket"><a href="/shop/product/product_lists?sh_category1_cd=50000">티켓</a>
								</li>
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
								<li><a href="/shop/company/fnb_view?no=63">E.O.D Pub&Lounge</a></li>
								<li><a href="/shop/company/fnb_view?no=103">EDLS</a></li>
							</ul>
						</div>
					</div>
				</div>
				</li>
				<li class="mb_hidden opacity">
				<a href="/shop/community/brandstory_lists">BLOG&VIDEO</a>
				</li>
				<!-- <li class="opacity">
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
					<p class="tit">
						<strong>WINE</strong>
					</p>
					<ul>
						<li class="ico_red"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10101">레드</a>
						</li>
						<li class="ico_white"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10102">화이트</a>
						</li>
						<li class="ico_rose"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10108">로제</a>
						</li>
						<li class="ico_sparkling"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10103">스파클링</a>
						</li>
						<li class="ico_spirits"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10105">주정강화</a>
						</li>
					</ul>
					<ul>
						<li class="ico_france"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10201">프랑스</a>
						</li>
						<li class="ico_italia"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10202">이탈리아</a>
						</li>
						<li class="ico_spain"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10203">스페인</a>
						</li>
						<li class="ico_germ"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10204">독일</a>
						</li>
						<li class="ico_usa"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10206">미국</a>
						</li>
						<li class="ico_chile"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10205">칠레</a>
						</li>
						<li class="ico_argentina"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10209">아르헨티나</a>
						</li>
						<li class="ico_aus"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10207">호주</a>
						</li>
						<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10210">기타 구대륙</a></li>
						<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10211">기타 신대륙</a></li>
					</ul>
				</div>
				<div class="box other">
					<p class="tit">
						<strong>BEER & LIQUOR</strong>
					</p>
					<ul>
						<li class="ico_whiskey"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20101">위스키</a>
						</li>
						<li class="ico_cognac"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20102">꼬냑</a>
						</li>
						<li class="ico_tequila"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20105">데킬라</a>
						</li>
						<li class="ico_jin"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20103">진</a>
						</li>
						<li class="ico_rum"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20106">럼</a>
						</li>
						<li class="ico_beer"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20200&sh_category3_cd=20201">맥주</a>
						</li>
					</ul>
					<p class="tit">
						<strong>TICKET</strong>
					</p>
					<ul>
						<li class="ico_ticket"><a href="/shop/product/product_lists?sh_category1_cd=50000">티켓</a></li>
					</ul>
					<p class="tit">
						<strong>OTHER</strong>
					</p>
					<ul>
						<li class="ico_acc"><a href="/shop/product/product_lists?sh_category1_cd=40000&sh_category2_cd=40100&sh_category3_cd=40101">액세서리</a>
						</li>
					</ul>
				</div>
				<div class="box">
					<!-- <p class="tit"><a href="/shop/product/best_product_lists?group_cd=20240206"><strong>En Primeur</strong></a></p> -->
					<p class="tit">
						<strong>PROMOTION</strong>
					</p>
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
					<p class="tit">
						<strong>VIDEO</strong>
					</p>
					<ul>
						<li><a href="/shop/community/video_lists">BRANDS FILM</a></li>
						<li><a href="/shop/community/film_lists">WINENARA FILM</a></li>
					</ul>
					<p class="tit">
						<strong>ABOUT US</strong>
					</p>
					<ul>
						<li><a href="/shop/company/about_us">WINENARA</a></li>
						<li><a href="/shop/company/brand">BRANDS</a></li>
						<li><a href="/shop/company/store">SHOP</a></li>
						<li><a href="/shop/company/fnb">F&B</a></li>
						<li><a href="/shop/community/press_lists">PRESS</a></li>
						<li><a href="/shop/company/member_benefit">MEMBERSHIP</a></li>
					</ul>
				</div>
				<div class="box">
					<p class="tit">
						<strong>고객센터</strong>
					</p>
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
	<a href="/shop/mypage/shopping/mypage" class="fixed_mypage"><img src="../asset/images/shop/default/pc_icon_mypage.png" alt="My Page"></a>
	<a href="/shop/cart/cart_lists" class="fixed_cart">
	</a>
</div>
<!-- mb_lnb -->
<div class="mb_lnb pc_hidden">
	<ul>
		<!-- <li class="btn_back"><button type="button" onclick="location.href='javascript:history.go(-1)';">mobile back</button></li> -->
		<!-- <li class="btn_search"><button type="button" onclick="commonUI.header.Search.clickFn()">mobile Search</button></li> -->
		<li class="btn_order"><button type="button" onclick="commonUI.layer.open('login_layer')"><span>ORDER LIST</span></button></li>
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
		<li class="btn_wish"><button type="button" onclick="commonUI.layer.open('login_layer');"><span>WISH LIST</span></button></li>
		<li class="btn_mypage"><button type="button" onclick="commonUI.layer.open('login_layer');"><span>MY PAGE</span></button></li>
	</ul>
</div>
<form action="https://www.winenara.com/shop/order/barcode_view" id="BarcodeForm" name="BarcodeForm" method="post" accept-charset="utf-8">
	<input type="hidden" name="witplus_csrf_token" value="be7b38b9302ff3c05cc7f68a617d7dd7"/>
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
			<input type="text" name="keyword" id="keyword" placeholder='오늘 마시고 싶은 와인을 검색해 보세요.' autocomplete="off" class="srch_close_event" value="">
			<button type="submit" id="s_btn">검색</button>
		</div>
		<div class="search_result srch_close_event" id="search_block">
			<div class="result_inner">
				<div class="allDelete off">
					<h2 class="tit">최근검색어</h2>
					<button type="button" class="btn del_btn" onclick="all_del_item();">전체삭제</span>
				</div>
				<ul id="result_list" class="result_list">
					<li id="nodata">최근검색어 내역이 없습니다.</li>
				</ul>
			</div>
		</div>
	</div>
</form>
</header>
<form action="https://www.winenara.com/shop/login" id="LoginPostFrm" onkeydown="javascript:onEnterLogin();" method="post" accept-charset="utf-8">
	<input type="hidden" name="witplus_csrf_token" value="be7b38b9302ff3c05cc7f68a617d7dd7"/>
	<div class="layer login_layer" id="login_layer">
		<div class="display_table">
			<div class="table_cell">
				<div class="layer_area">
					<h2 class="layer_tit">
					회원서비스 
					<!-- <p class="check"><span>로그인</span></p>
                    <p><span><a href="/shop/member/join/law_agreement">회원가입</a></span></p> -->
					</h2>
					<button type="button" class="layer_close" onclick="commonUI.layer.close()">닫기</button>
					<div class="layer_con">
						<div class="login_tab">
							<p class="check">
								<span>기존회원</span>
							</p>
							<p>
								<span><a href="/shop/member/join/law_agreement">신규회원가입</a></span>
							</p>
						</div>
						<div class="social_login">
							<h2 class="social_tit">소셜아이디로 로그인</h2>
							<ul>
								<li><a href="#none" class="social_btn naver">네이버</a></li>
								<li><a href="#none" class="social_btn kakao">카카오</a></li>
								<li><a href="#none" class="social_btn google">구글</a></li>
								<!-- <li><a href="#none" class="social_btn apple">애플</a></li> -->
							</ul>
						</div>
						<div class="form_area">
							<ul>
								<li>
								<div class="form_box">
									<input type="text" id="login_user_id" name="login_user_id" value="" placeholder="아이디를 입력하세요">
								</div>
								</li>
								<li>
								<div class="form_box">
									<input type="password" id="login_passwd" name="login_passwd" placeholder="비밀번호를 입력하세요">
								</div>
								</li>
							</ul>
						</div>
						<input type="hidden" id="login_return_url_param" name="login_return_url_param">
						<div class="save_box">
							<div class="checkbox">
								<input type="checkbox" name="login_auto" id="login_auto" value="Y" checked>
								<label for="login_auto">로그인유지</label>
							</div>
							<div class="checkbox">
								<input type="checkbox" name="id_save" id="id_save" value="Y">
								<label for="id_save">아이디저장</label>
							</div>
							<p class="input_info_txt">
								※ 공공장소에서는 꺼주세요.
							</p>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black" id="loginBtn"><span>로그인</span></button>
						</div>
						<div class="login_sub_btn">
							<a href="/shop/member/forgoten/forgoten_id" class="btn">아이디 찾기</a>
							<a href="/shop/member/forgoten/forgoten_pw" class="btn">비밀번호 재발급</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- 와인 프로파일 레이어 -->
<!-- /shop/mypage/shopping/wine_profile_ajax.php LOAD -->
<div class="layer wine_profile_layer">
</div>
<!-- //와인 프로파일 레이어 -->
<!-- 회원 등급현황 레이어 - 로그인 했을 때만 노출 -->
<div class="layer grade_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">
					등급현황
				</div>
				<div class="layer_con">
					<ul class="grade_status">
						<li>
						<p class="ico_silver">
							<span><i>Silver</i></span>
						</p>
						<em>실버</em>
						</li>
						<li>
						<p class="ico_gold">
							<span><i>Gold</i></span>
						</p>
						<em>골드</em>
						</li>
						<li>
						<p class="ico_diamond">
							<span><i>Diamond</i></span>
						</p>
						<em>다이아몬드</em>
						</li>
						<li>
						<p class="ico_trinity">
							<span><i>Trinity</i></span>
						</p>
						<em>트리니티</em>
						</li>
					</ul>
					<div class="grade_ex">
						<dl>
							<dt>내 구입금액</dt>
							<dd>
							0 원 (주문 0 건) </dd>
						</dl>
						<div class="g_list_box">
							<ul>
								<li class="tit">회원<br class="mb_hidden">
								등급</li>
								<li class="tit">실버</li>
								<li class="tit">골드</li>
								<li class="tit">다이아몬드</li>
								<li class="tit">트리니티</li>
							</ul>
							<ul>
								<li class="tit">등급<br class="mb_hidden">
								조건</li>
								<li>일반회원</li>
								<li>200만원 <br class="mb_hidden">
								이상구매</li>
								<li>500만원 <br class="mb_hidden">
								이상구매</li>
								<li>1000만원 <br class="mb_hidden">
								이상구매</li>
							</ul>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/company/member_benefit'"><span>혜택 자세히보기</span></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //회원 등급현황 레이어 -->
<!-- 알림설정 레이어 -->
<div class="layer push_layer" id="push_layer" style="display:none;">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">
					알림설정
				</div>
				<div class="layer_con">
					<ul>
						<li>
						<div class="btn switch">
							<strong class="tit">푸시알림</strong>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="btn_switch01" class="btn_switch_check" onchange="">
								<div class="btn_switch_area">
									<div class="btn_switch">
										<label class="bar" for="btn_switch01">&nbsp;</label>
									</div>
								</div>
							</div>
						</div>
						<p class="info">와인나라 앱에서 보내는 알림을 받을 수 있습니다.</p>
						</li>
						<li>
						<div class="btn switch">
							<strong class="tit">광고성 정보 수신 동의</strong>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="btn_switch02" class="btn_switch_check" onchange="">
								<div class="btn_switch_area">
									<div class="btn_switch">
										<label class="bar" for="btn_switch02">&nbsp;</label>
									</div>
								</div>
							</div>
						</div>
						<p class="info">신규서비스 및 고객 맞춤 혜택 정보를 받을 수 있습니다.</p>
						</li>
						<li>
						<div class="btn switch">
							<strong class="tit">야간 수신 동의</strong>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="btn_switch03" class="btn_switch_check" onchange="">
								<div class="btn_switch_area">
									<div class="btn_switch">
										<label class="bar" for="btn_switch03">&nbsp;</label>
									</div>
								</div>
							</div>
						</div>
						<p class="info">야간(오후 9시 ~ 오전8시)에 알림을 받을 수 있습니다.</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림설정 레이어 -->
<!-- 알림내역 레이어 -->
<div class="layer push_lists_layer" id="push_lists_layer" style="display:none;">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">
					알림내역
				</div>
				<div class="layer_con">
					<ul>
						<li>
						<strong class="tit">4월 이달의 와인</strong>
						<p class="info">
							봄에 어울리는 색, 그리고 향을 테마로 준비한 이달의 와인 5종을 소개합니다.
						</p>
						<div class="img">
							<img src="../asset/images/shop/product/mb_recom_lnb.jpg" alt="">
						</div>
						<div class="btn_box">
							<span class="date">2022.04.01</span>
							<button type="button" class="btn_more">자세히보기</button>
						</div>
						</li>
						<li>
						<strong class="tit">아발론 브랜드 기획전</strong>
						<p class="info">
							최고 가성비 와인, 아바론 브랜드 기획전
						</p>
						<div class="btn_box">
							<span class="date">2022.04.01</span>
							<button type="button" class="btn_more">자세히보기</button>
						</div>
						</li>
						<li>
						<strong class="tit">아발론 브랜드 기획전</strong>
						<p class="info">
							최고 가성비 와인, 아바론 브랜드 기획전
						</p>
						<div class="btn_box">
							<span class="date">2022.04.01</span>
							<button type="button" class="btn_more">자세히보기</button>
						</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림내역 레이어 -->
<!-- 설정 레이어 -->
<div class="layer set_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close btn_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">
					설정
				</div>
				<div class="layer_con">
					<strong class="tit">푸시설정</strong>
					<div class="set_con">
						<span>알림설정</span>
						<div class="btn_switch_module js_switch css_switch">
							<input type="checkbox" id="btn_alarm" class="btn_switch_check" onchange="push_ajax('push',this);">
							<div class="btn_switch_area">
								<div class="btn_switch">
									<!-- <span class="txt left">ON</span> -->
									<label class="bar" for="btn_alarm">&nbsp;</label>
									<!-- <span class="txt right">OFF</span> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //설정 레이어 -->
<!-- 모바일 카테고리 레이어 -->
<div class="layer category_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_con">
					<div class="open_search_area">
						<button type="button" id="mb_search_btn" onclick="$('.mb_search_layer').show();$('.mb_search_layer #search_box').focus();">오늘 마시고 싶은 와인을 검색해 보세요.</button>
					</div>
					<div class="category_area">
						<div class="box cate">
							<p class="tit">
								카테고리
							</p>
							<ul>
								<li><a href="/shop/product/group_product_lists?group_cd=1901">신상품</a></li>
								<li><a href="/shop/product/group_product_lists?group_cd=1902">베스트</a></li>
								<li><a href="/shop/event/event_lists">프로모션</a></li>
								<!-- <li><a href="#">시그니쳐</a></li> -->
								<li><a href="/shop/cs/special">대량구매 할인</a></li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								와인
							</p>
							<ul>
								<li class="ico_red"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10101">레드</a>
								</li>
								<li class="ico_white"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10102">화이트</a>
								</li>
								<li class="ico_rose"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10108">로제</a>
								</li>
								<li class="ico_sparkling"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10103">스파클링</a>
								</li>
								<li class="ico_dessert"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10104">디저트</a>
								</li>
								<li class="ico_spirits"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10105">주정강화</a>
								</li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								기타 주류
							</p>
							<ul>
								<li class="ico_whiskey"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20101">위스키</a>
								</li>
								<li class="ico_cognac"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20102">꼬냑</a>
								</li>
								<li class="ico_tequila"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20105">데킬라</a>
								</li>
								<li class="ico_jin"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20103">진</a>
								</li>
								<li class="ico_rum"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20106">럼</a>
								</li>
								<li class="ico_beer"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20200&sh_category3_cd=20201">맥주</a>
								</li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								OTHER
							</p>
							<ul>
								<li class="ico_acc"><a href="/shop/product/product_lists?sh_category1_cd=40000&sh_category2_cd=40100&sh_category3_cd=40101">악세서리</a>
								</li>
								<li class="ico_ticket"><a href="/shop/product/product_lists?sh_category1_cd=40000&sh_category2_cd=40100&sh_category3_cd=40102">티켓</a>
								</li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">
								국가별 와인
							</p>
							<ul>
								<li class="ico_france"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10201">프랑스</a>
								</li>
								<li class="ico_italia"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10202">이탈리아</a>
								</li>
								<li class="ico_spain"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10203">스페인</a>
								</li>
								<li class="ico_germ"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10204">독일</a>
								</li>
								<li class="ico_usa"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10206">미국</a>
								</li>
								<li class="ico_chile"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10205">칠레</a>
								</li>
								<li class="ico_argentina"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10209">아르헨티나</a>
								</li>
								<li class="ico_aus"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10207">호주</a>
								</li>
								<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10210">기타 구대륙</a></li>
								<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10211">기타 신대륙</a></li>
							</ul>
						</div>
					</div>
					<!-- 모바일 검색 레이어 -->
					<div class="mb_search_layer">
						<div class="display_table">
							<div class="table_cell">
								<div class="layer_area">
									<div class="layer_con">
										<form action="https://www.winenara.com/shop/product/search_product_lists" id="searchForm" name="searchForm" method="get" accept-charset="utf-8">
											<div class="search_box">
												<button type="button" class="btn_close" onclick="$('.mb_search_layer').hide();">모바일 검색창 닫기</button>
												<input type="text" id="search_box" name="keyword" placeholder='오늘 마시고 싶은 와인을 검색해 보세요.' autocomplete="off" value="">
												<button type="submit" id="s_btn">검색</button>
											</div>
										</form>
										<!-- 최근검색어 -->
										<div class="search_result" id="search_block">
											<div class="result_inner">
												<div class="allDelete off">
													<h2 class="tit">최근검색어</h2>
													<button type="button" class="btn del_btn" onclick="all_del_item();">전체삭제</span>
												</div>
												<ul id="result_list" class="result_list">
													<li id="nodata">최근검색어 내역이 없습니다.</li>
												</ul>
											</div>
										</div>
										<!-- 지금 인기 있는 검색어 -->
										<!-- <div class="search_popular">
                                                <h2 class="tit">지금 인기 있는 검색어</h2>
                                                <ul>
                                                    <li><a href="/shop/product/search_product_lists?keyword=프랑스">추석</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=레드">레드</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=제로">제로</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=스파클링">스파클링</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=로제">로제</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=레드와인">레드와인</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=이벤트 와인">이벤트 와인</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=논알콜">논알콜</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=디저트 와인">디저트 와인</a></li>
                                                    <li><a href="/shop/product/search_product_lists?keyword=화이트">화이트</a></li>
                                                </ul>
                                            </div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //모바일 카테고리 레이어 -->
<input type="hidden" id="path_gb" value="">
<link rel="stylesheet" type="text/css" href="../asset/css/shop/slick.css">
<script type="text/javascript" src="../asset/js/slick.min.js"></script>
<script type="text/javascript">
    //배너 슬라이드
    $('.top_banner .top_banner_slide').slick({
        dots: false,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 8000,
        slidesToShow: 1,
    });
    $(window).scroll(function () {
        if (!$("#header").hasClass("fixed")) {
            $('.top_banner .top_banner_slide').slick('refresh');
        }
    });
    $(".top_banner.time_out").hide();
    $(".top_banner.time_out").slideDown('300');
    setTimeout(function () {
        $(".top_banner.time_out").slideUp('300');
    }, 3000);
    function onEnterLogin() {
        if (window.event.keyCode === 13) {
            $("#loginBtn").trigger("click");
        }
    }
    //모바일 gnb toggle menu
    $(".mb_gnb_area .menu_list li button").on("click", function () {
        $(this).next("ul").slideToggle();
        $(this).parent("li").siblings().find("ul").slideUp();
    });
    //테이스트 프로파일 타이틀 주석
    $(".ico_note").on("click", function () {
        $(this).toggleClass("on");
    });
    //선택한 sns 노출
    $(".sns_area li").on("click", function () {
        var selSns = $(this).find("span").attr("class");
        $(".sns_area .btn_sel span").attr("class", selSns);
        $(".sns_area").removeClass("on");
    });
    //선택한 store 노출
    $(".store_area li").on("click", function () {
        var selStore = $(this).find("span").text();
        $(".store_area .btn_sel span").text(selStore);
        $(".store_area").removeClass("on");
    });
    /*공유 및 URL 복사*/
    var img_url = "";
    if (img_url !== '') {
        img_url = 'https://am.witplus.com/uploads/product/';
    }
    function share_sns(e) {
        RC_Method({ page_type: 'product_page', behavior: 'user_action', action: 'sharing' });
        var url = window.document.location.href;
        if (e == 'U') {
            var textarea = document.createElement("textarea");
            document.body.appendChild(textarea);
            textarea.value = url;
            textarea.select();
            document.execCommand("copy");
            document.body.removeChild(textarea);
            alert("URL이 복사되었습니다.");
        } else if (e == 'F') {
            window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url));
        } else if (e == 'K') {
            Kakao.init('b129fd9215e06b4366c1a76b2c37d98b');
            Kakao.Link.sendDefault({
                objectType: 'feed',
                content: {
                    title: '와인나라',
                    description: "",
                    imageUrl: 'https://www.winenara.com/asset/images/shop/default/pc_logo.png',
                    link: {
                        mobileWebUrl: location.href,
                        webUrl: location.href,
                    },
                },
                buttons: [
                    {
                        title: '와인나라',
                        link: {
                            mobileWebUrl: location.href,
                        },
                    },
                ]
            });
        }
    };
    $(document).ready(function () {
        $("#loginBtn").on("click", function () {
            if (!$("#login_user_id").val()) {
                alert("아이디를 입력하여 주세요.");
                $("#login_user_id").focus();
                return false;
            }
            if (!$("#login_passwd").val()) {
                alert("비밀번호를 입력하여 주세요.");
                $("#login_passwd").focus();
                return false;
            }
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: 'POST',
                url: "/shop/auth/login_check",
                dataType: 'json',
                data: $("#LoginPostFrm").serialize(),
                success: function (res) {
                    console.log(res);
                    if (res.status == 'Y') {
                        console.log(JSON.stringify(res.data));
                        // alert(res.msg);
                        location.href = res.url;
                    } else if (res.status == "N") {
                        alert(res.msg);
                        if (res.pass_err_cnt >= 5) {
                            recaptcha_load();
                        }
                    } else if (res.status === 'AUTH_DENIED') {
                        alert(res.msg);
                        location.href = res.url;
                    } else if (res.status === 'OUT_YN') {
                        alert(res.msg);
                        return false;
                    } else if (res.status === 'TOKEN_ERROR') {
                        alert(res.msg);
                        return false;
                    } else if (res.status == 'D') {
                        if (confirm(res.msg)) {
                            // location.href = res.url;
                            $('#dormant_layer').show();
                        }
                    } else {
                        alert(res.msg);
                    }
                }
            });
        });
    });
    $(document).ready(function () {
        get_keyword_list_ajax();
    });
    function html_escape(str) {
        /**
         * 엔티티 코드 매핑을 위한 변수
         * @type {{"`": string, "\"": string, "&": string, "'": string, "<": string, "=": string, ">": string, "/": string}}
         */
        let entityMap = {
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#39;',
            '/': '&#x2F;',
            '`': '&#x60;',
            '=': '&#x3D;'
        };
        for (const [specialCharacter, entityCode] of Object.entries(entityMap)) {
            str = str.split(specialCharacter).join(entityCode);
        }
        return str;
    }
    function get_keyword_list_ajax() {
        var html = "";
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url: "/shop/product/get_keyword_list_ajax",
            data: { mode: 'list' },
            success: function (res) {
                if (typeof (res) == 'string') { res = JSON.parse(res); }
                if (res.status == 'ok') {
                    var keyword_list = res.data.keyword_list;
                    if (keyword_list.length > 0) {
                        for (var i = 0; i < keyword_list.length; i++) {
                            console.log(keyword_list[i]['keyword']);
                            html += '<li><span onclick="sch_item(';
                            html += "'" + html_escape(keyword_list[i]['keyword']) + "'";
                            html += ')" style="cursor:pointer;">' + html_escape(keyword_list[i]['keyword']) + '</span>';
                            html += '<button type="button" class="del_btn" onclick="del_item(';
                            html += "'" + keyword_list[i]['keyword'] + "'";
                            html += ')"></button></li>';
                        }
                        $(".result_list").empty();
                        $(".result_list").html(html);
                    } else {
                        $(".result_list").empty();
                        $(".result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                    }
                } else {
                    //alert(res.msg);
                    return;
                }
            },
            error: function (res) {
                console.log("최근 검색어 리스트에 오류가 발생했습니다.");
                // alert(res.responseText);
            }
        });
    }
    // 키워드 개별 삭제
    function del_item(keyword) {
        var html = "";
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: 'POST',
            url: "/shop/product/update_keyword_ajax",
            dataType: 'json',
            data: { keyword: keyword, mode: 'single' },
            success: function (res) {
                if (typeof (res) == 'string') { res = JSON.parse(res); }
                if (res.status == 'ok') {
                    var keyword_list = res.data.keyword_list;
                    if (keyword_list.length > 0) {
                        for (var i = 0; i < keyword_list.length; i++) {
                            html += '<li><span onclick="sch_item(';
                            html += "'" + keyword_list[i]['keyword'] + "'";
                            html += ')" style="cursor:pointer;">' + keyword_list[i]['keyword'] + '</span>';
                            html += '<button type="button"  class="del_btn" onclick="del_item(';
                            html += "'" + keyword_list[i]['keyword'] + "'";
                            html += ')"></button></li>';
                        }
                        $("#result_list").empty();
                        $("#result_list").html(html);
                    } else {
                        $("#result_list").empty();
                        $("#result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                    }
                }
            },
            error: function (res) {
                alert("검색 키워드 삭제시 에러가 발생했습니다.");
                alert(res.responseText);
            }
        });
    }
    // 키워드 전체 삭제
    function all_del_item() {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: 'POST',
            url: "/shop/product/update_keyword_ajax",
            dataType: 'json',
            data: { mode: 'all' },
            success: function (res) {
                if (res.status == 'ok') {
                    $("#result_list").empty();
                    $("#result_list").html('<li id="nodata">최근검색어 내역이 없습니다.</li>');
                }
            },
            error: function (res) {
                alert("검색 키워드 삭제시 에러가 발생했습니다.");
                alert(res.responseText);
            }
        });
    }
    // 선택 키워드 검색
    function sch_item(keyword) {
        location.href = '/shop/product/search_product_lists?keyword=' + keyword;
    }
    $('.social_login .social_btn.naver').click(function () {
        Cookie.Set('join_gb', 'N', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
        Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
        Cookie.Set('error_url', location.href, 1, true);
        if ($('#login_return_url_param').val()) {
            Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
        }
        location.href = '/shop/auth/oauth';
    });
    $('.social_login .social_btn.kakao').click(function () {
        Cookie.Set('join_gb', 'K', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
        Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
        Cookie.Set('error_url', location.href, 1, true);
        if ($('#login_return_url_param').val()) {
            Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
        }
        location.href = '/shop/auth/oauth';
    });
    $('.social_login .social_btn.google').click(function () {
        Cookie.Set('join_gb', 'G', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
        Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
        Cookie.Set('error_url', location.href, 1, true);
        if ($('#login_return_url_param').val()) {
            Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
        }
        location.href = '/shop/auth/oauth';
    });
    $('.social_login .social_btn.face').click(function () {
        Cookie.Set('join_gb', 'F', 1, true);
        Cookie.Set('sns_btn_type', 'L', 1, true);
        Cookie.Set('success_url', '/shop/login/sns_login', 1, true);
        Cookie.Set('error_url', location.href, 1, true);
        if ($('#login_return_url_param').val()) {
            Cookie.Set('login_return_url_param', $('#login_return_url_param').val(), 1, true);
        }
        location.href = '/shop/auth/oauth';
    });
    //PC 모바일 구분
    if (chkDevice.isPC()) {
        $("#path_gb").val('WEB');
    } else {
        $("#path_gb").val('MOBILE');
    }
    /**
     * 매장 선택
     * @param {[type]} store_code [description]
     */
    function setHeaderStore(store_code) {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url: "/shop/auth/store_setting_ajax",
            data: { "store_code": store_code },
            success: function (res) {
                console.log(res);
                location.reload();
            },
            error: function (res) {
                console.log(res.responseText);
            }
        });
    }
    /*
    * 바코드 스크립트
        */
    window.addEventListener("flutterInAppWebViewPlatformReady", function (event) {
        //호출코드 (호출가능시기확인 후 호출가능)
    });
    function jsOpenBarcode() {
        window.flutter_inappwebview.callHandler('scanBarcode');
    }
    //응답코드
    function resultBarcode(barcode) {
        // console.log("barcode: ",barcode);
        var form = document.BarcodeForm;
        form.barcode.value = barcode;
        // form.submit();
        location.href = '/shop/order/barcode_view?barcode=' + barcode;
    }
    function openProfile() {
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url: "/shop/mypage/shopping/wine_profile_ajax",
            data: {},
            success: function (res) {
                $(".wine_profile_layer").html(res);
                commonUI.layer.open('wine_profile_layer');
            },
            error: function (res) {
                console.log(res.responseText);
            }
        });
    }
    function checkUserAndRedirect(event) {
        event.preventDefault(); // Prevent default link behavior
        var sesId = "";
        // Check if user data contains user_id
        if (sesId) {
            // If user_id exists, redirect to the link's href
            window.location.href = event.target.href;
        } else {
            // If user_id doesn't exist, open the login layer
            commonUI.layer.open('login_layer');
        }
    }
    // Find the anchor element and attach the event listener
    const clubLink = document.querySelector('a.club-link');
    if (clubLink) {
        clubLink.addEventListener('click', checkUserAndRedirect);
    }
    // Find the anchor element for MOOD LIVE and attach the event listener
    const moodLiveLink = document.querySelector('a.mood-live-link');
    if (moodLiveLink) {
        moodLiveLink.addEventListener('click', checkUserAndRedirect);
    }
</script>
<!-- contents -->
<section id="contents">
<script type='text/javascript' src="../asset/js/instafeed.js"></script>
<link rel="stylesheet" type="text/css" href="../asset/css/shop/main.css?v=240409200935"/>
<link rel="stylesheet" type="text/css" href="../asset/css/shop/main_pc.css?v=240409200935" media="screen and (min-width:1024px)">
<div class="content main_page">
	<div class="main_visual">
		<div class="m_slide">
			<a href="https://www.winenara.com/shop/event/event_view?no=358">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/32da729cf63572f899d8a3c9dde84620.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/419a53a424e899fe842dec1aac367077.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/32da729cf63572f899d8a3c9dde84620.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=366">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/0717b6fb749a4a811134c9d5a39db515.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/b8649da303716cb8838b0e757e01b3bc.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/0717b6fb749a4a811134c9d5a39db515.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=361">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/298c0e2e0fbf4b677604142b661e63cf.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/9691b9b6c577e987819ade9dcc0cb329.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/298c0e2e0fbf4b677604142b661e63cf.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=364">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/f470d619d44ec424f9e1939994a1f27e.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/39085b15d5c6342bfcb85f196814f0da.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/f470d619d44ec424f9e1939994a1f27e.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=360">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/07d1a152ce4e9c2ad5702b7eaa774939.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/8f6812328c102477d139a0c1c96e9eea.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/07d1a152ce4e9c2ad5702b7eaa774939.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=362">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/a6abc637620e1565ea36e6d6782ec92e.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/e0b0855c2291eef7bba2bbe1a4ca5c59.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/a6abc637620e1565ea36e6d6782ec92e.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=359">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/288ea716d489b85606ddbb9e1b21f869.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/263675998facc3622f0d0d55cf89ffb9.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/288ea716d489b85606ddbb9e1b21f869.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=357">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/12f2f41eceb0bf95b580e6e462514749.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/1282750184ae76609929a4fed7da8efc.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/12f2f41eceb0bf95b580e6e462514749.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=356">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/23b88dabbb21357519359a0540cfa854.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/c959e769e6b1f13cbee29829ab0903cb.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/23b88dabbb21357519359a0540cfa854.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
			<a href="https://www.winenara.com/shop/event/event_view?no=354">
			<div class="slide">
				<picture>
				<source srcset="../uploads/banner/590/32f3c2887c43c2a85be59c77d265a7cc.jpg" media="(min-width:1024px)">
				<!-- pc이미지 -->
				<source srcset="../uploads/banner/670/6274164e9bd7edddfc3ed8d7cfde2c7b.jpg" media="(max-width:1023px)">
				<!-- mb이미지 -->
				<img data-lazy="uploads/banner/590/32f3c2887c43c2a85be59c77d265a7cc.jpg" alt="">
				<!-- pc이미지 -->
				</picture>
				<p class="visual_category">
				</p>
				<div class="visual_txt">
					<p class="tit"></p>
					<p class="sub_txt"></p>
				</div>
			</div>
			</a>
		</div>
		<div class="control_box">
			<button type="button" class="prev">이전</button>
			<p class="page_count">
				<span class="current">01</span> / <span class="total"></span>
			</p>
			<button type="button" class="next">다음</button>
		</div>
	</div>
	<div class="main_category pc_hidden">
		<ul>
			<li class="ico_wine"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100">WINE</a></li>
			<li class="ico_beerLiquor"><a href="/shop/product/product_lists?sh_category1_cd=20000">BEER&LIQUOR</a></li>
			<li class="ico_shop"><a href="/shop/company/store">SHOP</a></li>
			<li class="ico_event"><a href="/shop/event/event_lists">PROMOTION</a></li>
			<!-- <li class="ico_promotion"><a href="/shop/event/event_lists">PROMOTION</a></li>    
            <li class="ico_blogVideo"><a href="/shop/community/brandstory_lists">BLOG&VIDEO</a></li>
            <li class="ico_aboutUs"><a href="/shop/company/about_us">ABOUT US</a></li> -->
		</ul>
	</div>
	<!-- <div class="section slide_prd product_lists_page sub_tit_wrap theme_con">
        <h2>
            <span>OUR PICK</span>
            <!-- <div class="btn_switch_module js_switch css_switch">
                <input type="checkbox" id="btn_switch01" class="btn_switch_check">
            </div> -->
	<!-- <a href="/shop/product/product_lists" class="btn_more">더보기</a> -->
	<!--/h2>
        <span class="sub_tit">와인나라팀에서 특별히 선정한 상품들을 만나보세요.</span>
        <div class="result_tab">
            <ul>
                            <!-- class="on" -->
	<!--li class='on'><button type="button">이달의 와인</button></li>
                        </ul>
        </div>
        <div class="prd_wrap">
                    	<div class="n_prd_list theme_prd_list on" id="theme_list_3">
                <ul class="">
                                     </ul>
            </div>
                     </div>
    </div> -->
	<div class="prd_wrap slide_prd section newarrivals">
		<h2>NEW ARRIVALS</h2>
		<a href="/shop/product/group_product_lists?group_cd=1901" class="btn_more">더보기</a>
		<!-- <span class="sub_tit"></span> -->
		<div class="prd_wrap">
			<ul class="n_prd_list">
				<li>
				<div class="item">
					<div class="main_img" style="background:#D7F9E2">
						<a href="/shop/product/product_view?product_cd=29E404" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/157bc4be3f4e882f68da804d39956326.jpg" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/157bc4be3f4e882f68da804d39956326.jpg" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/157bc4be3f4e882f68da804d39956326.jpg" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_29E404 " id="wish_29E404" onclick="product.likeProduct('29E404');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=29E404"><span>빌라엠썸X수키도키 잔패키지</span><span class="en">VillaM SOME X SUKEYDOKEY Glass Package </span></a>
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#D7F9E2">디저트</span><span style="background:#D7F9E2">이탈리아</span><span style="background:#D7F9E2">기타</span>
						</div>
						<div class="price_area">
							<p class="price">
								<!-- 할인가 -->
								<em class="discount">32%</em>
								<del>25,000원</del>
								<ins>16,900원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
				<li>
				<div class="item">
					<div class="main_img" style="background:#E0D8EA">
						<a href="/shop/product/product_view?product_cd=03R278" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_03R278 " id="wish_03R278" onclick="product.likeProduct('03R278');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=03R278"><span>페이덜트 고잉 포 브로크</span><span class="en">PAYDIRT GOING FOR BROKE</span></a>
							</p>
							<p class="prd_info">
								HARVESTED : Hand harvested between August 31st and October 3rd / BOTTLING DATE : December 19th, 2019 / PRODUCTION : 5,100 Cases
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">미국</span><span style="background:#E0D8EA">진판델</span>
						</div>
						<div class="price_area">
							<p class="price">
								<!-- 할인가 -->
								<em class="discount">16%</em>
								<del>50,000원</del>
								<ins>42,000원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
				<li>
				<div class="item">
					<div class="main_img" style="background:#E0D8EA">
						<a href="/shop/product/product_view?product_cd=03T371" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/ca7dcbb412a2b49d2bb692dc8ee96b76.png" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/ca7dcbb412a2b49d2bb692dc8ee96b76.png" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/ca7dcbb412a2b49d2bb692dc8ee96b76.png" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_03T371 " id="wish_03T371" onclick="product.likeProduct('03T371');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=03T371"><span>이즈웨이 롭 앤 레스</span><span class="en">Izway Rob And Les </span></a>
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">쉬라즈</span>
						</div>
						<div class="price_area">
							<p class="price">
								<!-- 할인가 -->
								<em class="discount">35%</em>
								<del>75,000원</del>
								<ins>49,000원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
				<li>
				<div class="item">
					<div class="main_img" style="background:#E0D8EA">
						<a href="/shop/product/product_view?product_cd=03T999" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_03T999 " id="wish_03T999" onclick="product.likeProduct('03T999');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=03T999"><span>디아블로 데블스 카나발 스위트</span><span class="en"></span></a>
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">칠레</span>
						</div>
						<div class="price_area">
							<p class="price">
								<!-- 할인가 -->
								<em class="discount">70%</em>
								<del>50,000원</del>
								<ins>14,900원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
				<li>
				<div class="item">
					<div class="main_img" style="background:#E0D8EA">
						<a href="/shop/product/product_view?product_cd=03U001" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_03U001 " id="wish_03U001" onclick="product.likeProduct('03U001');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=03U001"><span>디아블로 데블스 카나발 카베르네</span><span class="en"></span></a>
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">칠레</span><span style="background:#E0D8EA">카베르네 소비뇽</span>
						</div>
						<div class="price_area">
							<p class="price">
								<!-- 할인가 -->
								<em class="discount">70%</em>
								<del>50,000원</del>
								<ins>14,900원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
				<li>
				<div class="item">
					<div class="main_img" style="background:#F6EC9C">
						<a href="/shop/product/product_view?product_cd=04F033" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_04F033 " id="wish_04F033" onclick="product.likeProduct('04F033');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=04F033"><span>디아블로 데블스 카나발 소비뇽 </span><span class="en"></span></a>
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#F6EC9C">화이트</span><span style="background:#F6EC9C">칠레</span><span style="background:#F6EC9C">소비뇽 블랑</span>
						</div>
						<div class="price_area">
							<p class="price">
								<!-- 할인가 -->
								<em class="discount">70%</em>
								<del>50,000원</del>
								<ins>14,900원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
				<li>
				<div class="item">
					<div class="main_img" style="background:#E0D8EA">
						<a href="/shop/product/product_view?product_cd=03T989" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_03T989 " id="wish_03T989" onclick="product.likeProduct('03T989');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=03T989"><span>디아블로 데블스 카나발 레드</span><span class="en"></span></a>
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">칠레</span><span style="background:#E0D8EA">기타</span>
						</div>
						<div class="price_area">
							<p class="price">
								<!-- 할인가 -->
								<em class="discount">70%</em>
								<del>50,000원</del>
								<ins>14,900원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
				<li>
				<div class="item">
					<div class="main_img" style="background:#E0D8EA">
						<a href="/shop/product/product_view?product_cd=03T786" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_03T786 " id="wish_03T786" onclick="product.likeProduct('03T786');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=03T786"><span>마틴 레이 오크빌 카베르네 소비뇽</span><span class="en"></span></a>
							</p>
							<p class="prd_info">
								세계적인 와인 평론가들로부터 높은 평가를 받고 있으며, 매년 평균 90points 이상의 점수를 받는 프리미엄 나파밸리 와인
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">미국</span><span style="background:#E0D8EA">피노누아</span>
						</div>
						<div class="price_area">
							<p class="price">
								<!-- 할인가 -->
								<em class="discount">33%</em>
								<del>300,000원</del>
								<ins>200,000원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
				<li>
				<div class="item">
					<div class="main_img" style="background:#E0D8EA">
						<a href="/shop/product/product_view?product_cd=03S801" class="prd_img table_box">
						<picture>
						<!--[if IE 9]><video style="display: none;"><![endif]-->
						<source srcset="../uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" media="(min-width:1024px)">
						<!-- pc이미지 -->
						<source srcset="../uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" media="(max-width:1023px)">
						<!-- mb이미지 -->
						<!--[if IE 9]></video><![endif]-->
						<img src="uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" loading="lazy" alt="">
						<!-- pc이미지 -->
						</picture>
						</a>
						<div class="btn">
							<button type="button" class="wish wish_03S801 " id="wish_03S801" onclick="product.likeProduct('03S801');"><span>찜하기</span></button>
						</div>
						<div class="label_wrap">
						</div>
					</div>
					<div class="info">
						<div class="more_info">
							<p class="prd_name">
								<a href="/shop/product/product_view?product_cd=03S801"><span>앤젤린 멘도치노 피노누아 </span><span class="en"></span></a>
							</p>
							<p class="prd_info">
								"고급 레스토랑에서 판매하는 고퀄리티 글라스 와인으로 시작해서 현재는 해외 판매까지 성공시킨 역주행 성공의 브랜드"
							</p>
						</div>
						<div class="cate_label">
							<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">미국</span><span style="background:#E0D8EA">피노누아</span>
						</div>
						<div class="price_area">
							<p class="price set">
								<!-- n병 구매시 -->
								<span class="regular_price price">
								<em class="discount">50%</em>
								<del>60,000원</del>
								<ins>29,900원</ins>
								</span>
								<em class="discount">53%</em>
								<i>3병 이상 구매시</i>
								<ins>28,400원</ins>
							</p>
						</div>
					</div>
				</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- <div class="section subscribe_area">
        <div class="inner">
            <div class="write_tit">
                <em>매월 한 번 목요일,</em>
                와인 이야기를 보내드립니다.
            </div>
            <div class="write_box">
                <input type="text" name="email" id="email" placeholder="이메일 주소를 입력해주세요.">
                <button type="button" class="btn_txt" onclick="news_sub();"><span>뉴스레터 </span>구독하기</button>
            </div>
        </div>
    </div> -->
	<div class="section news_area newarrivals sub_tit_wrap">
		<h2>OUR STORIES</h2>
		<!-- OUR STORIES -->
		<span class="sub_tit">알고마시면 더욱 흥미로운 와인세계로 빠져보세요.</span>
		<a href="/shop/community/magazine_con_lists" class="btn_more"><span>더보기</span></a>
		<div class="n_slide">
			<div class="silde">
				<a href="/shop/community/magazine_con_view?magazine_con_seq=67&magazine_seq=13">
				<div class="img">
					<picture>
					<!--[if IE 9]><video style="display: none;"><![endif]-->
					<source srcset="../uploads/magazine_con/41879bd0e5573a6c9d7c3f1c878bae24.png" media="(min-width:1024px)">
					<!-- pc이미지 -->
					<source srcset="../uploads/magazine_con/41879bd0e5573a6c9d7c3f1c878bae24.png" media="(max-width:1023px)">
					<!-- mb이미지 -->
					<!--[if IE 9]></video><![endif]-->
					<img src="uploads/magazine_con/41879bd0e5573a6c9d7c3f1c878bae24.png" loading="lazy" alt="">
					<!-- pc이미지 -->
					</picture>
				</div>
				<p>
					WINE STORY<br>
					와인들고 피크닉을 떠나보자!
				</p>
				</a>
			</div>
			<div class="silde">
				<a href="/shop/community/magazine_con_view?magazine_con_seq=66&magazine_seq=14">
				<div class="img">
					<picture>
					<!--[if IE 9]><video style="display: none;"><![endif]-->
					<source srcset="../uploads/magazine_con/45a7d4a805d7bdd35410a117da7aa53e.png" media="(min-width:1024px)">
					<!-- pc이미지 -->
					<source srcset="../uploads/magazine_con/45a7d4a805d7bdd35410a117da7aa53e.png" media="(max-width:1023px)">
					<!-- mb이미지 -->
					<!--[if IE 9]></video><![endif]-->
					<img src="uploads/magazine_con/45a7d4a805d7bdd35410a117da7aa53e.png" loading="lazy" alt="">
					<!-- pc이미지 -->
					</picture>
				</div>
				<p>
					F&B STORY<br>
					장한이 셰프님의 특별한 스토리가 담긴 SAV seoul 신메뉴
				</p>
				</a>
			</div>
			<div class="silde">
				<a href="/shop/community/magazine_con_view?magazine_con_seq=65&magazine_seq=14">
				<div class="img">
					<picture>
					<!--[if IE 9]><video style="display: none;"><![endif]-->
					<source srcset="../uploads/magazine_con/c70bbfb2ed4a0756a3814e4905d68e7e.png" media="(min-width:1024px)">
					<!-- pc이미지 -->
					<source srcset="../uploads/magazine_con/c70bbfb2ed4a0756a3814e4905d68e7e.png" media="(max-width:1023px)">
					<!-- mb이미지 -->
					<!--[if IE 9]></video><![endif]-->
					<img src="uploads/magazine_con/c70bbfb2ed4a0756a3814e4905d68e7e.png" loading="lazy" alt="">
					<!-- pc이미지 -->
					</picture>
				</div>
				<p>
					F&B STORY<br>
					봄과 함께 찾아온 MOWa 신메뉴
				</p>
				</a>
			</div>
			<div class="silde">
				<a href="/shop/community/magazine_con_view?magazine_con_seq=64&magazine_seq=13">
				<div class="img">
					<picture>
					<!--[if IE 9]><video style="display: none;"><![endif]-->
					<source srcset="../uploads/magazine_con/e1db5b7b9084f5b50d17407fbff67f69.png" media="(min-width:1024px)">
					<!-- pc이미지 -->
					<source srcset="../uploads/magazine_con/e1db5b7b9084f5b50d17407fbff67f69.png" media="(max-width:1023px)">
					<!-- mb이미지 -->
					<!--[if IE 9]></video><![endif]-->
					<img src="uploads/magazine_con/e1db5b7b9084f5b50d17407fbff67f69.png" loading="lazy" alt="">
					<!-- pc이미지 -->
					</picture>
				</div>
				<p>
					WINE STORY<br>
					[WINE STORY] 1월 Wine Pairing
				</p>
				</a>
			</div>
			<div class="silde">
				<a href="/shop/community/magazine_con_view?magazine_con_seq=63&magazine_seq=14">
				<div class="img">
					<picture>
					<!--[if IE 9]><video style="display: none;"><![endif]-->
					<source srcset="../uploads/magazine_con/df1a44c3a956ed038645bbd60183c777.png" media="(min-width:1024px)">
					<!-- pc이미지 -->
					<source srcset="../uploads/magazine_con/df1a44c3a956ed038645bbd60183c777.png" media="(max-width:1023px)">
					<!-- mb이미지 -->
					<!--[if IE 9]></video><![endif]-->
					<img src="uploads/magazine_con/df1a44c3a956ed038645bbd60183c777.png" loading="lazy" alt="">
					<!-- pc이미지 -->
					</picture>
				</div>
				<p>
					F&B STORY<br>
					Le Monde du Vin으로 초대합니다.
				</p>
				</a>
			</div>
		</div>
		<!-- <div class="btn_area">
            <button type="button" onclick="location.href='/shop/community/magazine_con_lists'" class="btn_txt"><span>더보기</span></button>
        </div> -->
	</div>
</div>
</div>
<!-- 휴면계정안내 -->
<div class="layer dormant_layer" id="dormant_layer" style="display: none;">
<div class="display_table">
	<div class="table_cell">
		<div class="layer_area">
			<button type="button" class="layer_close" onclick="dormant_close()">닫기</button>
			<div class="layer_con">
				<h3 class="tit">휴면 계정 안내</h3>
				<p class="sub_tit">
					회원님의 계정이 1년이상 로그인하지 않아 관련 <br class="pc_hidden">
					법령에 따라 <br class="mb_hidden">
					휴면 상태로 전환되었습니다.
				</p>
				<div class="user_year">
					<p><span>최근 접속일</span> : <span></span></p>
					<p><span>휴면 전환일</span> : <span></span></p>
				</div>
				<p class="sub_txt">
					모든 서비스를 다시 이용하고 싶을 경우에는, <br class="pc_hidden">
					<span>휴면 해제하기</span>를 선택해 주세요.
				</p>
				<ul class="mem_lists">
				</ul>
				<div class="btn_area col2">
					<button type="button" class="btn_txt" onclick="dormant_close()">취소</button>
					<button type="button" class="btn_txt btn_black" onclick="dormant_submit();">휴면 해제하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<!-- //휴면계정안내 -->
<!-- 리뷰 레이어 (유형 퍼블 추가) -->
<div class="layer review_img_layer">
<div class="display_table">
	<div class="table_cell">
		<div class="layer_area">
			<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
			<div class="layer_tit">
				리뷰 보기
			</div>
			<div class="layer_con" id="review_div">
			</div>
		</div>
	</div>
</div>
</div>
<!-- //리뷰 레이어 (유형 퍼블 추가) -->
<!-- page_script -->
<link rel="stylesheet" type="text/css" href="../asset/css/shop/slick.css"/>
<link rel="stylesheet" type="text/css" href="../asset/css/shop/jqcloud.min.css"/>
<script type="text/javascript" src="../asset/js/jqcloud.min.js"></script>
<script type="text/javascript" src="../asset/js/slick.min.js"></script>
<script>
    function dormant_submit(){
                    location.href = "/shop/auth/change_dorment?num=";
            }
    function dormant_close(){
        $('#dormant_layer').hide();
    }
	$(document).ready(function(){
        $('.main_layer').each(function(idx, item){
            var targetId = $(item).find(".not_today input").attr('id');
            if(getCookie(targetId)!="Y"){
                $(item).fadeIn();
            }else{
                $(item).fadeOut();
            }
        });
        // our pick, BEST-SELLERS 
        // $(".result_tab ul li:first").addClass('on');
        // $(".se_teb ul li:first").addClass('on');
        // $(".prd_wrap .prd_list:first").addClass('on');
        // $(".prd_wrap .se_list:first").addClass('on');
    });
    function exit(tg){
        var targetLayer = $(tg).parents(".main_layer"),
            target = targetLayer.find(".not_today input"),
            targetId = target.attr("id");
        targetLayer.fadeOut();
    	if(target.is(":checked") == true){
        	setCookie(targetId,"Y",1);
        }
    }
	function getCookie(name){
		var cName = name + "=";
		var x = 0;
		while ( x <= document.cookie.length )
		{
			var y = (x+cName.length);
			if ( document.cookie.substring( x, y ) == cName )
			{
				if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
					endOfCookie = document.cookie.length;
				return unescape( document.cookie.substring( y, endOfCookie ) );
			}
			x = document.cookie.indexOf( " ", x ) + 1;
			if ( x == 0 )
				break;
		}
		return "";
	}
    function setCookie(cname, cvalue, exdays) {
    	var d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000)); //시간설정
        var expires = "expires="+d.toUTCString(); var temp = cname + "=" + cvalue + "; " + expires;
        document.cookie = temp;
    }
    // 뉴스레터구독
    function news_sub(){
        var regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/;
    	var email = $("#email").val();
    	if(!email){
    		alert("이메일을 입력해주세요.");
    		$("#email").focus();
            return false;
    	}
        if(!regExp.test(email)){
            alert("이메일 형식이 아닙니다.");
            $("#email").focus();
            return false;
        }
        if(confirm("뉴스레터구독을 하시겠습니다?")){
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: "POST",
                url : "/shop/main/newsletter_insert_ajax",
                data: {email:email},
                success : function (res) {
                    if (typeof(res)=="string"){ res = JSON.parse(res); }    
    				if(res.status == "ok"){
						alert("뉴스레터 구독신청되었습니다.");
						$("#email").val("");
						return false;
    				}else{
                        alert(res.msg);
    					console.log("err");
    					return false;
    				}
                },
                error: function (res) {
                    alert("뉴스레터 구독 중 에러가 발생했습니다.");
                    alert(res.responseText);
                }
            });
        }
    }
    //메인 비주얼
    $(".m_slide").slick({
    	lazyLoad: 'ondemand',
        dots: false,
        arrows: false,
    	slidesToShow: 2,
        autoplay: true,
        autoplaySpeed: 3000,
        responsive: [{
            breakpoint: 1023,
            settings: {
                lazyLoad: 'ondemand',
                dots: false,
                arrows: false,
                slidesToShow: 1,
                autoplay: true,
                autoplaySpeed: 3000,
            }
        }]
    }).on("afterChange", function(event, slick, currentSlide){
        var crt = slick.currentSlide+1,
            total = slick.slideCount;
        $(".control_box .current").text(txtZeros(crt, 2));
    	$(".control_box .total").text(txtZeros(total, 2));
    });
    // $(".main_layer .slider").slick({
    //     dots: true,
    //     arrows: false
    // });
	// 리뷰 이미지 레이어 오픈 (유형 퍼블 추가)
    function reviewImgLayer(use_review_seq){
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	$.ajax({
            type: "post",
            url : "/shop/product/review_view_ajax",
            data: {use_review_seq:use_review_seq},
            success : function (res) {
    			if(res != ""){
    				$("#review_div").empty();
    				$("#review_div").append(res);
    				commonUI.layer.open('review_img_layer');
    				 //리뷰 이미지 레이어 슬라이드
                    $(".review_img_layer .rv_slide").slick({
                        arrows: true,
                        dots: true,
                        infinite: true,
                    });
    			}
            },
            error: function (res) {
                alert("error");
            }
        });
    }
    //동영상 재생버튼
    $(".btn_play").on("click", function(){
        document.getElementById("video1").play();
        $(this).remove();
    });
    $(".control_box .prev").on("click", function(){
        $(".m_slide").slick("slickPrev");
    });
    $(".control_box .next").on("click", function(){
        $(".m_slide").slick("slickNext");
    });
    var mSlideCnt = $(".m_slide .slick-slide").length - 4;
    $(".control_box .total").text(txtZeros(mSlideCnt, 2));
    //한 자리일 때 0 넣기
    function txtZeros(n, digits) {
      var zero = '';
      n = n.toString();
      if (n.length < digits) {
        for (var i = 0; i < digits - n.length; i++)
          zero += '0';
      }
      return zero + n;
    }
    //중간 배너 슬라이드
    $('.b_slide').slick({
		lazyLoad: 'ondemand',
        dots: true,
        arrows: true,
        autoplay: true,
        autoplaySpeed: 1500,
        responsive: [{
            breakpoint: 1023,
            settings: {
				lazyLoad: 'ondemand',
                dots: true,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 1500
            }
        }]
    });
    //OUR STORIES 슬라이드
    $('.n_slide').slick({
        dots: false,
        arrows: false,
        variableWidth: true,
        slidesToScroll:1,
        slidesToShow:5,
        responsive: [{
            breakpoint: 1023,
            settings: {
                dots: false,
                arrows: false,
                variableWidth: true,
                slidesToScroll:1,
                slidesToShow:1,
            }
        }]
    });
    //테마와인 반응형(PC) 슬라이드
    var themeSlider = $('.theme_area .prd_list>ul');
    var themeSlickOptions = {
        centerMode:false,
        variableWidth:true,
        slidesToScroll:1,
        slidesToShow:3,
        infinite:true,
        dots:false,
        arrows:true,
        swipe:false,
        // autoplay: true,
        // autoplaySpeed: 1500
    };
    $(window).on('load resize', function(){
        if($(window).width() < 1023){
            if($(".theme_area .prd_list>.slick-slider").length){
                themeSlider.slick("unslick");
            }
            // if($(".select_area .prd_list>.slick-slider").length){
            //     selectSlider.slick("unslick");
            // }
        }else{
            themeSlider.not('.slick-initialized').slick(themeSlickOptions);
            // selectSlider.not('.slick-initialized').slick(selectSlickOptions);
        }
    });
    //UI/UX 개편 와인 반응형(PC) 슬라이드
    var newPrdSlider = $('.slide_prd .prd_wrap>ul');
    var newPrdSlickOptions = {
        centerMode:false,
        variableWidth:true,
        slidesToScroll:1,
        slidesToShow:5,
        infinite:true,
        dots:false,
        arrows:true,
        swipe:false,
    };
    // OUR PICK
    $(function(){
		$(".theme_prd_list").css("display","none");
		$('.theme_prd_list').each(function(){
             if ($(this).hasClass("on")) {
                    $(this).css("display","block");
                }else {
                  $(this).css("display","none");
                }
        });
	});
    //UI/UX 개편 와인 반응형(PC) 슬라이드 - OUR PICK
    var themeSlider = $('.slide_prd .prd_wrap .theme_prd_list ul');
    var themeSlickOptions = {
		lazyLoad: 'ondemand',
        centerMode:false,
        variableWidth:true,
        slidesToScroll:1,
        slidesToShow:5,
        infinite:true,
        dots:false,
        arrows:true,
        swipe:false,
    };
    $(window).on('load resize', function(){
        if($(window).width() < 1023){
            if($(".slide_prd .prd_wrap>.slick-slider").length){
                newPrdSlider.slick("unslick");
            }
        }else{
            newPrdSlider.not('.slick-initialized').slick(newPrdSlickOptions);
        }
    });
    // OUR PICK
    $(".result_tab li button").on("click", function(){
    	console.log("aa");
        var i = 0;
        //탭 선택 시 첫번째 슬라이드로
        if($(".theme_con .prd_wrap .theme_prd_list .slick-slider").length){
            $('.theme_con .theme_prd_list ul').slick('slickGoTo', i);
        }
        var $this = $(this).parent();
        var index = $this.index();
        $this.addClass("on").siblings().removeClass("on");
        var $outer = $this.closest('.section');
        var $current = $outer.find(' > .prd_wrap > .theme_prd_list.on');
        var $post = $outer.find(' > .prd_wrap > .theme_prd_list').eq(index);
        $current.removeClass('on');
        $post.addClass('on');
        $('.theme_con .theme_prd_list').each(function(){
            if ($(this).hasClass("on")) {
            	$(this).css("display","block");
            }else {
            	$(this).css("display","none");
            }
        });
    });
    var cust_seq = '';
    var cust_seq_boolean = cust_seq ? 'Y' : 'N';
    // 뒤로가기 추가
    var pageInt = loadScrollgetCookie("pageInt");
    if(pageInt == null){
    	pageInt = 0;
    }
    var initGetList = false;
    var product = '[{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"19","gubun_cd":"151","gubun_nm":"\ub808\ub4dc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"20","gubun_cd":"152","gubun_nm":"\ud654\uc774\ud2b8 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"21","gubun_cd":"153","gubun_nm":"\uc2a4\ud30c\ud074\ub9c1 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"22","gubun_cd":"154","gubun_nm":"\uc0f4\ud398\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"23","gubun_cd":"155","gubun_nm":"\ub85c\uc81c \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"8","gubun_cd":"101","gubun_nm":"\ud504\ub791\uc2a4 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"9","gubun_cd":"102","gubun_nm":"\uc774\ud0c8\ub9ac\uc544 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"10","gubun_cd":"103","gubun_nm":"\uc2a4\ud398\uc778 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"11","gubun_cd":"104","gubun_nm":"\ub3c5\uc77c \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"12","gubun_cd":"105","gubun_nm":"\uce60\ub808 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"13","gubun_cd":"106","gubun_nm":"\ubbf8\uad6d \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"14","gubun_cd":"107","gubun_nm":"\ud638\uc8fc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"15","gubun_cd":"108","gubun_nm":"\ub274\uc9c8\ub79c\ub4dc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"16","gubun_cd":"109","gubun_nm":"\uc544\ub974\ud5e8\ud2f0\ub098 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"18","gubun_cd":"111","gubun_nm":"\uae30\ud0c0\uc2e0\ub300\ub959 \uc640\uc778","file_nm3":null}]';
    var cmd_product = '';
    product = JSON.parse(product);
    console.log("cmd"+cmd_product);
    function callApi(mode, param){
    	scrollVal = false;
    	$.ajax({
    		type: "get",
    		url : "/shop/main/getRecommend_ajax",
    		async: false,
    		data: param,
    		success : function (res) {
    			if(!res){
    				if( mode === 'Y'){
    					$("#par_recom_"+product[loadDataIdx]['gubun_cd']).remove();
    				}
    			}else{
                    $("#par_recom_"+product[loadDataIdx]['gubun_cd']).show();
    				$("#recom_"+product[loadDataIdx]['gubun_cd']).append(res);
    				var aLinkBtn = $(".scrollEventEle a");
    				aLinkBtn.not('.scrollSaveEvent').on('click', function(){
    					event.preventDefault();
    					scrollSaveEventBinding($(this).closest('.scrollEventEle'));
    					window.location.href = $(this).attr('href');
    				});
    				aLinkBtn.addClass('scrollSaveEvent');
                    //하단 무한스크롤 반응형(PC) 슬라이드                
                    $('.scroll_area .prd_list>ul').not('.slick-initialized').slick({
                        centerMode:false,
                        variableWidth:true,
                        slidesToScroll:1,
                        slidesToShow:3,
                        infinite:true,
                        dots:false,
                        arrows:true,
                        swipe:false,
                        responsive:[{
                            breakpoint: 1024,
                            settings:{
                                centerMode:false,
                                variableWidth:true,
                                slidesToScroll:1,
                                slidesToShow:3,
                                infinite:true,
                                dots:false,
                                arrows:true,
                                swipe:false,
                            }
                        }]
                    });
    			}
    			console.log(pageInt);
    			if(loadDataIdx < pageInt) {
    				loadDataIdx += 1;
    				// console.log("스크롤 실행");
    				//var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
    				if( cust_seq && cmd_product ){
    					var datatest = { 'bigo' : product[loadDataIdx]['bigo'] } ;
    					console.log(datatest);
    					callApi('Y',datatest);
    				}else{
    					var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
    					callApi('N',datatest);
    				}
    			}else{
    				loadScroll();
    				if( loadDataIdx == (product.length-1) ){
    					window.removeEventListener('scroll', moreShowList);
    				}else{
    					loadDataIdx += 1;
    					scrollVal = true;
    				}
    			}
    		},
    		error: function (res) {
    			//alert("error");
    		}
    	});
    }
    //스크롤 바닥 감지
    window.addEventListener('scroll', moreShowList);
    var scrollVal = true;	//스크롤 무한로딩으로 추가
    var loadDataIdx = 0;
    function moreShowList() {
        if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 3.5 )) {
            if( scrollVal === true) {
                // console.log("스크롤 실행");
                //var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
    			 if( cust_seq && cmd_product ){
    				 var datatest = { 'bigo' : product[loadDataIdx]['bigo'] } ;
//     				 console.log(datatest);
    				 callApi('Y',datatest);
    			 }else{
    				 var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
    				 callApi('N',datatest);
    			 }
             //   callApi(cust_seq_boolean, datatest);
            }
        }
    }
    // js 호출안되어 추가
    product.likeProduct = function(product_cd) {
        var now_url = location.href;
    	if($('.wish_'+product_cd).hasClass('on')){
    		$(".wish_"+product_cd).removeClass("on");
            var ajax_mode = "DEL";
    	}else{
    		$(".wish_"+product_cd).addClass("on");
            var ajax_mode = "ADD";
    	}
        if( now_url.indexOf("/main") > -1){
            if( now_url.indexOf("/main/main") > -1){
                var url = "/shop/mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
            } else {
                var url = "/shop/mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
            }
        } else if( now_url.indexOf("/mypage") > -1){
            var url = "../note/wish_proc_ajax?ajax_mode="+ajax_mode;
        } else {
            var url = "../mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
        }
//     	console.log(url);
    	if($("#session_id").val()){
    	    Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	    $.ajax({
    	        type: "POST",
    	        url : url,
    	        dataType : 'json',
    	        data: { product_cd : product_cd },
    	        success : function (res) {
    				if (typeof(res)=="string")	{
    					res = JSON.parse(res);
    				}
    	            if( $.trim(res.status) == "ok"){
    					$('#header_like_cnt').text(res.data['like_cnt']);
    	                return;
    	            }else{
    	                return;
    	            }
    	            return;
    	        },
    	        error: function (res) {
    				if (typeof(res)=="string")	{
    					res = JSON.parse(res);
    				}
    	            alert(res.responseText);
    	        }
    	    });
    	}else{
    		commonUI.layer.open('login_layer');
    	}
    }
    var db = (document.body) ? 1 : 0;
    var scroll = (window.scrollTo) ? 1 : 0;
    function loadScrollsetCookie(name, value, expires, path, domain, secure) {
    	var curCookie = name + "=" + escape(value) +
    	((expires) ? "; expires=" + expires.toGMTString() : "") +
    	((path) ? "; path=" + path : "") +
    	((domain) ? "; domain=" + domain : "") +
    	((secure) ? "; secure" : "");
    	document.cookie = curCookie;
    }
    function loadScrollgetCookie(name) {
    	var dc = document.cookie;
    	var prefix = name + "=";
    	var begin = dc.indexOf("; " + prefix);
    	if (begin == -1) {
    	begin = dc.indexOf(prefix);
    	if (begin != 0) return null;
    	} else {
    	begin += 2;
    	}
    	var end = document.cookie.indexOf(";", begin);
    	if (end == -1) end = dc.length;
    	return unescape(dc.substring(begin + prefix.length, end));
    }
    function loadScroll() {
    	if (!scroll) return;
    	var getCurrentPd = loadScrollgetCookie("currentPd");
//     	console.log(getCurrentPd);
    	if(getCurrentPd){
    		// alert("move");
    		var ar = $("[data-val="+getCurrentPd+"]").offset().top - 200
    		// alert(ar);
    		setTimeout(function () {
                window.scrollTo(0, parseInt(ar))
            },200);
    		deleteCookie('currentPd');
    		deleteCookie('pageInt');
    		pageInt=null;
    	}
    }
    function scrollSaveEventBinding(_target){
//     	console.log(_target)
    	loadScrollsetCookie("currentPd", _target.attr('data-val'));
    	loadScrollsetCookie("pageInt", loadDataIdx);
    	// setCookie("docHeight", $('#contents').height());
    }
    function deleteCookie (name) {
    	document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
    }
</script>
<!-- //page_script -->
</section>
<!-- //contents -->
<!-- footer -->
<footer id="footer" class="footer">
<div class="hidden_info">
<div class="link_box">
	<div class="wrap">
		<ul>
			<li><a href="/shop/company/about_us">회사소개</a></li>
			<li><a href="/shop/company/brand">브랜드 소개</a></li>
			<li><a href="/shop/member/policy/law_con">이용약관</a></li>
			<li><a href="/shop/member/policy/privacy_con">개인정보처리방침</a></li>
			<li><a href="/shop/cs/notice_lists">고객센터</a></li>
		</ul>
	</div>
</div>
<div class="info_box">
	<div class="info">
		<ul class="company_info">
			<li>대표번호 : 080-732-0101 (업무시간 : 10:00-17:00 월~금/ 점심시간 : 12:00-13:00) 주말, 공휴일 휴무</li>
			<li><span><em>대표자</em> : 이권휴</span><span><em>주소</em> : 서울특별시 중구 퇴계로46길 23, 1층(묵정동)</span></li>
			<li><span><em>법인명</em> : (주)와인나라아이비 제일와인셀러점</span><span><em>사업자 등록정보</em> : 142-81-83435</span></li>
			<li><span><em>통신판매업</em> : 제 2022-서울중구-1128호</span><span><em>개인정보보호책임자</em> : 정재훈</span></li>
			<li><span>호스팅 : (주)와인나라아이비</span><span>E-MAIL : jjh2310@winenara.com</span></li>
			<li>주류는 매장을 방문하여 수령하여야 하며, 주류를 매장 외부로 반출하여 소비자에게 배달/판매하지 않음</li>
			<li>Copyright (c) WINENARA All Rights Reserved. 무단 전재와 무단 복제를 금함.</li>
		</ul>
	</div>
	<div class="logo">
		<img src="../asset/images/shop/default/logo_footer.png" alt="WINENARA 1987">
	</div>
</div>
</div>
<div class=" mb_hidden quick_menu ">
<ul class="list">
	<li class="top">
	<a href="#none" onclick="commonUI.footer.topMove()">TOP</a>
	</li>
	<li>
	<a href="/shop/cs/special">
	<div class="icon">
		<picture>
		<!--[if IE 9]><video style="display: none;"><![endif]-->
		<source srcset="../asset/images/shop/default/pc_ico_quick_delivery.png" media="(min-width:768px)">
		<!-- pc이미지 -->
		<source srcset="../asset/images/shop/default/mb_ico_quick_delivery.png" media="(max-width:767px)">
		<!-- mb이미지 -->
		<!--[if IE 9]></video><![endif]-->
		<img src="../asset/images/shop/default/pc_ico_quick_delivery.png" alt="특판문의" draggable="false">
		<!-- pc이미지 -->
		</picture>
	</div>
	<div class="txt">
		특판문의
	</div>
	</a>
	</li>
	<li>
	<a href="http://pf.kakao.com/_vlkxfxb/chat" class="pc_hidden">
	<div class="icon">
		<picture>
		<!--[if IE 9]><video style="display: none;"><![endif]-->
		<source srcset="../asset/images/shop/default/pc_ico_quick_talk.png" media="(min-width:768px)">
		<!-- pc이미지 -->
		<source srcset="../asset/images/shop/default/mb_ico_quick_talk.png" media="(max-width:767px)">
		<!-- mb이미지 -->
		<!--[if IE 9]></video><![endif]-->
		<img src="../asset/images/shop/default/pc_ico_quick_talk.png" alt="Talk" draggable="false">
		<!-- pc이미지 -->
		</picture>
	</div>
	<div class="txt">
		1:1문의
	</div>
	</a>
	<a href="javascript:window.open('http://pf.kakao.com/_vlkxfxb/chat','1:1문의','width=800,height=800,scrollbars=yes');" class="mb_hidden">
	<div class="icon">
		<picture>
		<!--[if IE 9]><video style="display: none;"><![endif]-->
		<source srcset="../asset/images/shop/default/pc_ico_quick_talk.png" media="(min-width:768px)">
		<!-- pc이미지 -->
		<source srcset="../asset/images/shop/default/mb_ico_quick_talk.png" media="(max-width:767px)">
		<!-- mb이미지 -->
		<!--[if IE 9]></video><![endif]-->
		<img src="../asset/images/shop/default/pc_ico_quick_talk.png" alt="Talk" draggable="false">
		<!-- pc이미지 -->
		</picture>
	</div>
	<div class="txt">
		1:1문의
	</div>
	</a>
	</li>
</ul>
<div class="open_box">
	<button type="button" class="menu_open">quick menu open</button>
</div>
</div>
</footer>
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