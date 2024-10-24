<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ Press</title>
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
<section id="contents">
<div class="lnb comm_lnb bg_lnb company_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>Press</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/company/about_us.do">WineVillage</a></li>
				<li><a href="/shop/company/brand.do">Brands</a></li>
				<li><a href="/shop/company/store.do">Shop</a></li>
				<!-- <li><a href="/shop/company/fnb">F&B</a></li> -->
				<li><a href="/shop/company/member_benefit.do">Membership</a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>Press</span></h2>
		</div>
		<ul class="menu">
			<li><a href="/shop/company/about_us.do"><span>WineVillage</span></a></li>
			<li><a href="/shop/company/brand.do"><span>Brands</span></a></li>
			<li><a href="/shop/company/store.do"><span>Shop</span></a></li>
			<!-- <li><a href="/shop/company/fnb"><span>F&B</span></a></li> -->
			<li class="on"><a href="/shop/community/press_lists.do"><span>Press</span></a></li>
			<li><a href="/shop/company/member_benefit.do"><span>Membership</span></a></li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content community press_lists_page">
		<div class="inner">
			<div class="press_left">
				<div class="search_box">
					<input type="text" name="keyword" id="input_keyword" placeholder="검색어를 입력해주세요.">
					<button type="button" onclick="keyword_search(input_keyword.value);">검색</button>
				</div>
				<div class="lists_top">
					<span>총 <i id="total_count">33</i>개의 게시물</span>
					<!-- <select name="js_select" id="js_select" class="pd_select">
                	<option value="">선택</option>
                    <option value="A">최신등록순</option>
                </select> -->
				</div>
				<ul class="press_lists" id="press_ul">
					<c:forEach items="${lists}" var="item">
					<li>
					<div class="img" onclick='location.href="/shop/community/press_view?press_seq=${item.seq}"' style="cursor: pointer;">
						<img src="/uploads/press/${item.img}" alt="">
					</div>
					<div class="con">
						<a href="/shop/community/press_view.do?seq=${item.seq}"><p class="tit">${item.title}</p></a>
						<span>${item.description}</span>
						<i class="date"><fmt:formatDate value="${item.register_date}" pattern="yyyy-MM-dd"/></i>
					</div>
					</li>
					</c:forEach>
				</ul>
				<button type="button" class="btn_txt" id="showMoreList" onclick="getList('add');"><span>더보기</span></button>
			</div>
			<!-- <div class="press_right">
                <div class="magazine_wrap">
                    <div class="tit_wrap">
                        <p class="tit">베스트 매거진</p>
                        <!-- <button type="button" class="btn_more"><span>더보기</span></button> -->
			<!--/div>
                    <ul class="magazine_lists">
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=54"><span>[MINI INTERVIEW] 와인 경력 24년 차 소믈리에가 말하다</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=56"><span>[Chef Interview] SAV Seoul 장한이 셰프</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=58"><span>2023 와인스펙데이터 Top100 !</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=59"><span>고든 앤 맥 페일 플래그쉽 스토어 & 바</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=60"><span>12월  Wine Pairing</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=61"><span>[Chef Interview] MOOD Seoul 성기혁 셰프</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=62"><span>연말에 어울리는 와인</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=63"><span>Le Monde du Vin으로 초대합니다.</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=64"><span>[WINE STORY] 1월  Wine Pairing</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=65"><span>봄과 함께 찾아온 MOWa 신메뉴</span></a></li>
                        <li><a href="/shop/community/magazine_con_view?magazine_con_seq=66"><span>장한이 셰프님의 특별한 스토리가 담긴 SAV seoul 신메뉴</span></a></li>
                    </ul>
                </div>
                <div class="recommend">
                    <div class="tit_wrap">
                        <p class="tit">매거진 추천 와인</p>
                        <!-- <button type="button" class="btn_more"><span>더보기</span></button> -->
			<!--/div>
                    <ul class="wine_lists">
                        <li>
                            <a href="/shop/product/product_view?product_cd=03P618">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/e8e834bfee00e64092402259d76d7821.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir red">레드</span><span class="cir "></span></div>
                                    <strong>프리마크 아비 메를로</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                        <li>
                            <a href="/shop/product/product_view?product_cd=03J244">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/1240_detail_051.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir red">레드</span><span class="cir "></span></div>
                                    <strong>빌라 안티노리 키안티 클라시코 리제르바</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                        <li>
                            <a href="/shop/product/product_view?product_cd=03Q552">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/cb7f8f43c30c100be3ef5b31d163e455.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir red">레드</span><span class="cir "></span></div>
                                    <strong>퍼스트 드랍 마더스 밀크 쉬라즈</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                        <li>
                            <a href="/shop/product/product_view?product_cd=04D564">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/1773_detail_09.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir white">화이트</span><span class="cir "></span></div>
                                    <strong>보데가 가르손 리제르바 알바리뇨</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                        <li>
                            <a href="/shop/product/product_view?product_cd=04D586">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/bbf21e0f0916c0b8201328e0dfc3b7d3.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir white">화이트</span><span class="cir "></span></div>
                                    <strong>도멘 드 마르꾸 샤또네프뒤파프 블랑</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                        <li>
                            <a href="/shop/product/product_view?product_cd=04D826">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/699e09f5f3df75256d6a09393b6b2f18.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir white">화이트</span><span class="cir "></span></div>
                                    <strong>인비보 X 사라 제시카 파커 말보로 소비뇽블랑</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                        <li>
                            <a href="/shop/product/product_view?product_cd=02A621">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/7d510bb02b706d4a4c71e218e9ef6990.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir sparkling">스파클링</span><span class="cir "></span></div>
                                    <strong>파크 에 피스 카르트 오르 프리미에 크뤼</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                        <li>
                            <a href="/shop/product/product_view?product_cd=03I727">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/2ac9d2b72e6142cf725d20b66061e47e.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir red">레드</span><span class="cir "></span></div>
                                    <strong>마르케제 안티노리 키안티 클라시코 리제르바</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                        <li>
                            <a href="/shop/product/product_view?product_cd=03Q344">
                            <div class="img">		
                                <picture>
                                    <img src="/uploads/product/4d7b8c52f28e1f1fd90e3d25167cb39b.png" alt=""><!-- pc이미지 -->
			<!--/picture>
                            </div>
                            <div class="info">
                                <div class="tit">
                                    <div class="label"><span class="cir red">레드</span><span class="cir "></span></div>
                                    <strong>더 바이스 `더 하우스`카베르네 소비뇽</strong>
                                </div>
                            </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div> -->
		</div>
		<!--//inner-->
	</div>
	<!--//community magazine_lists_page-->
