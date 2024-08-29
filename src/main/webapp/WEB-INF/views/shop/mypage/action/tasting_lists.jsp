<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
<sec:authorize access="!isAuthenticated()">
<%@ include file="../../common/header.jsp" %>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<%@ include file="../../common/header_loggedin.jsp" %>
</sec:authorize>
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
<div class="content mypage action tasting tasting_lists_page">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">나의 리뷰관리</h2>
			</div>
		</div>
		<div class="lnb_wrap">
			<ul class="menu tab3">
				<li class="on"><a href="/shop/mypage/action/tasting_lists"><span>리뷰 작성 <em>1</em></span></a></li>
				<li><a href="/shop/mypage/action/tasting_view"><span>나의 리뷰 보기 </span></a></li>
				<li><a href="/shop/mypage/action/tasting_gallery_view"><span>나의 갤러리</span></a></li>
			</ul>
		</div>
		<div class="tasting_wrap">
			<!-- <div class="btn switch">
                    <div class="btn_switch_module js_switch css_switch">
                        <input type="checkbox" id="btn_switch02" class="btn_switch_check"  onchange="Changelist()">
                        <div class="btn_switch_area">
                            <div class="btn_switch">
                                <span class="txt left">ON</span>
                                <label class="bar" for="btn_switch02">&nbsp;</label>
                                <span class="txt right">OFF</span>
                            </div>
                            <span class="switch_tit">숨긴 목록 보이기</span>
                        </div>
                    </div>
                </div> -->
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
				<button type="button" class="btn_txt btn_black" onclick="getList('fil');"><span>검색</span></button>
			</div>
			<div class="o_lists">
				<ul class="tasting_lists" id="tasting_ul">
					<li>
						<div class="top_date">
							2024-05-24 <em>202405241716330QWZ</em>
							<!-- <span class="txt store">시청점</span> -->
						</div>
						<div class="o_wrap">
							<div class="box ip_img" style="background:#E0EBF8">
								<a href="/shop/product/product_view?product_cd=04E697">
									<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../../uploads/product/200/f9e06aa31d359c6a879c7720346864f0.png" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../../uploads/product/200/f9e06aa31d359c6a879c7720346864f0.png" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../../uploads/product/200/f9e06aa31d359c6a879c7720346864f0.png" alt="" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="box con">
								<div class="more_info">
									<p class="store">서래마을점</p>
									<p class="prd_name">
										<a href="/shop/product/product_view?product_cd=04E697">에라주리즈 맥스 소비뇽블랑</a>
									</p>
									<span class="label" style="background:#F6EC9C">화이트</span><span class="label" style="background:#F6EC9C">칠레</span><span class="label" style="background:#F6EC9C">소비뇽 블랑</span>
									<!-- <span class="icon box">2015년</span> -->
									<!-- <span class="icon box">750ml</span> -->
									<div class="price">
										<p><ins>21,900원</ins></p>
										<p class="amount">1개</p>
									</div>
								</div>
							</div>
							<!-- <div class="info">
								<div class="tit">
									<div class="label"><span class="cir red">스파클링</span><span class="cir usa">프랑스</span><span class="box txt">2015년</span><span class="box txt">750ml</span></div>
									<strong><a href="/shop/product/product_view?product_cd=02B044">뵈브 드 베르네 브뤼 200ml</a></strong>
								</div>
							</div> -->
							<div class="box review">
								<i>와인 평가</i>
								<div class="star_area">
									<span class="full" style="width:80%"></span>
									<span class="empty"></span>
								</div>
								<button type="button" class="q" onclick="$(this).toggleClass('on');">
									<span style="display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:1;overflow:hidden;">풍부한 산미로 신선함이 느껴지며 균형잡힌 블렌딩으로 크리미한 맛을 느낄 수 있습니다.</span>
								</button>
								<div class="ntc_txt">작성하신 와인 평가에 대한 프리뷰입니다.</div>
							</div>
							<div class="box btn">
								<div class="btn_area col3">
									<button type="button" class="btn_txt wish_btn wish_02B044 " id="wish_02B044" onclick="product.likeProduct('02B044');"><span>찜하기</span></button>
									<button type="button" class="btn_txt btn_cart" onclick="location.href='/shop/product/product_view?product_cd=02B044'"><span>장바구니 담기</span></button>
									<button type="button" class="btn_txt btn_dgray" style="cursor:default;"><span>리뷰작성</span></button>
								</div>
							</div>
						</div>
						<div class="o_wrap">
							<div class="box ip_img" style="background:#E0EBF8">
								<a href="/shop/product/product_view?product_cd=03R278">
									<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../../uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../../uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../../uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" alt="" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="box con">
								<div class="more_info">
									<p class="store">서래마을점</p>
									<p class="prd_name">
										<a href="/shop/product/product_view?product_cd=03R278">페이덜트 고잉 포 브로크</a>
									</p>
									<span class="label" style="background:#E0D8EA">레드</span><span class="label" style="background:#E0D8EA">미국</span><span class="label" style="background:#E0D8EA">진판델</span>
									<!-- <span class="icon box">2015년</span> -->
									<!-- <span class="icon box">750ml</span> -->
									<div class="price">
										<p><ins>39,900원</ins></p>
										<p class="amount">1개</p>
									</div>
								</div>
							</div>
							<!-- <div class="info">
								<div class="tit">
									<div class="label"><span class="cir red">스파클링</span><span class="cir usa">프랑스</span><span class="box txt">2015년</span><span class="box txt">750ml</span></div>
									<strong><a href="/shop/product/product_view?product_cd=02B044">뵈브 드 베르네 브뤼 200ml</a></strong>
								</div>
							</div> -->
							<div class="box review">
								<i>와인 평가</i>
								<div class="star_area">
									<span class="full" style="width:80%"></span>
									<span class="empty"></span>
								</div>
								<button type="button" class="q" onclick="$(this).toggleClass('on');">
									<span style="display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:1;overflow:hidden;">블랙베리, 구운 자두, 크랜베리, 블루베리, 다크 쵸콜렛 향이 이어집니다. 입안에서의 첫 인상은 신선하며, 블랙체리와 산딸기 맛이 올라옵니다.</span>
								</button>
								<div class="ntc_txt">작성하신 와인 평가에 대한 프리뷰입니다.</div>
							</div>
							<div class="box btn">
								<div class="btn_area col3">
									<button type="button" class="btn_txt wish_btn wish_02B044 " id="wish_02B044" onclick="product.likeProduct('02B044');"><span>찜하기</span></button>
									<button type="button" class="btn_txt btn_cart" onclick="location.href='/shop/product/product_view?product_cd=02B044'"><span>장바구니 담기</span></button>
									<button type="button" class="btn_txt btn_dgray" style="cursor:default;"><span>리뷰작성</span></button>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="top_date">
							2024-05-23 <em>202405231716140GPA</em>
							<!-- <span class="txt store">시청점</span> -->
						</div>
						<div class="o_wrap">
							<div class="box ip_img" style="background:#E0EBF8">
								<a href="/shop/product/product_view?product_cd=02B044">
									<picture>
										<!--[if IE 9]><video style="display: none;"><![endif]-->
										<source srcset="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(min-width:768px)">
										<!-- pc이미지 -->
										<source srcset="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(max-width:767px)">
										<!-- mb이미지 -->
										<!--[if IE 9]></video><![endif]-->
										<img src="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" alt="" alt="">
										<!-- pc이미지 -->
									</picture>
								</a>
							</div>
							<div class="box con">
								<div class="more_info">
									<p class="store">시청점</p>
									<p class="prd_name">
										<a href="/shop/product/product_view?product_cd=02B044">뵈브 드 베르네 브뤼 200ml</a>
									</p>
									<!--  
									<div class="icon type"><span class="" style="background:#;">&nbsp;</span>스파클링</div>                                            <div class="icon country"><span><img src="../../../asset/images/shop/product/iocn/ico_g501.png" alt=""></span>프랑스</div>
									<span class="icon box">프랑스_기타</span>
									-->
									<span class="label" style="background:#E0EBF8">스파클링</span><span class="label" style="background:#E0EBF8">프랑스</span>
									<!-- <span class="icon box">2015년</span> -->
									<!-- <span class="icon box">750ml</span>  -->
									<div class="price">
										<p><ins>8,500원</ins></p>
										<p class="amount">1개</p>
									</div>
								</div>
							</div>
							<!-- <div class="info">
								<div class="tit">
									<div class="label"><span class="cir red">스파클링</span><span class="cir usa">프랑스</span><span class="box txt">2015년</span><span class="box txt">750ml</span></div>
									<strong><a href="/shop/product/product_view?product_cd=02B044">뵈브 드 베르네 브뤼 200ml</a></strong>
								</div>
							</div> -->
							<!-- <div class="box review">
								<i>와인 평가</i>
								<div class="star_area">
									<span class="full" style="width:80%"></span>
									<span class="empty"></span>
								</div>
								<button type="button" class="q" onclick="$(this).toggleClass('on');">왜 해야하나?</button>
								<div class="ntc_txt">
									준비중입니다.
								</div>
							</div> -->
							<!-- <div class="del_con">
								<div class="date">
									<span>9/20</span>
									<span>9/21</span>
									<span>9/22</span>
									<span>9/25</span>
								</div>
								<div class="line">
									<p class="line_red" value="66.667"></p>
								</div>
								<div class="state">
									<span>주문</span>
									<span>이동중</span>
									<span>도착</span>
									<span>픽업</span>
								</div>
							</div> -->
							<div class="box btn">
								<!-- <div class="btn_area">
									<button type="button" class="btn_txt btn_dgray" onclick="location.href='/shop/mypage/action/tasting_write?ocode=202405231716140GPA&product_cd=02B044';"><span>시음노트 작성</span></button>
									<button type="button" class="btn_txt btn_black" onclick="hiddenNote('202405231716140GPA','Y','02B044')"><span>숨기기</span></button>
									<button type="button" class="btn_txt btn_cart" onclick="location.href='/shop/product/product_view?product_cd=02B044'"><span>장바구니 담기</span></button>
								</div> -->
								<div class="btn_area col3">
									<button type="button" class="btn_txt wish_btn wish_02B044 " id="wish_02B044" onclick="product.likeProduct('02B044');"><span>찜하기</span></button>
									<button type="button" class="btn_txt btn_cart" onclick="location.href='/shop/product/product_view?product_cd=02B044'"><span>장바구니 담기</span></button>
									<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/mypage/action/tasting_write?ocode=202405231716140GPA&product_cd=02B044';"><span>리뷰작성</span></button>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
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
    $(".note_tab .note_info").mouseover(function(){
        $(".note_info_con").css("display", "block");
    });
    $(".note_tab .note_info").mouseout(function(){
        $(".note_info_con").css("display", "none");
    });
    //프로그레스 바
    $(".tasting_lists .line .line_red").each(function(index, item){
        var fillVal = $(this).attr("value");
        if(fillVal == "1"){
            $(this).css({"width":"10px"})
        }else{
            var fill = fillVal + "%";
                // console.log(fill);
            $(this).stop().animate({
                width: fill
            }, 1000);
        }
    });
	function hiddenNote(ocode, review_hidden_yn, product_cd){
		if(!confirm('해당 내용의 상태를 변경 하시겠습니까?')){
			return false;
		}
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url:"/shop/mypage/action/proc",
			data : {
				'mode'				: "H",
				'ocode'				: ocode,
				'product_cd'		: product_cd,
				'review_hidden_yn'		: review_hidden_yn
			},
			success : function(result){
				location.reload();
			},
			error : function(a, b, c){
				alert('삭제 중 오류가 발생했습니다.');
			}
		});
	}
	function Changelist(){
		if( $('#btn_switch02').is(':checked') ){
			location.href='/shop/mypage/action/tasting_lists?hidden=Y';
		}else{
			location.href='/shop/mypage/action/tasting_lists';
		}
	}
	 /**
     * 상품 리스트 불러오기 (더보기)
     * @param  {[type]} mode [description]
     * @return {[type]}      [description]
     */
    function getList(mode){
    	$("#sh_s_date").val($("#date_s").val());
    	$("#sh_e_date").val($("#date_e").val());
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/mypage/action/tasting_lists_ajax",
            data: $("#ListForm").serialize(),
            success : function (res) {
                if($.trim(res) != ""){
                    if(mode=="add"){
                        $("#tasting_ul").append(res);
                    } else if(mode == "fil"){
                        $("#tasting_ul").html(res);
                    } else {
                        $("#tasting_ul").html(res);
                    }
                }
            },
            error: function (res) {
                alert("리스트 조회시 에러가 발생했습니다.");
                alert(res.responseText);
            }
        });
    }
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