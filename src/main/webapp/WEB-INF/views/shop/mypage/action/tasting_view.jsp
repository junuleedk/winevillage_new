<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 나의 리뷰관리 </title>
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
					<!-- <li><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
						<li><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
				</ul>
			</li>
			<li>
				<a href="#none">쇼핑수첩</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
					<!-- <li><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
					<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
					<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">나의 활동</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천신청</a></li>
					<!-- <li><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
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
<div class="content mypage action tasting tasting_view_page">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">나의 리뷰관리</h2>
			</div>
		</div>
		<div class="lnb_wrap">
			<ul class="menu tab3">
				<li><a href="/shop/mypage/action/tasting_lists"><span>리뷰 작성 <em>1</em></span></a></li>
				<li class="on"><a href="/shop/mypage/action/tasting_view"><span>나의 리뷰 보기 </span></a></li>
				<li><a href="/shop/mypage/action/tasting_gallery_view"><span>나의 갤러리</span></a></li>
			</ul>
		</div>
		<div class="tasting_wrap">
			<div class="list_top">
				<!-- <p>고객님, <b>뵈브 드 베르네 브뤼 200ml</b>는 어떠셨나요?</p>
					<div class="btn_area">
						<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/mypage/action/tasting_write?ocode=202405231716140GPA';"><span>지금 바로 시음노트 작성하기</span></button>
					</div> -->
				<p>
					 리뷰 등록 시, 적립금 혜택이 지급됩니다. <span>(별점리뷰 100원, 텍스트 리뷰 200원, 포토 리뷰 300원, 구매한 상품 한정)</span>
					<em>※ 배송이 완료된 상품만 목록에 노출됩니다.</em>
				</p>
			</div>
			<ul class="tasting_review_lists">
				<!-- product_view_tasting_review_ajax -->
				<li>
					<div class="top">
						<div class="box tit">
							<p>*SUMMER PICK* 트림바크 게브르츠트라미너</p>
						</div>
						<div class="box grade">
							<div class="star_area">
								<!-- 별 한 개당 20% -->
								<span class="full_gold" style="width:80%"></span>
								<span class="empty"></span>
							</div>
							<p class="date">2021-10-01</p>
						</div>
					</div>
					<div class="con">
						<div class="box" onclick="reviewImgLayer('34')" style="cursor: pointer;">
							<em>아주 좋아요.</em>
							<p>평소 진하고 강렬한 맛의 레드 와인을 선호한다면 칠레 레드 와인 선물세트를 추천드려요. 카르멘의 ‘세듀스’는 ‘정열의 와인, 늙지 않는 와인’이라는 별명처럼 생동감 넘치는 캐릭터가 돋보이는 와인이에요. 카르멘의 ‘세듀스’는 ‘정열의 와인, 늙지 않는 와인’이라는 별명처럼 생동감 넘치는 캐릭터가 돋보이는 와인이에요.</p>
						</div>
						<div class="box img">
							<ul class="more">
								<li>
									<button type="button" onclick="reviewImgLayer('34')">
										<img src="https://www.winenara.com/uploads/review/6b2f27fecca383ee01037c8f4f7eabd6.png" alt="">
									</button>
								</li>
								<li>
									<button type="button" onclick="reviewImgLayer('34')">
										<img src="https://www.winenara.com/uploads/review/6b2f27fecca383ee01037c8f4f7eabd6.png" alt="">
									</button>
								</li>
								<li>
									<button type="button" onclick="reviewImgLayer('34')">
										<img src="https://www.winenara.com/uploads/review/6b2f27fecca383ee01037c8f4f7eabd6.png" alt="">
									</button>
								</li>
								<li>
									<button type="button" onclick="reviewImgLayer('34')">
										<img src="https://www.winenara.com/uploads/review/6b2f27fecca383ee01037c8f4f7eabd6.png" alt="">
									</button>
								</li>
								<li>
									<button type="button" onclick="reviewImgLayer('34')">
										<img src="https://www.winenara.com/uploads/review/6b2f27fecca383ee01037c8f4f7eabd6.png" alt="">
									</button>
								</li>
								<!-- 실섭 적용시 https://www.winenara.com 제거 -->
							</ul>
						</div>
					</div>
				</li>
			</ul>
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
			<!-- <button type="button" class="btn_txt" id="more_btn" onclick="getList('more')"><span>더보기</span></button> -->
			<input type="hidden" id="tasting_page" value="1">
		</div>
	</div>
