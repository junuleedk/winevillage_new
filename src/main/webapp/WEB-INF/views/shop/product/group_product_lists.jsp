<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%
	Object group_code_obj = request.getAttribute("group_code");
	String group_code = "";
	
	if (group_code_obj instanceof Integer) {
		group_code = String.valueOf(group_code_obj);
	} else if (group_code_obj instanceof String) {
		group_code = (String) group_code_obj;
	}

	String page_title = "";

	if ("1901".equals(group_code)) {
		page_title = "NEW ARRIVALS";
	}
	if ("1902".equals(group_code)) {
		page_title = "BEST";
	}
%>
<title>WINEVILLAGE 2024 ㅣ <%= page_title %></title>
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
<section id="contents" style="margin-top: 188px;">
<div class="best_lnb lnb bg_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>NEW</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/product/group_product_lists?group_cd=1902">BEST</a></li>
			</ul>
		</div>
	</div>
	<picture>
	<!--[if IE 9]><video style="display: none;"><![endif]-->
	<source srcset="/../../uploads/group/3a6fb497c836d0bd2eac5336694a1605.jpg" media="(min-width:768px)">
	<!-- pc이미지 -->
	<source srcset="/../../uploads/group/3040b7f2e12567bda5e291e60561809e.jpg" media="(max-width:767px)">
	<!-- mb이미지 -->
	<!--[if IE 9]></video><![endif]-->
	<img src="/../../uploads/group/3a6fb497c836d0bd2eac5336694a1605.jpg" alt="">
	<!-- pc이미지 -->
	</picture>
</div>
<div class="wrap">
	<div class="content product product_lists_page best_product_lists_page">
		<%@ include file="group_product_lists/product_lists_wrap.jsp" %>
	</div>
</div>

<%@ include file="group_product_lists/listForm.jsp" %>

<!-- <form action="https://www.winenara.com/shop/product/group_product_lists" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
	<input type="hidden" name="witplus_csrf_token" value="8fbdcfac437e9cd2a974ae2ef57905de">
	<input type="hidden" name="page" id="page" value="1">
	<input type="hidden" name="sh_group_cd" id="sh_group_cd" value="1901">
	<input type="hidden" name="sh_gubun_cd" id="sh_gubun_cd" value="">
	<input type="hidden" name="sh_order_by" id="sh_order_by" value="">
</form> -->
<link rel="stylesheet" type="text/css" href="/../../asset/css/shop/jqcloud.min.css">
<link rel="stylesheet" type="text/css" href="/../../asset/css/shop/slick.css">
<script type="text/javascript" src="/../../asset/js/jqcloud.min.js"></script>
<script type="text/javascript" src="/../../asset/js/slick.min.js"></script>
<!-- http://mistic100.github.io/jQCloud/demo.html -->
<script>
$(function(){
	// 쿠키에 있는 정렬값
// 	var val = getCookie("selected");
// 	console.log(val);
// 	if(val){
//     	$("#js_select").val(val).prop("selected", true);
//     	$("#sh_order_by").val(val);
//         $("#page").val(1);
// 		$("#product_ul").empty();
//        getList('fil', '');
//     }
});
$(function() {
    var cookie = getCookie("list_order_cookie");
    if (cookie) {
        if(cookie == "price_desc") {
            $("#js_select").val("price_desc");
        } else if(cookie == "price_asc") {
            $("#js_select").val("price_asc");
        } else if(cookie == "recent") {
            $("#js_select").val("recent");
        } else {
        	$("#js_select").val("price_desc");
        }
    }
});
// 정렬
$("#js_select").change(function(){
	var val = $(this).val();
    $("#sort").val(val);
    $("#page").val(1);
	$("#product_ul").empty();
    setCookie("selected",val, 365);
	setCookie("list_order_cookie",val, 30);
    getList('fil', '');
});
/* $("#js_select").change(function(){
	var val = $(this).val();
    $("#sh_order_by").val(val);
    $("#page").val(1);
	$("#product_ul").empty();
    setCookie("selected",val, 365);
	setCookie("list_order_cookie",val, 30);
    getList('fil', '');
}); */
function setCookie(cname, cvalue, exdays) {
	var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000)); //시간설정
    var expires = "expires="+d.toUTCString(); var temp = cname + "=" + cvalue + "; " + expires;
    document.cookie = temp;
    //getList('fil', '');
}
function getCookie(name) {
    let matches = document.cookie.match(new RegExp(
    "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : undefined;
}
//스크롤 바닥 감지
//window.addEventListener('scroll', moreShowList);
function moreShowList() {
// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
	if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
		var list_type = "";
		if(list_type != "G"){
			//getList('add', '');
		}
	}
}
/**
 * 상품 리스트 불러오기 (더보기)
 * @param  {[type]} mode [description]
 * @return {[type]}      [description]
 */
function getList(mode, list_type = ''){
    var page = $("#page").val();
    console.log(list_type);
    if( mode=="add"){
        page = parseInt(page)+1;
        $("#page").val(page);
        //$('#list_page').text(page);
    }
    //Csrf.Set(_CSRF_NAME_); //토큰 초기화
    $.ajax({
        type: "POST",
        url : "/shop/product/group_product_lists_ajax.do",
        data: $("#ListForm").serialize(),
        success : function (res) {
            if($.trim(res.html) == ""){
                /* if(mode == 'add'){
					window.removeEventListener('scroll', moreShowList);
                } */
            } else {
                if(list_type != "G"){
                    if(mode=="add"){
                        $("#product_ul").append(res.html);
                    } else if(mode == "fil"){
                        $("#product_ul").html(res.html);
                    } else {
                        $("#product_ul").html(res.html);
                    }
                }else{
                	$("#group_product").remove();
                	$("#group_add").after(res.html);
                }
                $('#total_count_text').text($(".count_cnt").data('cnt'));
            }
			// 더 이상 불러올 데이터가 없으면 버튼 숨기기
            if (!res.more_btn) {
                $('.product_lists_wrap .btn_txt').hide();  // hasMore가 false면 버튼 숨기기
            }
        },
        error: function (res) {
            alert("상품 리스트 조회시 에러가 발생했습니다.");
            alert(res.responseText);
        }
    });
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