<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ Our Brands</title>
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
<div class="lnb comm_lnb bg_lnb community_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>Our Brands</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/community/magazine_con_lists">Our Stories</a></li>
				<!-- <li  ><a href="/shop/community/press_lists">Press & People</a></li> -->
				<li><a href="/shop/community/video_lists"><span>Brands Film</span></a></li>
				<li><a href="/shop/community/film_lists"><span>Winenara Film</span></a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>Our Brands</span></h2>
		</div>
		<ul class="menu tab4">
			<li class="on"><a href="/shop/community/brandstory_lists"><span>Our Brands</span></a></li>
			<li><a href="/shop/community/magazine_con_lists"><span>Our Stories</span></a></li>
			<!-- <li  ><a href="/shop/community/magazine_con_lists"><span>Wine Story</span></a></li> -->
			<!-- <li  ><a href="/shop/community/press_lists"><span>Press & People</span></a></li> -->
			<li><a href="/shop/community/video_lists"><span>Brands Film</span></a></li>
			<li><a href="/shop/community/film_lists"><span>Winenara Film</span></a></li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content community brandstory_lists_page">
		<div class="inner">
			<ul class="brandstory_lists" id="brandstory_ul">
				<c:forEach items="${lists}" var="item">
				<li>
					<a href="/shop/community/brandstory_view.do?story_seq=${item.story_seq}">
						<div class="img">
							<picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="/../../uploads/story/${item.thumbnail}" media="(min-width:768px)">
								<!-- pc이미지 -->
								<source srcset="/../../uploads/story/${item.thumbnail}" media="(max-width:767px)">
								<!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="/../../uploads/story/${item.thumbnail}" alt="${item.title}">
								<!-- pc이미지 -->
							</picture>
						</div>
					</a>
				</li>
				</c:forEach>
			</ul>
			<!-- <button type="button" class="btn_txt" id="showMoreList" onClick="getList('add');"><span>더보기</span></button> -->
		</div>
		<!--//inner-->
	</div>
	<!--//community brandstory_lists_page-->
</div>
<form action="<c:url value='/shop/community/brandstory_lists.do' />" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
	<!-- <input type="hidden" name="witplus_csrf_token" value="d05c0554e8df557dd5b2168dd7eca013"> -->
	<input type="hidden" name="page" id="page" value="1">
</form>
<script>
/**
 * 상품 리스트 불러오기 (더보기)
 * @param  {[type]} mode [description]
 * @return {[type]}      [description]
 */
//스크롤 바닥 감지
window.addEventListener('scroll', moreShowList);
var scrollVal = true;
function moreShowList() {
// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
    if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
        if( scrollVal === true) {
            scrollVal = false;
            window.removeEventListener('scroll', moreShowList);
            getList('add');
        }
    }
}   
function getList(mode){
    var page = $("#page").val();
    if( mode=="add"){
        page = parseInt(page)+1;
        $("#page").val(page);
    }
    //Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url : "/shop/community/brandstory_lists_ajax",
        data: $("#ListForm").serialize(),
        success : function (res) {
            if($.trim(res) == ""){
                if(mode == 'add'){
                    // alert("마지막 페이지입니다.");
                    // $('#showMoreList').css('display','none');
                    window.removeEventListener('scroll', moreShowList);
                }
            } else {
                if(mode=="add"){
                    $("#brandstory_ul").append(res);    
                } else if(mode == "fil"){
                    $("#brandstory_ul").html(res);
                } else {
                    $("#brandstory_ul").html(res);
                }
                scrollVal = true;
                window.addEventListener('scroll', moreShowList);
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