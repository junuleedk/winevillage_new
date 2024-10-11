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
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>Brands Film</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/community/brandstory_lists">Our Brands</a></li>
				<li><a href="/shop/community/magazine_con_lists">Our Stories</a></li>
				<!-- <li  ><a href="/shop/community/press_lists">Press & People</a></li> -->
				<li><a href="/shop/community/film_lists"><span>Winenara Film</span></a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>Brands Film</span></h2>
		</div>
		<ul class="menu tab3">
			<li><a href="/shop/community/brandstory_lists.do"><span>Our Brands</span></a></li>
			<li><a href="/shop/community/magazine_con_lists.do"><span>Our Stories</span></a></li>
			<!-- <li  ><a href="/shop/community/magazine_con_lists"><span>Wine Story</span></a></li> -->
			<!-- <li  ><a href="/shop/community/press_lists"><span>Press & People</span></a></li> -->
			<li class="on"><a href="/shop/community/video_lists.do"><span>Brands Film</span></a></li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content community magazine_con_lists_page video_lists_page">
		<div class="inner">
			<!-- <div class="view_top">
                <div class="img">		
                    <picture> -->
			<!--[if IE 9]><video style="display: none;"><![endif]-->
			<!--<source srcset="../../uploads/magazine_writer/" media="(min-width:768px)">-->
			<!-- pc이미지 -->
			<!--<source srcset="../../uploads/magazine_writer/" media="(max-width:767px)">-->
			<!-- mb이미지 -->
			<!--[if IE 9]></video><![endif]-->
			<!--<img src="../../uploads/magazine_writer/" alt="magazine1" alt="magazine1">-->
			<!-- pc이미지 -->
			<!-- </picture>
                </div>
                <div class="txt">
                    <span class="Career_info"></span>
                    <strong class="name"></strong>
                </div>
            </div> -->
			<ul class="magazine_view_lists">
				<c:forEach items="${lists}" var="item">
				<li>
					<a href="/shop/community/video_view.do?seq=${item.seq}">
						<div class="img">
							<picture>
							<!--[if IE 9]><video style="display: none;"><![endif]-->
							<source srcset="../../uploads/video/${item.thumbnail}" media="(min-width:768px)">
							<!-- pc이미지 -->
							<source srcset="../../uploads/video/${item.thumbnail}" media="(max-width:767px)">
							<!-- mb이미지 -->
							<!--[if IE 9]></video><![endif]-->
							<img src="../../uploads/video/${item.thumbnail}" alt="magazine1" alt="magazine1">
							<!-- pc이미지 -->
							</picture>
						</div>
						<div class="text">
							<!-- <span class="sub_tit">[${item.brand}] ${item.title}</span> -->
							<strong class="tit">[${item.brand}]<c:if test="${item.title != null}"> ${item.title}</c:if></strong>
						</div>
					</a>
				</li>
				</c:forEach>
			</ul>
			<!-- <button type="button" class="btn_txt btn_black" onclick="location.href='/shop/community/magazine_lists'"><span>목록</span></button> -->
		</div>
		<!--//inner-->
	</div>
	<!--//community magazine_view_page-->
</div>
<form action="<c:url value='/shop/community/video_lists.do' />" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
	<input type="hidden" name="page" id="page" value="1">
</form>
<script>
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
        url : "/shop/community/video_lists_ajax",
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
                    $("ul.magazine_view_lists").append(res);    
                } else if(mode == "fil"){
                    $("ul.magazine_view_lists").html(res);
                } else {
                    $("ul.magazine_view_lists").html(res);
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
//리스트 정사각형으로 노출
$(".magazine_view_lists li .img img").each(function(index, item){
	$(this).load(function(){ //이미지를 다 불러온후 확인하기 위해
		var boastWd = this.naturalWidth,
			boastHg = this.naturalHeight;
			// if(boastWd > 1500){			                        
			// 	$(this).css({"width":"100%"});
                  //     console.log("가로가 긴 사진");
                  // }else{
                  //     $(this).css({"height":"100%"});
                  //     console.log("세로가 긴 사진");
			// }
	});
});
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