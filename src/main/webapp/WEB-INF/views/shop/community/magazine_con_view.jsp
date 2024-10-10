<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>Our Stories</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/community/brandstory_lists">Our Brands</a></li>
				<li><a href="/shop/community/magazine_con_lists">Our Stories</a></li>
				<!-- <li  ><a href="/shop/community/press_lists">Press & People</a></li> -->
				<li><a href="/shop/community/video_lists"><span>Brands Film</span></a></li>
				<li><a href="/shop/community/film_lists"><span>Winenara Film</span></a></li>
			</ul>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="page_tit">
			<h2><span>Our Stories</span></h2>
		</div>
		<ul class="menu tab4">
			<li><a href="/shop/community/brandstory_lists"><span>Our Brands</span></a></li>
			<li class="on"><a href="/shop/community/magazine_con_lists"><span>Our Stories</span></a></li>
			<!-- <li  ><a href="/shop/community/magazine_con_lists"><span>Wine Story</span></a></li> -->
			<!-- <li  ><a href="/shop/community/press_lists"><span>Press & People</span></a></li> -->
			<li><a href="/shop/community/video_lists"><span>Brands Film</span></a></li>
			<li><a href="/shop/community/film_lists"><span>Winenara Film</span></a></li>
		</ul>
	</div>
</div>
<div class="wrap">
	<div class="content community magazine_con_view_page">
		<div class="inner view_page_wrap">
			<div class="view_tit_wrap">
				<h3 class="tit">[${magazine_con.series}] ${magazine_con.title}</h3>
				<i class="date"><fmt:formatDate value="${magazine_con.register_date}" pattern="yyyy-MM-dd"/></i>
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
			<div class="view_content">
				<div class="con">
					${magazine_con.content}
				</div>
				<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/community/magazine_con_lists.do';"><span>목록</span></button>
			</div>
			<c:if test="${not empty magazine_con.related_product}">
            <!-- //상품리스트 이미지 타이틀 -->
            <%@ include file="magazine_con/related_prd.jsp" %>
			</c:if>
			<c:if test="${moreBtn}">
			<div class="btn_area">
                <button type="button" class="btn_txt" id="showMoreList" onClick="getList('add');"><span>더보기</span></button>
            </div>
            </c:if>
		</div>
		<!--//inner-->
	</div>
	<!--//community magazine_con_view_page-->
</div>
<form action="https://www.winenara.com/shop/community/magazine_con_view.do" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
	<!-- <input type="hidden" name="witplus_csrf_token" value="e065493341abd36d2529f03d0791f4d4"/> -->
	<input type="hidden" name="page" id="page" value="0">
	<!-- <input type="hidden" name="magazine_con_seq" value="${magazine_con.seq}"> -->
	<input type="hidden" name="seq" value="${magazine_con.seq}">
</form>
<link rel="stylesheet" type="text/css" href="/../../asset/css/shop/slick.css"/>
<script type="text/javascript" src="/../../asset/js/slick.min.js"></script>
<script>
$(function(){
	getList('add');
});
$('.main_img .slider').slick({
    dots: true,
    arrows: true
});
/**
 * 상품 리스트 불러오기 (더보기)
 * @param  {[type]} mode [description]
 * @return {[type]}      [description]
 */
function getList(mode){
    var currentPage = parseInt($("#page").val());
    var nextPage = currentPage;
    
    if( mode=="add"){
    	nextPage = currentPage + 1;
    }
    //Csrf.Set(_CSRF_NAME_); //토큰 초기화
    
    var formData = $("#ListForm").serializeArray();
    // 'page' 값을 'nextPage'로 설정
    $.each(formData, function(i, field){
        if(field.name == 'page'){
            field.value = nextPage;
        }
    });
    
    $.ajax({
        type: "POST",
        url : "/shop/community/magazine_con_view_ajax",
        data: $.param(formData),
        success : function (res) {
            if($.trim(res) == ""){
                if(mode == 'add'){
                    alert("마지막 페이지입니다.");
                    $('#showMoreList').css('display','none');
					// 페이지 값을 이전 값으로 복원
                    $("#page").val(currentPage);
                }
            } else {
                if(mode=="add"){
                	$("#page").val(nextPage);
                    $("#product_ul").append(res);
                } else if(mode == "fil"){
                	$("#page").val(nextPage);
                    $("#product_ul").html(res);
                } else {
                	$("#page").val(nextPage);
                    $("#product_ul").html(res);
                }
                $('.main_img .slider').not('.slick-initialized').slick({
                    dots: true,
                    arrows: true
                });
            }
        },
        error: function (res) {
            alert("상품 리스트 조회시 에러가 발생했습니다.");
            alert(res.responseText);
			// 에러 발생 시 페이지 값을 이전 값으로 복원
            $("#page").val(currentPage);
        }
    });
}; 
/*공유 및 URL 복사*/
var img_url = "${magazine_con.thumbnail}";
if(img_url !== ''){
    img_url = 'https://wn.witplus.com/uploads/product/${magazine_con.thumbnail}';
}
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