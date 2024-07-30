<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 위시리스트</title>
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
<section id="contents" style="margin-top: 188px;">
	<div class="lnb mypage_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>위시리스트</span></button>
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
		<div class="common_lnb">
			<div class="my">
				<div class="txt grade_area">
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
			<div class="my_info my_class_info">
				<ul class="">
					<li>
						<a href="/shop/mypage/shopping/order_lists">
						<p class="tit">주문내역</p>
						<div class="num_box"><span>0</span></div>
						</a>
					</li>
					<!-- <li>
						<a href="/shop/mypage/reserve/reserve_list">
							<p class="tit">예약내역</p>
							<div class="num_box">
								<span>0</span>
							</div>
						</a>
					</li> -->
					<li>
						<a href="/shop/mypage/note/coupon_lists">
							<p class="tit">나의 쿠폰</p>
							<div class="num_box"><span>1</span></div>
						</a>
					</li>
					<li class="on">
						<a href="/shop/mypage/note/mileage_lists">
							<p class="tit">나의 마일리지</p>
							<div class="num_box"><span>0</span></div>
						</a>
					</li>
					<li>
						<a href="/shop/mypage/note/giftcard_lists">
							<p class="tit">나의 기프트카드</p>
							<div class="num_box">span>0</span></div>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- <div class="mb_hidden">
			<div class="my_lnb_info">
				<div class="my">
					<img src="/asset/images/shop/default/ico_user_vip.png" alt="">
					<div class="txt">
						<p><strong class="name">윤영길</strong>님 안녕하세요!</p>
						<button type="button" class="btn_txt btn_grade" onclick="commonUI.layer.open('grade_layer')">등급현황</button>
					</div>
				</div>
				<div class="my_info">
					<a href="/shop/mypage/shopping/order_lists"><span class="new">N</span><p class="info order_info"><em>주문내역</em>0</p></a>
					<a href="/shop/mypage/note/coupon_lists"><span class="new">N</span><p class="info coupon_info"><em>쿠폰</em>1</p></a>
					<a href="/shop/mypage/note/mileage_lists"><span class="new">N</span><p class="info cash_info"><em>마일리지</em>0</p></a>
					<a href="/shop/mypage/note/giftcard_lists"><span class="new">N</span><p class="info gift_info"><em>기프트카드</em>10,000</p></a>
				</div>
			</div>
		</div> -->
		<div class="mypage_link mb_hidden">
			<ul class="depth_01">
				<li>
					<a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
					<ul class="depth_02">
						<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
						<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
						<li class="on"><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
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
						<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
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
	<div class="content mypage note wish_lists_page">
		<div class="inner">
			<div class="top_info">
				<div class="page_tit">
					<h2 class="tit">위시리스트</h2>
				</div>
			</div>
			<div class="del_area">
				<button type="button" class="btn_select">선택삭제</button>
				<button type="button" class="btn_all">전체삭제</button>
			</div>
			<div class="prd_list_area">
				<div class="search_result">
					<p class="result">
						총<span>5</span>개의 상품
					</p>
				</div>
				<ul class="n_prd_list" id="wish_ul">
					<li>
					<div class="item">
						<div class="checkbox type2">
							<input type="checkbox" name="wish[]" id="wish_item04D833" value="04D833">
							<label for="wish_item04D833">&nbsp;</label>
						</div>
						<div class="main_img" style="background:#E0D8EA">
							<a href="/shop/product/product_view?product_cd=04D833" class="prd_img table_box">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../../uploads/product/200/185a389af1593411251877adba4a60cd.png" media="(min-width:1024px)">
									<!-- pc이미지 -->
									<source srcset="../../../uploads/product/200/185a389af1593411251877adba4a60cd.png" media="(max-width:1023px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../../uploads/product/200/185a389af1593411251877adba4a60cd.png" loading="lazy" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
							<div class="btn">
								<button type="button" class="wish wish_04D833 on" id="wish_04D833" onclick="product.likeProduct('04D833');"><span>찜하기</span></button>
							</div>
							<p class="vivino">VIVINO<em>3.5</em></p>
							<div class="label_wrap"></div>
						</div>
						<div class="info">
							<div class="more_info">
								<p class="prd_name">
									<a href="/shop/product/product_view?product_cd=04D833"><span>요하닝거 레드</span><span class="en">JOHANNINGER RED</span></a>
								</p>
								<p class="prd_info">와인이 춤출때 라는 뜻을 가진 경쾌하고 캐주얼한 와인</p>
							</div>
							<div class="cate_label">
								<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">독일</span><span style="background:#E0D8EA">메를로</span>
							</div>
							<div class="price_area">
								<p class="price">
									<!-- 할인가 -->
									<em class="discount">37%</em>
									<del>30,000원</del>
									<ins>18,900원</ins>
								</p>
							</div>
						</div>
					</div>
					</li>
					<li>
					<div class="item">
						<div class="checkbox type2">
							<input type="checkbox" name="wish[]" id="wish_item03R509" value="03R509">
							<label for="wish_item03R509">&nbsp;</label>
						</div>
						<div class="main_img" style="background:#E0D8EA">
							<a href="/shop/product/product_view?product_cd=03R509" class="prd_img table_box">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../../uploads/product/200/2a7c15c50d5644852a617e9ce969223b.png" media="(min-width:1024px)">
									<!-- pc이미지 -->
									<source srcset="../../../uploads/product/200/2a7c15c50d5644852a617e9ce969223b.png" media="(max-width:1023px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../../uploads/product/200/2a7c15c50d5644852a617e9ce969223b.png" loading="lazy" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
							<div class="btn">
								<button type="button" class="wish wish_03R509 on" id="wish_03R509" onclick="product.likeProduct('03R509');"><span>찜하기</span></button>
							</div>
							<p class="vivino">VIVINO<em>3.9</em></p>
							<div class="label_wrap"></div>
						</div>
						<div class="info">
							<div class="more_info">
								<p class="prd_name">
									<a href="/shop/product/product_view?product_cd=03R509"><span>리치텔리 쿵푸 말벡</span><span class="en">RICCITELLI KUNG FU MALBEC</span></a>
								</p>
								<p class="prd_info">화려한 이소룡 레이블의 비건 내추럴 와인</p>
							</div>
							<div class="cate_label">
								<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">아르헨티나</span><span style="background:#E0D8EA">말벡</span>
							</div>
							<div class="price_area">
								<p class="price">
									<!-- 할인가 -->
									<em class="discount">22%</em>
									<del>50,000원</del>
									<ins>39,000원</ins>
								</p>
							</div>
						</div>
					</div>
					</li>
					<li>
					<div class="item">
						<div class="checkbox type2">
							<input type="checkbox" name="wish[]" id="wish_item29E370" value="29E370">
							<label for="wish_item29E370">&nbsp;</label>
						</div>
						<div class="main_img" style="background:#E0EBF8">
							<a href="/shop/product/product_view?product_cd=29E370" class="prd_img table_box">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../../uploads/product/200/b6b504f54c562f8cfe6a60d064d494eb.png" media="(min-width:1024px)">
									<!-- pc이미지 -->
									<source srcset="../../../uploads/product/200/b6b504f54c562f8cfe6a60d064d494eb.png" media="(max-width:1023px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../../uploads/product/200/b6b504f54c562f8cfe6a60d064d494eb.png" loading="lazy" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
							<div class="btn">
								<button type="button" class="wish wish_29E370 on" id="wish_29E370" onclick="product.likeProduct('29E370');"><span>찜하기</span></button>
							</div>
							<div class="label_wrap"></div>
						</div>
						<div class="info">
							<div class="more_info">
								<p class="prd_name">
									<a href="/shop/product/product_view?product_cd=29E370"><span>빌라엠 비앙코 2023 썸머패키지 </span><span class="en">VillaM Bianco 2023 Summer Package</span></a>
								</p>
							</div>
							<div class="cate_label">
								<span style="background:#E0EBF8">스파클링</span><span style="background:#E0EBF8">이탈리아</span><span style="background:#E0EBF8">모스카토</span>
							</div>
							<div class="price_area">
								<p class="price">
									<!-- 할인가 -->
									<em class="discount">34%</em>
									<del>36,000원</del>
									<ins>23,900원</ins>
								</p>
							</div>
						</div>
					</div>
					</li>
					<li>
					<div class="item">
						<div class="checkbox type2">
							<input type="checkbox" name="wish[]" id="wish_item04F033" value="04F033">
							<label for="wish_item04F033">&nbsp;</label>
						</div>
						<div class="main_img" style="background:#F6EC9C">
							<a href="/shop/product/product_view?product_cd=04F033" class="prd_img table_box">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../../uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" media="(min-width:1024px)">
									<!-- pc이미지 -->
									<source srcset="../../../uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" media="(max-width:1023px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../../uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" loading="lazy" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
							<div class="btn">
								<button type="button" class="wish wish_04F033 on" id="wish_04F033" onclick="product.likeProduct('04F033');"><span>찜하기</span></button>
							</div>
							<div class="label_wrap"></div>
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
						<div class="checkbox type2">
							<input type="checkbox" name="wish[]" id="wish_item03T999" value="03T999">
							<label for="wish_item03T999">&nbsp;</label>
						</div>
						<div class="main_img" style="background:#E0D8EA">
							<a href="/shop/product/product_view?product_cd=03T999" class="prd_img table_box">
								<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" media="(min-width:1024px)">
									<!-- pc이미지 -->
									<source srcset="../../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" media="(max-width:1023px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="../../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" loading="lazy" alt="">
									<!-- pc이미지 -->
								</picture>
							</a>
							<div class="btn">
								<button type="button" class="wish wish_03T999 on" id="wish_03T999" onclick="product.likeProduct('03T999');"><span>찜하기</span></button>
							</div>
							<div class="label_wrap"></div>
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
				</ul>
				<!-- <div class="btn_area">
					<button type="button" class="btn_txt" onClick="getList('add');" id="showMoreList">더보기</button>
				</div> -->
			</div>
		</div>
	</div>
	<form action="https://www.winenara.com/shop/mypage/note/wish_lists" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
		<input type="hidden" name="witplus_csrf_token" value="55df2b4f44b0f79b916accb89ceb44dc">
		<input type="hidden" name="page" id="page" value="2">
	</form>
	<form action="https://www.winenara.com/shop/mypage/note/wish_lists" id="DelWishForm" name="DelWishForm" method="post" accept-charset="utf-8">
		<input type="hidden" name="witplus_csrf_token" value="55df2b4f44b0f79b916accb89ceb44dc">
		<input type="hidden" name="product_cd" value="">
	</form>
	<!-- page_script -->
	<link rel="stylesheet" type="text/css" href="/asset/css/shop/jqcloud.min.css">
	<link rel="stylesheet" type="text/css" href="/asset/css/shop/slick.css">
	<script type="text/javascript" src="/asset/js/jqcloud.min.js"></script>
	<script type="text/javascript" src="/asset/js/slick.min.js"></script>
	<!-- http://mistic100.github.io/jQCloud/demo.html -->
	<script>
		$('.main_img .slider').slick({
			dots: true,
			arrows: true
		});
		//스크롤 바닥 감지
		window.addEventListener('scroll', moreShowList);
		function moreShowList() {
		// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
			if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
				getList('add');
			}
		}
	 // 슬라이드시 비비노 키워드 호출
		$('.main_img .slider').on("afterChange", function(){
			var product_cd = $(this).data('cd');
			 var words = [];	// 키워드 담을 배열
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
				type: "POST",
				url : "/shop/product/vivino_keyword_ajax",
				data: {product_cd:product_cd},
				success : function (res) {
					if (typeof(res)=="string"){ res = JSON.parse(res); }
					if(res.status == "ok"){
						var vivino = res.list;
						for(var i = 0;i < vivino.length;i++){
	//                 		console.log(vivino[i]);	
							var tempObj = {};
							tempObj['text'] = vivino[i]['keyword_kr'];
							tempObj['weight'] = vivino[i]['score'];
							tempObj['color'] = vivino[i]['keyword_rgb'];
							words.push(tempObj);
						}
						var some_words_with_same_weight = $(".cloud_"+product_cd).jQCloud(words, {
							width: 334,
							height: 135
						});
						return false;
					}else{
						console.log("no_list");
						return false;
					}
				},
				error: function (res) {
					alert("상품 리스트 조회시 에러가 발생했습니다.");
					alert(res.responseText);
				}
			});
		});
	/**************************************************/
	//선택 삭제
	function del_btn(product_cd){
		var frm = document.DelWishForm;
		frm.product_cd.value = product_cd;
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url: "/shop/mypage/note/wish_proc_ajax?ajax_mode=DEL",
			data: $("#DelWishForm").serialize(),
			success: function(res) {
				location.reload();
			},
			error: function(res) {
				alert(res.responseText);
			}
		});  
	};
	/**
	 * 상품 리스트 불러오기 (더보기)
	 * @param  {[type]} mode [description]
	 * @return {[type]}      [description]
	 */
	function getList(mode){
		var page = $("#page").val();
		if( mode=="add"){
			page = parseInt(page)+1;
		}
		$("#page").val(page);
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url : "/shop/mypage/note/wish_lists_ajax",
			data: $("#ListForm").serialize(),
			success : function (res) {
				if($.trim(res) == ""){
					// alert("마지막 페이지입니다.");
					// $('#showMoreList').css('display','none');
					window.removeEventListener('scroll', moreShowList);
				} else {
					if(mode == 'add'){
						$("#wish_ul").append(res);
					} else if(mode == 'fil'){
						$("#wish_ul").html(res);
					}
					$('.main_img .slider').not('.slick-initialized').slick({
						dots: true,
						arrows: true
					});
				}
				return;
			},
			error: function (res) {
				alert(res.responseText);
			}
		});
	}
	// 선택 삭제
	$(".btn_select").on("click", function(){
		multiDel();
	});
	//전체 삭제
	$(".btn_all").on("click", function(){
		if($("input[name='wish[]']").length > 0){
			$("input[name='wish[]']").each(function(idx){
					this.checked=true;
			});
			multiDel();
		}else{
			alert('상품이 존재하지 않습니다.');
		}
	});
	function multiDel(){
		var frm = document.DelWishForm;
		var wish_product = [];
		if($("input[name='wish[]']:checked").length > 0){
			$("input[name='wish[]']:checked").each(function(idx){
					wish_product.push($(this).val());
			});
			frm.product_cd.value = wish_product.join("', '");
			if(confirm("선택한 상품을 삭제하시겠습니까?")){
				Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type: "POST",
					url: "/shop/mypage/note/wish_proc_ajax?ajax_mode=DEL",
					data: $("#DelWishForm").serialize(),
					success: function(res) {
						location.reload();
					},
					error: function(res) {
						alert(res.responseText);
					}
				});  
			}
		}else{
			alert("삭제할 상품을 선택해 주세요.");
			return false;
		}
	}
	</script>
	<!--// page_script -->
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