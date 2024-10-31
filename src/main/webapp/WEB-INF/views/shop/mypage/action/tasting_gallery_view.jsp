<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 나의 리뷰관리</title>
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

<!-- header -->
<%@ include file="../../common/header.jsp" %>
<!-- //header -->
<%@ include file="../../common/layer.jsp" %>
<%@ include file="../../common/script.jsp" %>

<!-- contents -->
<section id="contents">
<div class="lnb mypage_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>나의 리뷰관리</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
				<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
				<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
				<!-- <li><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li> -->
				<!-- <li><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
				<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
				<!-- <li><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
				<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
				<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
				<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천</a></li>
				<!-- <li><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
				<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
				<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
				<li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
				<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
				<li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
				<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
			</ul>
		</div>
	</div>
	<div class="common_lnb tasting_lnb">
		<div class="my">
			<div class="txt">
				<div class="img gold grade_info g100">
					<span>실버</span>
				</div>
				<p>
					<strong class="name">고객</strong>님
				</p>
			</div>
			<div class="btn_area">
				<button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
				<!-- <span>시음노트 작성하면 등급 UP</span> -->
			</div>
		</div>
		<div class="my_class_info">
			<ul class="">
				<!-- <li class=" switch_con">
                    <div class="info_switch">
                        <div class="btn_switch_module js_switch css_switch">
						<input type="hidden" id="follower_yn" value="Y">
                        <input type="checkbox" id="mypage_info_01" class="btn_switch_check" onclick="myPublic()" checked>
                            <div class="btn_switch_area">
                                <span class="txt left pc_hidden">ON</span>
                                <div class="btn_switch">
                                    <span class="pc_txt left mb_hidden">ON</span>
                                    <label class="bar" for="mypage_info_01">&nbsp;</label>
                                    <span class="pc_txt right mb_hidden">OFF</span>
                                </div>
                                <span class="txt right pc_hidden">OFF</span>
                            </div>
                        </div>
                        <p class="tit"><a href='/shop/mypage/action/follower'>나의 팔로워</a></p>
                    </div>
                    <div class="num_box">
                        <a href="/shop/mypage/action/follower">
                            <span>0</span>
                            <em>위</em>
                        </a>
                    </div>
                </li>
                <li class="">
                    <p class="tit"><a href='/shop/mypage/action/following'>나의 팔로잉</a></p>
                    <div class="num_box">
                        <a href="/shop/mypage/action/following">
                            <span>0</span>
                        </a>
                    </div>
                </li> -->
				<li class="">
					<p class="tit">도움이 돼요</p>
					<div class="num_box"><span>0</span></div>
				</li>
				<li class="">
					<p class="tit">도움이 안돼요</p>
					<div class="num_box"><span>0</span></div>
				</li>
			</ul>
		</div>
	</div>
	<div class="mypage_link mb_hidden">
		<ul class="depth_01">
			<li>
				<a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
					<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
					<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
					<li><a href="/shop/cart/cart_lists">장바구니</a></li>
					<!-- <li ><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
	                    <li ><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
				</ul>
			</li>
			<li>
				<a href="#none">쇼핑수첩</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
					<!-- <li ><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
					<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
					<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">나의 활동</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천신청</a></li>
					<!-- <li ><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
					<li class="on"><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">개인정보</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
					<li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
					<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
					<li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
					<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>
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
<div class="content mypage action tasting tasting_gallery_view_page tasting_lists_page">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">나의 리뷰관리</h2>
				<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/mypage/action/my_note_write'"><span>작성하기</span></button>
			</div>
		</div>
		<div class="lnb_wrap">
			<ul class="menu tab3">
				<li><a href="/shop/mypage/action/tasting_lists"><span>리뷰 작성 <em>1</em></span></a></li>
				<li><a href="/shop/mypage/action/tasting_view"><span>나의 리뷰 보기 </span></a></li>
				<li class="on"><a href="/shop/mypage/action/tasting_gallery_view"><span>나의 갤러리</span></a></li>
			</ul>
		</div>
		<div class="term_box">
			<div class="datepicker_area">
				<div class="datepicker">
					<input type="text" id="date_s" name="sh_s_date" value="">
				</div>
				<span>~</span>
				<div class="datepicker">
					<input type="text" id="date_e" name="sh_e_date" value="">
				</div>
			</div>
			<button type="button" class="btn_txt btn_black" onclick="getList('init');"><span>검색</span></button>
		</div>
		
		<ul class="gallery_lists">
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/KakaoTalk_20240611_121324434.jpg" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/KakaoTalk_20240611_121324434.jpg" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/KakaoTalk_20240611_121324434.jpg" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/364173210_158297777280335_3343078522234972698_n.heic" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/364173210_158297777280335_3343078522234972698_n.heic" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/364173210_158297777280335_3343078522234972698_n.heic" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/418353274_749874579992711_6160306047401063049_n.jpg" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/418353274_749874579992711_6160306047401063049_n.jpg" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/418353274_749874579992711_6160306047401063049_n.jpg" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/418639222_1424644174813473_790919237083351223_n.jpg" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/418639222_1424644174813473_790919237083351223_n.jpg" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/418639222_1424644174813473_790919237083351223_n.jpg" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/418648071_760930058733936_3416917592347125160_n.jpg" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/418648071_760930058733936_3416917592347125160_n.jpg" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/418648071_760930058733936_3416917592347125160_n.jpg" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/424429114_345881798275648_1857481307732508216_n.jpg" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/424429114_345881798275648_1857481307732508216_n.jpg" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/424429114_345881798275648_1857481307732508216_n.jpg" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/424493811_1573469423455507_6351102889061083422_n.jpg" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/424493811_1573469423455507_6351102889061083422_n.jpg" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/424493811_1573469423455507_6351102889061083422_n.jpg" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/424508780_1034002167670947_5059029982858509529_n.jpg" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/424508780_1034002167670947_5059029982858509529_n.jpg" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/424508780_1034002167670947_5059029982858509529_n.jpg" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
			<li>
				<span onclick="reviewImgLayer('');" style="cursor:pointer;">
					<div class="img">
						<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../../uploads/review/424937735_739580681220620_4951370760635476449_n.jpg" media="(min-width:768px)"><!-- pc이미지 -->
							<source srcset="../../../uploads/review/424937735_739580681220620_4951370760635476449_n.jpg" media="(max-width:767px)"><!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../../uploads/review/424937735_739580681220620_4951370760635476449_n.jpg" alt=""><!-- pc이미지 -->
						</picture>
					</div>
				</span>
			</li>
		</ul>

		<div class="btn_area">
			<button type="button" class="btn_txt btn_black">더보기</button>
		</div>
		
		<!-- 리뷰 레이어 (유형 퍼블 추가) -->
		<div class="layer review_img_layer">
			<div class="display_table">
				<div class="table_cell">
					<div class="layer_area">
						<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
						<div class="layer_tit">리뷰 보기</div>
						<div class="layer_con" id="review_div">
							<!-- 이미지 -->
							<!-- <div class="rv_slide" id="rv_slide">
									<div class="slide">
										<img src="../../../asset/images/shop/mypage/review_thumb01.png" alt="">
									</div>
									<div class="slide">
										<img src="../../../asset/images/shop/mypage/review_thumb02.png" alt="">
									</div>
									<div class="slide">
										<img src="../../../asset/images/shop/mypage/review_thumb01.png" alt="">
									</div>
								</div> -->
							<!-- //이미지 -->
							<!-- 텍스트 -->
							<!-- <div class="rv_con">
									<p class="tit">*SUMMER PICK* 트림바크 게브르츠트라미너</p>
									<div class="grade">
										<div class="star_area">
											<span class="full_gold" style="width:80%"></span>
											<span class="empty"></span>
										</div>
										<p class="date">2021.10.01</p>
									</div>
									<div class="txt">
										<em>아주 좋아요.</em> 평소 진하고 강렬한 맛의 레드 와인을 선호한다면 칠레 레드 와인 선물세트를 추천드려요. 카르멘의 ‘세듀스’는 ‘정열의 와인, 늙지 않는 와인’이라는 별명처럼 생동감 넘치는 캐릭터가 돋보이는 와인이에요. 카르멘의 ‘세듀스’는 ‘정열의 와인, 늙지 않는 와인’이라는 별명처럼 생동감 넘치는 캐릭터가 돋보이는 와인이에요. 
									</div>
								</div> -->
							<!-- //텍스트 -->
							<!-- 이미지 + 텍스트 -->
							<div class="rv_slide" id="rv_slide">
								<div class="slide">
									<img src="../../../asset/images/shop/mypage/review_thumb01.png" alt="">
								</div>
								<div class="slide">
									<img src="../../../asset/images/shop/mypage/review_thumb02.png" alt="">
								</div>
								<div class="slide">
									<img src="../../../asset/images/shop/mypage/review_thumb01.png" alt="">
								</div>
							</div>
							<div class="rv_con">
								<p class="tit">*SUMMER PICK* 트림바크 게브르츠트라미너</p>
								<div class="grade">
									<div class="star_area">
										<span class="full_gold" style="width:80%"></span>
										<span class="empty"></span>
									</div>
									<p class="date">2021.10.01</p>
								</div>
								<div class="txt">
									<em>아주 좋아요.</em> 평소 진하고 강렬한 맛의 레드 와인을 선호한다면 칠레 레드 와인 선물세트를 추천드려요. 카르멘의 ‘세듀스’는 ‘정열의 와인, 늙지 않는 와인’이라는 별명처럼 생동감 넘치는 캐릭터가 돋보이는 와인이에요. 카르멘의 ‘세듀스’는 ‘정열의 와인, 늙지 않는 와인’이라는 별명처럼 생동감 넘치는 캐릭터가 돋보이는 와인이에요.
								</div>
							</div>
							<!-- //이미지 + 텍스트 -->
							<!-- 동영상 + 텍스트 -->
							<!-- <div class="rv_slide" id="rv_slide">
									<div class="slide">
										<video controls playsinline loop muted id="video1" style="height:400px"><source src="../../../asset/images/shop/event/promotion.mp4" ype="video/mp4"> 해당 브라우저는 video 태그를 지원하지 않습니다.</video>
										<button type="button" class="btn_play"><span>동영상 재생</span></button>
									</div>
									<div class="slide">
										<video controls playsinline loop muted id="video1" style="height:400px"><source src="../../../asset/images/shop/event/promotion.mp4" ype="video/mp4"> 해당 브라우저는 video 태그를 지원하지 않습니다.</video>
										<button type="button" class="btn_play"><span>동영상 재생</span></button>
									</div>
									<div class="slide">
										<video controls playsinline loop muted id="video1" style="height:400px"><source src="../../../asset/images/shop/event/promotion.mp4" ype="video/mp4"> 해당 브라우저는 video 태그를 지원하지 않습니다.</video>
										<button type="button" class="btn_play"><span>동영상 재생</span></button>
									</div>
								</div>
								<div class="rv_con">
									<p class="tit">*SUMMER PICK* 트림바크 게브르츠트라미너</p>
									<div class="grade">
										<div class="star_area">
											<span class="full_gold" style="width:80%"></span>
											<span class="empty"></span>
										</div>
										<p class="date">2021.10.01</p>
									</div>
									<div class="txt">
										<em>아주 좋아요.</em> 평소 진하고 강렬한 맛의 레드 와인을 선호한다면 칠레 레드 와인 선물세트를 추천드려요. 카르멘의 ‘세듀스’는 ‘정열의 와인, 늙지 않는 와인’이라는 별명처럼 생동감 넘치는 캐릭터가 돋보이는 와인이에요. 카르멘의 ‘세듀스’는 ‘정열의 와인, 늙지 않는 와인’이라는 별명처럼 생동감 넘치는 캐릭터가 돋보이는 와인이에요. 
									</div>
								</div> -->
							<!-- //동영상 + 텍스트 -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //리뷰 레이어 (유형 퍼블 추가) -->
	</div>