</div>
<form action="<c:url value='/shop/community/press_lists.do' />" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
	<!-- <input type="hidden" name="witplus_csrf_token" value="d47c51fa11cc465777b00d6b74690ef0"/> -->
	<input type="hidden" name="page" id="page" value="1">
	<input type="hidden" name="sh_order_by" id="sh_order_by" value="">
	<input type="hidden" name="keyword" id="list_keyword" value="">
</form>
<script>
// 정렬
$("#js_select").change(function(){
	var val = $(this).val();
    $("#sh_order_by").val(val);
    $("#page").val(1);
    getList('fil');
});
// 검색
 $("#input_keyword").keydown(function(key) {
    if (key.keyCode == 13) {
		var key = $(this).val();
        keyword_search(key);
    }
});
function keyword_search(keyword){
	$('#list_keyword').val(keyword);
	$("#page").val(1);
	$('#showMoreList').css('display','block');
    getList('fil');
}
/**
 * 상품 리스트 불러오기 (더보기)
 * @param  {[type]} mode [description]
 * @return {[type]}      [description]
 */
function getList(mode){
    var page = $("#page").val();
    if( mode=="add"){
        page = parseInt(page)+1;
        $("#page").val(page);
    }
    //Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url : "/shop/community/press_list_ajax",
        data: $("#ListForm").serialize(),
        success : function (res) {
            if($.trim(res) == ""){
                if(mode == 'add'){
                    alert("마지막 페이지입니다.");
                    $('#showMoreList').css('display','none');
                }
            } else {
                if(mode=="add"){
                    $("#press_ul").append(res);    
                    $("#press_ul").trigger("create");
                    for(var i = 20;i < $("#press_ul li").length;i++){
                        new commonUI.selectModule($("#press_ul li").eq(i).find('.js_select'));
                    }
                } else if(mode == "fil"){
                    $("#press_ul").html(res);
                    $("#press_ul").trigger("create");
                    /* $("#press_ul li").each(function(){
                        new commonUI.selectModule($(this).find('.js_select'));
                    }); */
                } else {
                    $("#press_ul").html(res);
                }
            }
        },
        error: function (res) {
            alert("상품 리스트 조회시 에러가 발생했습니다.");
            alert(res.responseText);
        }
    });
};    
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
	var page = 'press_lists';
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