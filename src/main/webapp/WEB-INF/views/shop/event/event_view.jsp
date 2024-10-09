<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ PROMOTION </title>
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
<div class="lnb comm_lnb bg_lnb event_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>이달의 프로모션</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/event/event_lists.do">이달의 프로모션</a></li>
				<li><a href="/shop/event/event_end.do">완료된 프로모션</a></li>
				<!-- <li  ><a href="/shop/event/theme/theme_ing_lists">진행중인 기획전</a></li>
                <li  ><a href="/shop/event/theme_end/theme_end_lists">종료된 기획전</a></li> -->
				<!-- <li  ><a href="/shop/event/review/review_lists">이벤트 당첨자 발표</a></li> -->
				<!-- <li  ><a href="/shop/event/theme_review/theme_review_lists">기획전 당첨자 발표</a></li> -->
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>PROMOTION</span></h2>
		</div>
		<ul class="menu tab2">
			<li<c:if test="${isOngoing}"> class="on"</c:if>><a href="/shop/event/event_lists.do"><span>이달의 프로모션</span></a></li>
			<li<c:if test="${!isOngoing}"> class="on"</c:if>><a href="/shop/event/event_end.do"><span>완료된 프로모션</span></a></li>
			<!-- <li  ><a href="/shop/event/theme/theme_ing_lists">진행중인 기획전</a></li>
            <li  ><a href="/shop/event/theme_end/theme_end_lists">종료된 기획전</a></li> -->
			<!-- <li  ><a href="/shop/event/review/review_lists">이벤트 당첨자 발표</a></li> -->
			<!-- <li  ><a href="/shop/event/theme_review/theme_review_lists">기획전 당첨자 발표</a></li> -->
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content event event_view_page">
		<div class="view_page_wrap event_view_wrap">
			<div class="view_tit_wrap">
				<h3 class="tit">${event.title}</h3>
				<i class="date"><fmt:formatDate value="${event.date_start}" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${event.date_end}" pattern="yyyy.MM.dd"/></i>
			</div>
			<div class="btn_box">
				<button type="button" class="share_btn" onclick="$('.share_box').show()">공유하기</button>
				<div class="share_box">
					<a href="#none" class="facebook" onclick="share_sns('F');">facebook</a>
					<a href="#none" class="twitter" onclick="share_sns('T');">twitter</a>
					<a href="#none" class="url" onclick="share_sns('U');">URL</a>
					<button type="button" class="hide_btn" onclick="$('.share_box').hide()"></button>
				</div>
			</div>
			<div class="view_con">
				${event.content}
			</div>
			<!-- 상품리스트 타이틀 -->
			<!-- <div class="event_prd_tit">
                <h3>이달의 와인추천</h3>
                <span>이달의 와인을 소개합니다.</span>
            </div> -->
			<!-- //상품리스트 타이틀 -->
			<!-- 상품리스트 이미지 타이틀 -->
			<!-- <div class="event_prd_image_tit">
                <picture>
                    <source srcset="../../asset/images/shop/product/pc_bg_slide_thumb.png" media="(min-width:768px)">
                    <source srcset="../../asset/images/shop/product/mb_bg_slide_thumb.png" media="(max-width:767px)">
                    <img src="../../asset/images/shop/product/pc_bg_slide_thumb.png" alt="">
                </picture>
                <div class="tit_wrap">
                    <h3>이달의 와인추천</h3>
                    <span>이달의 와인을 소개합니다.</span>
                </div>
            </div> -->
            <c:if test="${not empty event.product_ul}">
            <!-- //상품리스트 이미지 타이틀 -->
            <%@ include file="event_view/n_prd_list.jsp" %>
			</c:if>
            <button type="button" class="btn_txt btn_black" onclick="javascript:location.href='/shop/event/event_lists.do';"><span>목록</span></button>
        </div>
        <!--//event_view_wrap-->
    </div>
    <!--//event event_view_page-->
</div>
<style>
.view_con iframe {
    width: 100%;
    height: revert-layer;
}
</style>
<script>
function share_sns(e){
    var url = window.document.location.href;
    if(e == 'U'){
        var textarea = document.createElement("textarea");
        document.body.appendChild(textarea);
        textarea.value = url;
        textarea.select();
        document.execCommand("copy");
        document.body.removeChild(textarea);
        alert("URL이 복사되었습니다.");
    }else if(e == 'F'){
        window.open( 'http://www.facebook.com/sharer.php?u=' + encodeURIComponent(url) );
    }else if( e == 'T' ) {
        window.open("http://twitter.com/share?url="+encodeURIComponent(url));
    }
}
// 슬라이드시 비비노 키워드 호출
function vivino_keyword(){
    $('.main_img .slider').on('afterChange', function(event, slick, currentSlide){
        var product_cd = $(this).data('cd');
            var words = [];	// 키워드 담을 배열
            console.log(product_cd);
        Csrf.Set(_CSRF_NAME_); //토큰 초기화
        $.ajax({
            type: "POST",
            url : "/shop/product/vivino_keyword_ajax",
            data: {product_cd:product_cd},
            success : function (res) {
                if (typeof(res)=="string"){ res = JSON.parse(res); }
                if(res.status == "ok"){
                    var vivino = res.list;
                    console.log(vivino);
                    for(var i = 0;i < vivino.length;i++){
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
var page = 'event_view';
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