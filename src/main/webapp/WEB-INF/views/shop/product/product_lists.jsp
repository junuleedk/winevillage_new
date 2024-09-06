<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ PAGE_TITLE</title>
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
	<div class="lnb product_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand" id="select_brand">
				<h2 class="my_value js_selectBtn">PAGE_TITLE</h2>
			</div>
		</div>
	</div>
	<div class="wrap">
		<div class="content product product_lists_page test">
			<%@ include file="product_lists/product_lists_wrap.jsp" %>
			<%-- <div class="product_lists_wrap">
				<%@ include file="product_lists/prd_list_tit.jsp" %>
				<!-- 필터 -->
				<%@ include file="product_lists/prd_smartsearch.jsp" %>
				<!-- 필터 -->
				<%@ include file="product_lists/prd_list_area.jsp" %>
				<%@ include file="product_lists/pagination.jsp" %>
			</div> --%>
		</div>
	</div>
	<%@ include file="product_lists/listFrm.jsp" %>
	<link rel="stylesheet" type="text/css" href="<c:url value='/asset/css/shop/slick.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/asset/css/shop/jqcloud.min.css' />">
	<script type="text/javascript" src="<c:url value='/asset/js/jqcloud.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/asset/js/slick.min.js' />"></script>
	<!-- http://mistic100.github.io/jQCloud/demo.html -->
	<script>
		$(function(){
			//$(".pagination > a:first-child, .pagination > a:last-child").css("display", "none");	// << >> 미노출
			var state = '${classified}';
			if(state == "exclusive"){	// 매장문의(2022-11-28 soldout랑 통합)
				$("#cate_txt").text("EXCLUSIVE");
			}else if(state == "all"){
				$("#cate_txt").text("ALL");
			}else{
				$("#cate_txt").text("VALUE");
			}
			filter_submit();
		});
		function number_format(num){
			return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
		}
		var total_list = '';
		var listFormData = '';
		if(location.hash){
			var current_location_href = window.location.href;
		}else{
			var current_location_href = window.location.href +'##';
		}
		// 상태탭
		function state_list(state){
			var form = document.listFrm;
			$("#classified").val(state);
			if(state == "exclusive"){	// 매장문의(2022-11-28 soldout랑 통합)
				$("#cate_txt").text("EXCLUSIVE");
			}else if(state == "value"){
				$("#cate_txt").text("VALUE");
			}else{
				$("#cate_txt").text("ALL");
			}
			
			// 폼에서 값이 없는 항목을 제거한 후 제출
		    $(form).find('input[type="hidden"]').each(function() {
		        if (!$(this).val()) {
		            $(this).remove();  // 빈 값을 가진 input 요소 제거
		        }
		    });
			
			form.submit();
		};
		// 갯수
		$(".rcd_cnt").on("click", function(){
			var form = document.listFrm;
			var val = $(this).val();
			$("#list_count").val(val);
			setCookie("row_count_cookie",val, 30);
			
			// 폼에서 값이 없는 항목을 제거한 후 제출
		    $(form).find('input[type="hidden"]').each(function() {
		        if (!$(this).val()) {
		            $(this).remove();  // 빈 값을 가진 input 요소 제거
		        }
		    });
			
			form.submit();
		});
		// 정렬
		$("#js_select").change(function(){
			var form = document.listFrm;
			var val = $(this).val();
			$("#sort").val(val);
			setCookie("list_order_cookie", val, 30);
			
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
			$("input[name='item_seq']:checked").each(function() {
				// console.log($(this).data('nm'));
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
			// console.log($("#sh_filter_code").val());
			if( sessionStorage.getItem("checkFilterList") == seq){
				// console.log('동일');
				$('.btn_filter').addClass('apply');
			}else{
				// console.log('동일하지않음');
				$('.btn_filter').removeClass('apply');
			}
			DelFilterEvent();
			//필터 레이어 컨텐츠 하위 동적 여백
			if($(".filter_layer").css("display") == "block"){
				var filterCon = $(".product_lists_page .filter_layer.layer .layer_area .layer_con"),
					filterConBtm = $(".product_lists_page .filter_layer.layer .layer_area .layer_con .bottom"),
					filterConHgt = filterConBtm.outerHeight();
				filterCon.css({"padding-bottom":filterConHgt});
			}
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
				$("input:radio[name='item_seq']:checked").each(function() {
					if($(this).val() == remove_val){
						$(this).prop("checked", false);
					}
				});
				 filter_submit()
			});
		};
		// 필터 리셋
		function all_reset() {
			$("#sh_filter_code").val("");	// 검색값
			$("input:checkbox[name='item_seq']").prop("checked", false);	// 체크값
			$(".filter_item").empty();	// 체크된값
			$(".filter_item").addClass("nodata_fiter");
			$('.btn_filter').removeClass('apply');
			sessionStorage.setItem("checkFilterList", $("#sh_filter_code").val());
			var form = document.listFrm;
			form.submit();
		}
		// 필터 적용
		function filter_btn(){
			var form = document.listFrm;
			form.submit();
		}
		/************************ 필터 ************************/
		/* var db = (document.body) ? 1 : 0;
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
		// 	console.log(getCurrentPd);
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
		// 	console.log(_target)
			loadScrollsetCookie("currentPd", _target.attr('data-val'));
			loadScrollsetCookie("pageInt", $("#page").val());
			// setCookie("docHeight", $('#contents').height());
		}
		function deleteCookie (name) {
			document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
		} */
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