</div>
</div>
<!-- page_script -->
<script>
$(".note_tab .note_info").mouseover(function(){
	$(".note_info_con").css("display", "block");
});
$(".note_tab .note_info").mouseout(function(){
	$(".note_info_con").css("display", "none");
});
var page;
//var reload_page ="";
getList('init');
//스크롤 바닥 감지
window.addEventListener('scroll', moreShowList);
window.addEventListener('scroll', lastpage);
var scrollVal = true;	//스크롤 무한로딩으로 추가
function moreShowList() {
	if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.7 )) {
		if( scrollVal === true) {
			// console.log("스크롤 실행");
			getList('more');
		}
	}
}
function lastpage(){
	if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 1.5 )) {
		console.log("여기인가??");
		// alert("마지막 페이지입니다.");
		window.removeEventListener('scroll', lastpage);
	}
}
// function getList(mode){
// 	scrollVal=false;
// 	if( mode=="init"){
// 		page = 1;
// 		$('#tasting_page').val(1);
// 	}else{
// 		//page += 1;
// 		page = parseInt($('#tasting_page').val())+1;
// 	}
//     $.ajax({
//         type: "get",
//         url : "/shop/mypage/action/tasting_view_ajax",
//         data: {'mode' : mode, 'page' : page, 'cust_seq' : 115245 },
//         success : function (res) {
// 		//	reload_page += res;
// 			if($.trim(res) == ""){
// 				//alert('마지막 페이지입니다.');
// 				window.removeEventListener('scroll', moreShowList);
// 				scrollVal=false;
// 				return;
// 			}else{
// 				if(mode == 'init'){
// 					$(".tasting_review_lists").empty();
// 				}else{
// 					scrollVal=true;
// 					$('#tasting_page').val(parseInt($('#tasting_page').val())+1);
// 				}
// 				$(".tasting_review_lists").append(res);
// 				$(".tasting_review_lists>li").each(function(index, item){
// 					var rvImgLi = $(this).find("li").length;
// 					if(rvImgLi >= 5){
// 						$(this).find(".img").children().addClass("more");
// 					}
// 				});
// 			}
//         },
//         error: function (res) {
//             alert("error");
//         }
//     });
// }
function del(seq){
	if(!confirm('정말 삭제하시겠습니까?')){
		return false;
	}else{
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url:"/shop/mypage/action/proc",
			data : {
				mode				: "D",
				use_review_seq	: seq
			},
			success : function(result){
				location.reload();
			},
			error : function(a, b, c){
				alert('삭제 중 오류가 발생했습니다.');
			}
		});
	}
}
function followEvent(follow_id, follow_target_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "F",
			'follow_id'			: follow_id,
			follow_target_seq	: follow_target_seq
		},
		success : function(result){
			location.reload();
		},
		error : function(a, b, c){
			alert('삭제 중 오류가 발생했습니다.');
		}
	});
}
function like(use_review_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "L",
			use_review_seq		: use_review_seq
		},
		success : function(result){
			getList('init');
			//location.reload();
		},
		error : function(a, b, c){
			alert('오류가 발생했습니다.');
		}
	});
}
function unlike(use_review_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "UL",
			use_review_seq		: use_review_seq
		},
		success : function(result){
			getList('init');
			//location.reload();
		},
		error : function(a, b, c){
			alert('오류가 발생했습니다.');
		}
	});
}
function publicEvent(use_review_seq){
	var product_public_yn = $("#btn_switch01_"+use_review_seq).val();
	if( product_public_yn === 'Y'){
		product_public_yn = 'N';
	}else{
		product_public_yn ='Y';
	}
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url:"/shop/mypage/action/proc",
		data : {
			'mode'				: "PY",
			use_review_seq		: use_review_seq,
			'product_public_yn'    : product_public_yn
		},
		success : function(result){
			getList('init');
			//location.reload();
		},
		error : function(a, b, c){
			alert('오류가 발생했습니다.');
		}
	});
}
// 리뷰 이미지 레이어 오픈 (유형 퍼블 추가)
function reviewImgLayer(use_review_seq){
	Csrf.Set(_CSRF_NAME_); //토큰 초기화
	// $.ajax({
    //     type: "post",
    //     url : "/shop/product/review_view_ajax",
    //     data: {use_review_seq:use_review_seq},
    //     success : function (res) {
	// 		if(res != ""){
	// 			$("#review_div").empty();
	// 			$("#review_div").append(res);
	// 			commonUI.layer.open('review_img_layer');
	// 			 //리뷰 이미지 레이어 슬라이드
    //             $(".review_img_layer .rv_slide").slick({
    //                 arrows: true,
    //                 dots: true,
    //                 infinite: true,
    //             });
	// 		}
    //     },
    //     error: function (res) {
    //         alert("error");
    //     }
    // });

	commonUI.layer.open('review_img_layer');
		//리뷰 이미지 레이어 슬라이드
	$(".review_img_layer .rv_slide").slick({
		arrows: true,
		dots: true,
		infinite: true,
	});
}
//동영상 재생버튼
$(".btn_play").on("click", function(){
	document.getElementById("video1").play();
	$(this).remove();
});
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
	var page = 'tasting_view';
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