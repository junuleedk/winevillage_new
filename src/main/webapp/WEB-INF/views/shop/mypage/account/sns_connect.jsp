<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ SNS 연동관리</title>
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
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>SNS 연동관리</span></button>
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
                        <div class="num_box"><span>0</span></div>
                    </a>
                </li> -->
				<li>
                    <a href="/shop/mypage/note/coupon_lists">
                        <p class="tit">나의 쿠폰</p>
                        <div class="num_box"> <span>1</span></div>
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
                        <div class="num_box"><span>0</span></div>
                    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- <div class="mb_hidden">
        <div class="my_lnb_info">
            <div class="my">
                <img src="../../../asset/images/shop/default/ico_user_vip.png" alt="">
                <div class="txt">
                    <p><strong class="name">윤주상</strong>님 안녕하세요!</p>
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
                    <li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
                </ul>
			</li>
			<li>
			<a href="#none">개인정보</a>
                <ul class="depth_02">
                    <li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
                    <li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
                    <li class="on"><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
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
<div class="content mypage accont sns_connect_page">
	<div class="inner">
		<h2 class="page_tit">SNS 연동관리</h2>
		<div class="sns_connect">
			<ul class="list">
				<li>
                    <div class="icon">
                        <img src="../../../asset/images/shop/default/ico_naver.png" alt="">
                        <p class="tit">네이버</p>
                    </div>
                    <div class="data">
                        <p>연결정보 없음</p>
                        <p></p>
                    </div>
                    <div class="connection">
                        <button type="button" class="btn" onclick="sns_connect('N')">연동하기</button>
                    </div>
				</li>
				<li>
                    <div class="icon">
                        <img src="../../../asset/images/shop/default/ico_kakao.png" alt="">
                        <p class="tit">카카오톡</p>
                    </div>
                    <div class="data">
                        <p>연결정보 없음</p>
                        <p></p>
                    </div>
                    <div class="connection">
                        <button type="button" class="btn" onclick="sns_connect('K')">연동하기</button>
                    </div>
				</li>
				<li>
                    <div class="icon">
                        <img src="../../../asset/images/shop/default/ico_face.png" alt="">
                        <p class="tit">페이스북</p>
                    </div>
                    <div class="data on">
                        <p>연결정보 없음</p>
                        <p></p>
                    </div>
                    <div class="connection">
                        <button type="button" class="btn" onclick="sns_connect('F')">연동하기</button>
                    </div>
				</li>
				<li>
                    <div class="icon">
                        <img src="../../../asset/images/shop/default/ico_google.png" alt="">
                        <p class="tit">구글</p>
                    </div>
                    <div class="data">
                        <p>2024-07-02 11:35:43 연동</p>
                        <p>gogek1234@gmail.com</p>
                    </div>
                    <div class="connection">
                        <button type="button" class="btn on" onclick="sns_deconnect('G');">연동취소</button>
                    </div>
				</li>
				<!-- <li>
                        <div class="icon">
                            <img src="../../../asset/images/shop/default/ico_apple.png" alt="">
                            <p class="tit">애플</p>                            
                        </div>
                        <div class="data">
                            <p>연결정보 없음</p>
                            <p></p>
                        </div>
                        <div class="connection">
                            <button type="button" class="btn" onclick="sns_connect('A')">연동하기</button>
                        </div>
                    </li>
                 -->
			</ul>
		</div>
	</div>
</div>
</div>
<!-- page_script -->
<script>
    function sns_connect(e){
        Cookie.Set('con_gb', e, 1, true);
		location.href = '/shop/mypage/account/sns_connect_ajax';
    }
    function sns_deconnect(e){
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            url : '/shop/mypage/account/deconnect_ajax',
            data : {'sns':e},
            type : 'POST',
            success:function(res){
                if(res == 'Y'){
                    alert('연동이 해제되었습니다.');
                    location.reload();
                }else{
                    alert('소셜 연동 해제 중 오류가 발생했습니다.');
                    location.reload();
                }
            },error:function(res){
                console.log(res);
            }
        })
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
	var page = 'sns_connect';
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