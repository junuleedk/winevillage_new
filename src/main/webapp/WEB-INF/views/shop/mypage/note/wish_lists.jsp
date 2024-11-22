<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 위시리스트</title>
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
	<%@ include file="../common/mypage_lnb.jsp" %>
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
	<div class="content mypage note wish_lists_page">
		<div class="inner">
			<div class="top_info">
				<div class="page_tit">
					<h2 class="tit">위시리스트</h2>
				</div>
			</div>
			<div class="del_area">
				<button type="button" class="btn_select">선택삭제</button>
				<button type="button" class="btn_all">전체삭제</button>
			</div>
			<%@ include file="wish_lists/prd_list_area.jsp" %>
			<%@ include file="wish_lists/pagination.jsp" %>
		</div>
	</div>
	<form action="<c:url value='/shop/mypage/note/wish_lists.do' />" id="ListForm" name="ListForm" method="post" accept-charset="utf-8">
		<!-- <input type="hidden" name="witplus_csrf_token" value=""> -->
		<input type="hidden" name="page" id="page" value="${maps.page}">
	</form>
	<form action="<c:url value='/shop/mypage/note/wish_lists.do' />" id="DelWishForm" name="DelWishForm" method="post" accept-charset="utf-8">
		<!-- <input type="hidden" name="witplus_csrf_token" value=""> -->
		<input type="hidden" name="product_cd" value="">
	</form>
	<!-- page_script -->
	<link rel="stylesheet" type="text/css" href="/asset/css/shop/jqcloud.min.css">
	<link rel="stylesheet" type="text/css" href="/asset/css/shop/slick.css">
	<script type="text/javascript" src="/asset/js/jqcloud.min.js"></script>
	<script type="text/javascript" src="/asset/js/slick.min.js"></script>
	<!-- http://mistic100.github.io/jQCloud/demo.html -->
	<script>
		$('.main_img .slider').slick({
			dots: true,
			arrows: true
		});
		//스크롤 바닥 감지
		//window.addEventListener('scroll', moreShowList);
		function moreShowList() {
		// 	if((window.innerHeight + window.pageYOffset) >= document.querySelector("body").offsetHeight - window.innerHeight) {
			if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 2.3 )) {
				getList('add');
			}
		}
	 // 슬라이드시 비비노 키워드 호출
		$('.main_img .slider').on("afterChange", function(){
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
	//                 		console.log(vivino[i]);	
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
	/**************************************************/
	//선택 삭제
	function del_btn(product_cd){
		var frm = document.DelWishForm;
	    frm.product_cd.value = product_cd;
	    
	    Csrf.Set(_CSRF_NAME_); //토큰 초기화
	    $.ajax({
	        type: "POST",
	        url: "/shop/mypage/note/wish_proc_ajax?ajax_mode=DEL",
	        data: $("#DelWishForm").serialize(),
	        success: function(res) {
				location.reload();
	        },
	        error: function(res) {
	            alert(res.responseText);
	        }
	    });  
	};
	/**
	 * 상품 리스트 불러오기 (더보기)
	 * @param  {[type]} mode [description]
	 * @return {[type]}      [description]
	 */
	function getList(mode){
		var page = $("#page").val();
		if( mode=="add"){
			page = parseInt(page)+1;
		}
		$("#page").val(page);
		//Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type: "POST",
			url : "/shop/mypage/note/wish_lists_ajax",
			data: $("#ListForm").serialize(),
			success : function (res) {
				if($.trim(res) == ""){
					// alert("마지막 페이지입니다.");
					// $('#showMoreList').css('display','none');
					window.removeEventListener('scroll', moreShowList);
				} else {
					if(mode == 'add'){
						$("#wish_ul").append(res);
					} else if(mode == 'fil'){
						$("#wish_ul").html(res);
					}
					$('.main_img .slider').not('.slick-initialized').slick({
						dots: true,
						arrows: true
					});
				}
				return;
			},
			error: function (res) {
				alert(res.responseText);
			}
		});
	}
	// 선택 삭제
	$(".btn_select").on("click", function(){
		multiDel();
	});
	//전체 삭제
	$(".btn_all").on("click", function(){
		if($("input[name='wish[]']").length > 0){
			$("input[name='wish[]']").each(function(idx){
					this.checked=true;
			});
			multiDel();
		}else{
			alert('상품이 존재하지 않습니다.');
		}
	});
	function multiDel(){
		var frm = document.DelWishForm;
		var wish_product = [];
		if($("input[name='wish[]']:checked").length > 0){
			$("input[name='wish[]']:checked").each(function(idx){
					wish_product.push($(this).val());
			});
			//frm.product_cd.value = wish_product.join("', '");
			var payload = {product_codes: wish_product}; // 선택된 상품 코드 배열
			if(confirm("선택한 상품을 삭제하시겠습니까?")){
				//Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type: "POST",
					url: "/shop/mypage/note/wish_proc_ajax?ajax_mode=DEL",
					contentType: "application/json",
					dataType: "json",
					//data: $("#DelWishForm").serialize(),
					data: JSON.stringify(payload),
					/* beforeSend: function(xhr, settings) {
				        console.log("AJAX Data:", settings.data); // 전송할 데이터를 콘솔에 출력
				    }, */
					success: function(res) {
						var wishList = document.querySelectorAll("ul#wish_ul li"); // ul#wish_ul의 li 요소 목록
						var checkedItems = document.querySelectorAll("input[name='wish[]']:checked"); // 체크된 input[name='wish[]']
						// ul#wish_ul li 개수와 input[name='wish[]']:checked 개수 비교
						if (wishList.length === checkedItems.length) {
							var listForm = document.forms["ListForm"]; // ListForm 가져오기
							var pageInput = listForm.querySelector("#page"); // page 요소 가져오기
							// 현재 페이지 값을 가져와 -1한 값을 계산
							var newPage = pageInput.value - 1; // 이미 정수이므로 변환 없이 계산
							if (newPage < 1) newPage = 1; // 페이지가 1보다 작아지지 않도록 보정
							window.location.href = "wish_lists.do?page=" + newPage; // 새 URL로 이동
						} else {
							location.reload(); // 페이지 새로고침
						}
					},
					error: function(res) {
						alert(res.responseText);
					}
				});  
			}
		}else{
			alert("삭제할 상품을 선택해 주세요.");
			return false;
		}
	}
	</script>
	<!--// page_script -->
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