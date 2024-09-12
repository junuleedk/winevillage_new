<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 검색</title>
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
<div class="lnb product_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand" id="select_brand">
			<h2 class="my_value js_selectBtn">WINE</h2>
		</div>
	</div>
	<div class="pc_lnb mb_hidden">
		<div class="img">
			<video width="100%" height="auto" autoplay muted loop playsinline>
			<source src="../../asset/images/shop/product/wine.mp4">
			</video>
			<!-- <img src="../../asset/images/shop/product/p_.jpg" alt="상단타이틀 이미지"> -->
			<!-- <img src="../../asset/images/shop/product/p_.jpg" alt="상단타이틀 이미지"> -->
		</div>
		<div class="page_tit">
			<h2><span>WINE</span></h2>
		</div>
	</div>
</div>
<div class="wrap">
<div class="wrap">
	<div class="content product product_lists_page search_product_lists_page">
		<%@ include file="search_product_lists/product_lists_wrap.jsp" %>
	</div>
</div>
<%@ include file="search_product_lists/listForm.jsp" %>
<link rel="stylesheet" type="text/css" href="../../asset/css/shop/jqcloud.min.css"/>
<link rel="stylesheet" type="text/css" href="../../asset/css/shop/slick.css"/>
<script type="text/javascript" src="../../asset/js/jqcloud.min.js"></script>
<script type="text/javascript" src="../../asset/js/slick.min.js"></script>
<!-- http://mistic100.github.io/jQCloud/demo.html -->
<script>
//스크롤 바닥 감지
// window.addEventListener('scroll', moreShowList);
// var scrollVal = true;	//스크롤 무한로딩으로 추가
// function moreShowList() {
// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
//		 if( scrollVal === true) {
// 			getList('add');
// 		}
// 	}
// }
// 정렬
/* $("#js_select").change(function(){
	var val = $(this).val();
	$("#sort").val(val);
	$("#page").val(1);
	$("#product_ul").empty();
	setCookie("list_order_cookie",val, 30);
	getList('fil');
});  */
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
$("#js_select").change(function(){
	var form = $("form[name='ListForm']");
	var keyword = "${keyword}";
	var sort = $(this).val();
	
	$("#keyword").val(keyword);
	$("#sort").val(sort);
	
	setCookie("list_order_cookie", sort, 30);
	
	// 폼에서 값이 없는 항목을 제거한 후 제출
    $(form).find('input[type="hidden"]').each(function() {
        if (!$(this).val()) {
            $(this).remove();  // 빈 값을 가진 input 요소 제거
        }
    });
	
	form.submit();
});
function setCookie(cname, cvalue, exdays) {
	var d = new Date();
	d.setTime(d.getTime() + (exdays*24*60*60*1000)); //시간설정
	var expires = "expires="+d.toUTCString(); var temp = cname + "=" + cvalue + "; " + expires;
	document.cookie = temp;
}
function getCookie(name) {
	let matches = document.cookie.match(new RegExp(
	"(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
	));
	return matches ? decodeURIComponent(matches[1]) : undefined;
}
/**
 * 상품 리스트 불러오기 (더보기)
 * @param  {[type]} mode [description]
 * @return {[type]}	  [description]
 */