</div>
</div>
<form action="https://www.winenara.com/shop/mypage/action/tasting_lists" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
<input type="hidden" name="witplus_csrf_token" value="40f810c3609c9cd9aa14792fda8ff461"/>
<input type="hidden" name="sh_s_date" id="sh_s_date" value="">
<input type="hidden" name="sh_e_date" id="sh_e_date" value="">
</form>
<!-- page_script -->
<script>
//스크롤 바닥 감지
getList('init');
window.addEventListener('scroll', moreShowList);
	
// function moreShowList() {
// // 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
// 	if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
// 		getList('add');
// 	}
// }

function getList(mode){
	console.log(mode);
	var page = $("#page").val();

	if( mode=="add"){
		page = parseInt(page)+1;
		$("#page").val(page);
	}else if(mode == "init"){
		page = 1;
		$("#page").val(page);
	}

	document.getElementById("ListForm").sh_s_date.value = $('#date_s').val();
	document.getElementById("ListForm").sh_e_date.value = $('#date_e').val();
	
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	// $.ajax({
	// 	type: "get",
	// 	url : "/shop/mypage/action/getGallery_ajax",
	// 	data: $("#ListForm").serialize(),
	// 	success : function (res) {
	// 	console.log(res);
	// 		if(res){
	// 			if(mode == 'init'){
	// 				$(".gallery_lists").html('');
	// 			} 
	// 			$(".gallery_lists").append(res);
	// 		}else{
	// 			if(mode == 'init'){
	// 					$(".gallery_lists").html("<li class='nodata'>작성된 기록이 없습니다.</li>");
	// 			}
	// 			window.removeEventListener('scroll', moreShowList);
	// 		}
			
	// 	},
	// 	error: function (res) {
	// 		// alert("추천 리스트 조회시 에러가 발생했습니다.");
	// 		alert(res.responseText);
	// 			window.removeEventListener('scroll', moreShowList);
	// 	}
	// });
}

//리뷰 이미지 레이어 오픈 (유형 퍼블 추가)
function reviewImgLayer(use_review_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	// $.ajax({
	// 	type: "post",
	// 	url : "/shop/product/review_view_ajax",
	// 	data: {use_review_seq:use_review_seq},
	// 	success : function (res) {
	// 		if(res != ""){
	// 			$("#review_div").empty();
	// 			$("#review_div").append(res);
	// 			commonUI.layer.open('review_img_layer');
	// 				//리뷰 이미지 레이어 슬라이드
	// 			$(".review_img_layer .rv_slide").slick({
	// 				arrows: true,
	// 				dots: true,
	// 				infinite: true,
	// 			});
	// 		}
	// 	},
	// 	error: function (res) {
	// 		alert("error");
	// 	}
	// });

	commonUI.layer.open('review_img_layer');
		//리뷰 이미지 레이어 슬라이드
	$(".review_img_layer .rv_slide").slick({
		arrows: true,
		dots: true,
		infinite: true,
	});
}
// $('.tasting_gallery_view_page .gallery_lists a').on('click', function(e) {
// 	e.preventDefault();
// });
</script>
<!-- //page_script -->
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
	var page = 'tasting_lists';
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