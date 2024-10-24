<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 마이페이지</title>
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
<section id="contents" style="margin-top: 188px;">
    <div class="lnb mypage_lnb lnb_wrap">
        <div class="pc_hidden">
            <a href="javascript:history.go(-1);" class="prev">이전</a>
            <div class="select_brand js_select" id="select_brand">
                <button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>마이페이지</span></button>
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
                    <li><a href="<c:url value='/shop/main.do' />" onclick="logout();" id="logoutBtn">로그아웃</a></li>
                </ul>
            </div>
        </div>
        <%@ include file="common/mypage_link.jsp" %>
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
    <div class="content mypage shopping mypage_page">
        <div class="inner">
            <div class="mypage_top">
                <div class="grade_area">
                    <div class="grade_info g100">
                        <!-- 등급을 grade_info 옆에 붙여주세요 -->
                        <strong class="user_grade">실버</strong>
                        <!-- <p>윤영길님의 키워드</p>
                            <span>#레드저격 #높은산미 #낮은당도</span> -->
                    </div>
                    <div class="user_info">
                        <div class="name">
                            <strong><b>고객</b>님 </strong>
                            <span>gogek1234</span>
                        </div>
                        <div class="grade">
                            <p>다음 달 예상 등급</p>
                            <span class="silver">실버</span>
                            <button class="btn_txt" onclick="commonUI.layer.open('grade_layer');">등급 혜택보기</button>
                        </div>
                        <span>누적 구매금액 <b>0원</b></span>
                    </div>
                    <button type="button" class="wine_profile" onclick="javascript:openProfile();"><em>나의 테이스트 프로파일 +</em></button>
                </div>
                <div class="mypage_info">
                    <ul>
                        <li>
                        	<a href="/shop/mypage/note/coupon_lists">
		                        <p>쿠폰</p>
		                        <span>1</span>
	                        </a>
                        </li>
                        <li>
	                        <a href="/shop/mypage/note/mileage_lists">
		                        <p>마일리지</p>
		                        <span>0</span>
	                        </a>
                        </li>
                        <li>
	                        <a href="/shop/mypage/note/giftcard_lists">
		                        <p>기프트카드</p>
		                        <span>0</span>
	                        </a>
                        </li>
                    </ul>
                    <ul>
                        <li>
	                        <a href="/shop/mypage/recommand/recommand_expert_lists">
		                        <p>와인추천신청</p>
		                        <span>0</span>
	                        </a>
                        </li>
                        <li>
	                        <a href="/shop/mypage/action/tasting_lists">
		                        <p>시음노트</p>
		                        <span>0</span>
	                        </a>
                        </li>
                        <li>
	                        <a href="/shop/mypage/note/wish_lists">
		                        <p>찜한상품</p>
		                        <span class="">0</span>
	                        </a>
                        </li>
                    </ul>
                </div>
            </div>
            <ul class="slide_area slick-initialized slick-slider">
                <div aria-live="polite" class="slick-list draggable">
                    <div class="slick-track" role="listbox" style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);"></div>
                </div>
            </ul>
            <div class="newest_order">
				<p class="tit">최근 주문 상품</p>
				<ul>
					<li>
						<div class="img" style="background:#E0EBF8">
							<picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(min-width:768px)">
								<!-- pc이미지 -->
								<source srcset="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(max-width:767px)">
								<!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" alt="wine">
								<!-- pc이미지 -->
							</picture>
						</div>
						<div class="wine_info">
							<span class="store">시청점</span>
							<p class="state pickup">픽업대기/배송중</p>
							<!-- <p class="state pickup">픽업완료</p> -->
							<strong></strong>뵈브 드 베르네 브뤼 200ml
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt" onclick="location.href='/shop/mypage/shopping/order_view?ocode=202405231716140GPA'">주문상세</button>
						</div>
					</li>
				</ul>
			</div>
            <!-- <div class="bottom_lnb pc_hidden">
                <ul class="lnb_wrap">
                    <li>
                        <p class="lnb_tit">나의 쇼핑</p>
                        <ul>
                            <li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
                            <li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
                            <li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
                            <li><a href="/shop/cart/cart_lists">장바구니</a></li>
                        </ul>
                    </li>
                    <li>
                        <p class="lnb_tit">쇼핑수첩</p>
                        <ul>
                            <li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
                            <li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
                            <li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
                        </ul>
                    </li>
                    <li>
                        <p class="lnb_tit">나의 활동</p>
                        <ul>
                            <li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천신청</a></li>
                            <li><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li>
                            <li><a href="/shop/mypage/action/tasting_lists">시음노트관리</a></li>
                        </ul>
                    </li>
                    <li>
                        <p class="lnb_tit">개인정보</p>
                        <ul>
                            <li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
                            <li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
                            <li><a href="/shop/mypage/account/sns_connect">sns 연동관리</a></li>
                            <li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
                            <li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
                                                    </ul>
                    </li>
                </ul>
            </div> -->
        </div>
    </div>
    <link rel="stylesheet" type="text/css" href="../../../asset/css/shop/main.css">
    <link rel="stylesheet" type="text/css" href="../../../asset/css/shop/slick.css">
    <script type="text/javascript" src="../../../asset/js/slick.min.js"></script>
    <!-- page_script -->
    <script>
        //배너 슬라이드
        $('.slide_area').slick({
            dots: true,
            arrows: true,
            // autoplay: true,
            // autoplaySpeed: 1500,
            responsive: [{
                breakpoint: 767,
                settings: {
                    dots: true,
                    arrows: false,
                    // autoplay: true,
                    // autoplaySpeed: 1500,
                }
            }]
        });
        function openProfile() {
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: "POST",
                url : "/shop/mypage/shopping/wine_profile_ajax",
                data: { },
                success : function (res) {
                    $(".wine_profile_layer").html(res);
                    commonUI.layer.open('wine_profile_layer');
                },
                error: function (res) {
                    console.log(res.responseText);
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