var pageInt = loadScrollgetCookie("pageInt");
if(pageInt == null){
	pageInt = 0;
}
var initGetList = false;
function getList(mode){
	scrollVal = false;
	// console.log( $("#sh_filter_code").val() );
	var page = $("#page").val();
	if( mode=="add"){
		page = parseInt(page)+1;
		$("#page").val(page);
		$('#list_page').text(page);
	}
	//Csrf.Set(_CSRF_NAME_); //토큰 초기화
	$.ajax({
		type: "POST",
		url : "/shop/product/search_product_lists_ajax",
		data: $("#ListForm").serialize(),
		success : function (res) {
			if($.trim(res) == ""){
				if(mode == 'add'){
					// window.removeEventListener('scroll', moreShowList);
				}else{
					$("#product_ul").html('<li class="nodata"><p class="txt">등록된 상품이 없습니다.</p></li>'); 
					$(".total_count_text").text(0);
				}
			} else {
				if(mode=="add"){
					$("#product_ul").append(res);
				} else if(mode == "fil"){
					$("#product_ul").html(res);
				} else {
					$("#product_ul").html(res);
				}
				var aLinkBtn = $(".scrollEventEle a");
				aLinkBtn.not('.scrollSaveEvent').on('click', function(){
					event.preventDefault();
					scrollSaveEventBinding($(this).closest('.scrollEventEle'));
					window.location.href = $(this).attr('href');
				});
				aLinkBtn.addClass('scrollSaveEvent');
				$('.total_count_text').text($(".count_cnt").data('cnt'));
				scrollVal = true;
			}
			if(page < pageInt) {
				getList('add');
			}else{
				if(!initGetList){
					loadScroll();
					initGetList = true;
					scrollVal = true;
				}
			}
		},
		error: function (res) {
			alert("상품 리스트 조회시 에러가 발생했습니다.");
			alert(res.responseText);
		}
	});
}
$('.pop_show').on('click', function(){
	$('.product_view_layer').show();
	layerCloud();
})
$('.ajax_tab button').on('click', function(){
	$('.ajax_tab button').removeClass('on')
	$(this).addClass('on')
})
// 슬라이드시 비비노 키워드 호출
function vivino_keyword(){
	$('.main_img .slider').on('afterChange', function(event, slick, currentSlide){
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
function layerCloud(){
	var layerWords = [{
			text: "빨간과일",
			weight: 1
		}, {
			text: "자두",
			weight: 3
		}, {
			text: "체리",
			weight: 3
		}, {
			text: "블랙베리",
			weight: 2
		}, {
			text: "초콜릿",
			weight: 5
		}, {
			text: "바닐라",
			weight: 4
		}, {
			text: "오크",
			weight: 2
	}];
	var Box = document.createElement('div')
	document.querySelector('.js_cloud_add').appendChild(Box);
	var layer_cloud = $(".js_cloud_add div").jQCloud(layerWords, {
		width: 211,
		height: 135,
		autoResize: true,
		steps: 5
	});
}
/************************ 필터 ************************/
$(function() {
	$("#info_ul li").first().addClass("on");	// 대분류 처음꺼
	$(".js_tabCon").first().addClass("on");	// 중분류 처음꺼
});
function filter_submit(){  
	var seq = '';
	var html = '';
	$(".filter_item").empty();	// 클릭마다 초기화
	$("#page").val(1);
	$("input:checkbox[name='item_seq']:checked").each(function() {
		if(seq == ""){
			seq = String($(this).val());
		}else{
			seq = String($(this).val())+","+seq;
		}
		html += '<div class="check_select item_chk" id="filtet_btn_'+$(this).val()+'" onclick="DelFilterEvent('+$(this).val()+');">';
		html +=		$(this).data('nm');
		html +=		'<button type="button" class="del" name="del_btn" value="'+$(this).val()+'" onclick="DelFilterEvent('+$(this).val()+');">삭제</button>';
		html += '</div>';
	});
	html += '<button type="button" class="reset" onclick="all_reset();">초기화</button>';
	$(".filter_item").html(html);
	if($('.filter_item .check_select').length > 0){
		$('.filter_item').removeClass('nodata_fiter');
	}else{
		$('.filter_item').addClass('nodata_fiter');
	}
	$("#sh_filter_code").val(seq);
	console.log($("#sh_filter_code").val());
	if( setSessionStorage == seq){
		// console.log('동일');
		$('.btn_filter').addClass('apply');
	}else{
		// console.log('동일하지않음');
		$('.btn_filter').removeClass('apply');
	}
	//getList('fil');
	DelFilterEvent();
}
/**
 * 필터 조건 삭제 EVENT
 */
function DelFilterEvent(val){
	$("#page").val(1);
	$("button[name='del_btn']").on('click', function() {
		var remove_val = val;
		var seq = '';
		$("input:checkbox[name='item_seq']:checked").each(function() {
			if($(this).val() == remove_val){
				$(this).prop("checked", false);
			}
		});
		filter_submit()
	});
	// 	getList('fil');
};
// 필터 리셋
function all_reset() {
	$("#sh_filter_code").val("");	// 검색값
	$("input:checkbox[name='item_seq']").prop("checked", false);	// 체크값
	$(".filter_item").empty();	// 체크된값
	$(".filter_item").addClass("nodata_fiter");
	$('.btn_filter').removeClass('apply');
	sessionStorage.setItem("checkFilterList", $("#sh_filter_code").val());
	getList('fil');
}
// 필터 호출/저장
var setSessionStorage = sessionStorage.getItem("checkFilterList");
// console.log(setSessionStorage);
if(setSessionStorage !== null && setSessionStorage !== ''){
	$("#sh_filter_code").val(setSessionStorage);
	var defaultFilterCheck = setSessionStorage.split(',');
	var html = '';
	defaultFilterCheck.reverse().forEach(function(el){
		// console.log(el);
		$('#type_check_' + el).prop('checked', true);
		$('#type_check_' + el).attr('checked', true);
		html += '<div class="check_select item_chk" id="filtet_btn_'+el+'" onclick="DelFilterEvent('+el+');">';
		html +=		$('#type_check_' + el).data('nm');
		html +=		'<button type="button" class="del" name="del_btn" value="'+el+'" onclick="DelFilterEvent('+el+');">삭제</button>';
		html += '</div>';
	})
	html += '<button type="button" class="reset" onclick="all_reset();">초기화</button>';
	$('.filter_item').removeClass('nodata_fiter');
	$('.btn_filter').addClass('apply');
	$(".filter_item").html(html);
	getList('fil');
}
function saveSession(){
	setSessionStorage = $("#sh_filter_code").val();
	// console.log(setSessionStorage);
	if(setSessionStorage !== ''){
		$('.btn_filter').addClass('apply');
		sessionStorage.setItem("checkFilterList", setSessionStorage);
	}
}
/************************ 필터 ************************/
var db = (document.body) ? 1 : 0;
var scroll = (window.scrollTo) ? 1 : 0;
function loadScrollsetCookie(name, value, expires, path, domain, secure) {
	var curCookie = name + "=" + escape(value) +
	((expires) ? "; expires=" + expires.toGMTString() : "") +
	((path) ? "; path=" + path : "") +
	((domain) ? "; domain=" + domain : "") +
	((secure) ? "; secure" : "");
	document.cookie = curCookie;
}
function loadScrollgetCookie(name) {
	var dc = document.cookie;
	var prefix = name + "=";
	var begin = dc.indexOf("; " + prefix);
	if (begin == -1) {
	begin = dc.indexOf(prefix);
	if (begin != 0) return null;
	} else {
	begin += 2;
	}
	var end = document.cookie.indexOf(";", begin);
	if (end == -1) end = dc.length;
	return unescape(dc.substring(begin + prefix.length, end));
}
function loadScroll() {
	if (!scroll) return;
	var getCurrentPd = loadScrollgetCookie("currentPd");
	console.log(getCurrentPd);
	if(getCurrentPd){
		// alert("move");
		var ar = $("[data-val="+getCurrentPd+"]").offset().top - 200
		// alert(ar);
		setTimeout(function () {
			window.scrollTo(0, parseInt(ar))
		},200);
		deleteCookie('currentPd');
		deleteCookie('pageInt');
		pageInt=null;
	}
}
function scrollSaveEventBinding(_target){
	console.log(_target)
	loadScrollsetCookie("currentPd", _target.attr('data-val'));
	loadScrollsetCookie("pageInt", $("#page").val());
	// setCookie("docHeight", $('#contents').height());
}
function deleteCookie (name) {
	document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
}
</script>
</div>
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