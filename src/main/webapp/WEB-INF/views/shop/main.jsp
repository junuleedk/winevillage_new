<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 와인의 모든 것이 있는 곳 와인빌리지입니다! </title>
<%@ include file="common/common.jsp" %>
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
<%@ include file="common/header.jsp" %>
<!-- //header -->
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<!-- header - 로그인 상태 -->
<%@ include file="common/header_loggedin.jsp" %>
<!-- //header - 로그인 상태 -->
</sec:authorize>
<%@ include file="common/layer.jsp" %>
<%@ include file="common/script.jsp" %>

<!-- contents -->
<section id="contents">
<script type='text/javascript' src="../asset/js/instafeed.js"></script>
<link rel="stylesheet" type="text/css" href="../asset/css/shop/main.css?v=240409200935"/>
<link rel="stylesheet" type="text/css" href="../asset/css/shop/main_pc.css?v=240409200935" media="screen and (min-width:1024px)">
<div class="content main_page">
	<%@ include file="main/main_visual.jsp" %>
	<%@ include file="main/main_category.jsp" %>
	<!-- <div class="section slide_prd product_lists_page sub_tit_wrap theme_con">
        <h2>
            <span>OUR PICK</span>
            <!-- <div class="btn_switch_module js_switch css_switch">
                <input type="checkbox" id="btn_switch01" class="btn_switch_check">
            </div> -->
	<!-- <a href="/shop/product/product_lists" class="btn_more">더보기</a> -->
	<!--/h2>
        <span class="sub_tit">와인나라팀에서 특별히 선정한 상품들을 만나보세요.</span>
        <div class="result_tab">
            <ul>
                            <!-- class="on" -->
	<!--li class='on'><button type="button">이달의 와인</button></li>
                        </ul>
        </div>
        <div class="prd_wrap">
                    	<div class="n_prd_list theme_prd_list on" id="theme_list_3">
                <ul class="">
                                     </ul>
            </div>
                     </div>
    </div> -->
	<%@ include file="main/slide_prd.jsp" %>
	<!-- <div class="section subscribe_area">
        <div class="inner">
            <div class="write_tit">
                <em>매월 한 번 목요일,</em>
                와인 이야기를 보내드립니다.
            </div>
            <div class="write_box">
                <input type="text" name="email" id="email" placeholder="이메일 주소를 입력해주세요.">
                <button type="button" class="btn_txt" onclick="news_sub();"><span>뉴스레터 </span>구독하기</button>
            </div>
        </div>
    </div> -->
    <%@ include file="main/news_area.jsp" %>
</div>
</div>
<!-- 휴면계정안내 -->
<div class="layer dormant_layer" id="dormant_layer" style="display: none;">
<div class="display_table">
	<div class="table_cell">
		<div class="layer_area">
			<button type="button" class="layer_close" onclick="dormant_close()">닫기</button>
			<div class="layer_con">
				<h3 class="tit">휴면 계정 안내</h3>
				<p class="sub_tit">
					회원님의 계정이 1년이상 로그인하지 않아 관련 <br class="pc_hidden">
					법령에 따라 <br class="mb_hidden">
					휴면 상태로 전환되었습니다.
				</p>
				<div class="user_year">
					<p><span>최근 접속일</span> : <span></span></p>
					<p><span>휴면 전환일</span> : <span></span></p>
				</div>
				<p class="sub_txt">
					모든 서비스를 다시 이용하고 싶을 경우에는, <br class="pc_hidden">
					<span>휴면 해제하기</span>를 선택해 주세요.
				</p>
				<ul class="mem_lists">
				</ul>
				<div class="btn_area col2">
					<button type="button" class="btn_txt" onclick="dormant_close()">취소</button>
					<button type="button" class="btn_txt btn_black" onclick="dormant_submit();">휴면 해제하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<!-- //휴면계정안내 -->
<!-- 리뷰 레이어 (유형 퍼블 추가) -->
<div class="layer review_img_layer">
<div class="display_table">
	<div class="table_cell">
		<div class="layer_area">
			<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
			<div class="layer_tit">
				리뷰 보기
			</div>
			<div class="layer_con" id="review_div">
			</div>
		</div>
	</div>
</div>
</div>
<!-- //리뷰 레이어 (유형 퍼블 추가) -->
<!-- page_script -->
<link rel="stylesheet" type="text/css" href="../asset/css/shop/slick.css"/>
<link rel="stylesheet" type="text/css" href="../asset/css/shop/jqcloud.min.css"/>
<script type="text/javascript" src="../asset/js/jqcloud.min.js"></script>
<script type="text/javascript" src="../asset/js/slick.min.js"></script>
<script>
    function dormant_submit(){
                    location.href = "/shop/auth/change_dorment?num=";
            }
    function dormant_close(){
        $('#dormant_layer').hide();
    }
	$(document).ready(function(){
        $('.main_layer').each(function(idx, item){
            var targetId = $(item).find(".not_today input").attr('id');
            if(getCookie(targetId)!="Y"){
                $(item).fadeIn();
            }else{
                $(item).fadeOut();
            }
        });
        // our pick, BEST-SELLERS 
        // $(".result_tab ul li:first").addClass('on');
        // $(".se_teb ul li:first").addClass('on');
        // $(".prd_wrap .prd_list:first").addClass('on');
        // $(".prd_wrap .se_list:first").addClass('on');
    });
    function exit(tg){
        var targetLayer = $(tg).parents(".main_layer"),
            target = targetLayer.find(".not_today input"),
            targetId = target.attr("id");
        targetLayer.fadeOut();
    	if(target.is(":checked") == true){
        	setCookie(targetId,"Y",1);
        }
    }
	function getCookie(name){
		var cName = name + "=";
		var x = 0;
		while ( x <= document.cookie.length )
		{
			var y = (x+cName.length);
			if ( document.cookie.substring( x, y ) == cName )
			{
				if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
					endOfCookie = document.cookie.length;
				return unescape( document.cookie.substring( y, endOfCookie ) );
			}
			x = document.cookie.indexOf( " ", x ) + 1;
			if ( x == 0 )
				break;
		}
		return "";
	}
    function setCookie(cname, cvalue, exdays) {
    	var d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000)); //시간설정
        var expires = "expires="+d.toUTCString(); var temp = cname + "=" + cvalue + "; " + expires;
        document.cookie = temp;
    }
    // 뉴스레터구독
    function news_sub(){
        var regExp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.[a-zA-Z]{2,4}$/;
    	var email = $("#email").val();
    	if(!email){
    		alert("이메일을 입력해주세요.");
    		$("#email").focus();
            return false;
    	}
        if(!regExp.test(email)){
            alert("이메일 형식이 아닙니다.");
            $("#email").focus();
            return false;
        }
        if(confirm("뉴스레터구독을 하시겠습니다?")){
            Csrf.Set(_CSRF_NAME_); //토큰 초기화
            $.ajax({
                type: "POST",
                url : "/shop/main/newsletter_insert_ajax",
                data: {email:email},
                success : function (res) {
                    if (typeof(res)=="string"){ res = JSON.parse(res); }    
    				if(res.status == "ok"){
						alert("뉴스레터 구독신청되었습니다.");
						$("#email").val("");
						return false;
    				}else{
                        alert(res.msg);
    					console.log("err");
    					return false;
    				}
                },
                error: function (res) {
                    alert("뉴스레터 구독 중 에러가 발생했습니다.");
                    alert(res.responseText);
                }
            });
        }
    }
    //메인 비주얼
    $(".m_slide").slick({
    	lazyLoad: 'ondemand',
        dots: false,
        arrows: false,
    	slidesToShow: 2,
        autoplay: true,
        autoplaySpeed: 3000,
        responsive: [{
            breakpoint: 1023,
            settings: {
                lazyLoad: 'ondemand',
                dots: false,
                arrows: false,
                slidesToShow: 1,
                autoplay: true,
                autoplaySpeed: 3000,
            }
        }]
    }).on("afterChange", function(event, slick, currentSlide){
        var crt = slick.currentSlide+1,
            total = slick.slideCount;
        $(".control_box .current").text(txtZeros(crt, 2));
    	$(".control_box .total").text(txtZeros(total, 2));
    });
    // $(".main_layer .slider").slick({
    //     dots: true,
    //     arrows: false
    // });
	// 리뷰 이미지 레이어 오픈 (유형 퍼블 추가)
    function reviewImgLayer(use_review_seq){
    	Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	$.ajax({
            type: "post",
            url : "/shop/product/review_view_ajax",
            data: {use_review_seq:use_review_seq},
            success : function (res) {
    			if(res != ""){
    				$("#review_div").empty();
    				$("#review_div").append(res);
    				commonUI.layer.open('review_img_layer');
    				 //리뷰 이미지 레이어 슬라이드
                    $(".review_img_layer .rv_slide").slick({
                        arrows: true,
                        dots: true,
                        infinite: true,
                    });
    			}
            },
            error: function (res) {
                alert("error");
            }
        });
    }
    //동영상 재생버튼
    $(".btn_play").on("click", function(){
        document.getElementById("video1").play();
        $(this).remove();
    });
    $(".control_box .prev").on("click", function(){
        $(".m_slide").slick("slickPrev");
    });
    $(".control_box .next").on("click", function(){
        $(".m_slide").slick("slickNext");
    });
    var mSlideCnt = $(".m_slide .slick-slide").length - 4;
    $(".control_box .total").text(txtZeros(mSlideCnt, 2));
    //한 자리일 때 0 넣기
    function txtZeros(n, digits) {
      var zero = '';
      n = n.toString();
      if (n.length < digits) {
        for (var i = 0; i < digits - n.length; i++)
          zero += '0';
      }
      return zero + n;
    }
    //중간 배너 슬라이드
    $('.b_slide').slick({
		lazyLoad: 'ondemand',
        dots: true,
        arrows: true,
        autoplay: true,
        autoplaySpeed: 1500,
        responsive: [{
            breakpoint: 1023,
            settings: {
				lazyLoad: 'ondemand',
                dots: true,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 1500
            }
        }]
    });
    //OUR STORIES 슬라이드
    $('.n_slide').slick({
        dots: false,
        arrows: false,
        variableWidth: true,
        slidesToScroll:1,
        slidesToShow:5,
        responsive: [{
            breakpoint: 1023,
            settings: {
                dots: false,
                arrows: false,
                variableWidth: true,
                slidesToScroll:1,
                slidesToShow:1,
            }
        }]
    });
    //테마와인 반응형(PC) 슬라이드
    var themeSlider = $('.theme_area .prd_list>ul');
    var themeSlickOptions = {
        centerMode:false,
        variableWidth:true,
        slidesToScroll:1,
        slidesToShow:3,
        infinite:true,
        dots:false,
        arrows:true,
        swipe:false,
        // autoplay: true,
        // autoplaySpeed: 1500
    };
    $(window).on('load resize', function(){
        if($(window).width() < 1023){
            if($(".theme_area .prd_list>.slick-slider").length){
                themeSlider.slick("unslick");
            }
            // if($(".select_area .prd_list>.slick-slider").length){
            //     selectSlider.slick("unslick");
            // }
        }else{
            themeSlider.not('.slick-initialized').slick(themeSlickOptions);
            // selectSlider.not('.slick-initialized').slick(selectSlickOptions);
        }
    });
    //UI/UX 개편 와인 반응형(PC) 슬라이드
    var newPrdSlider = $('.slide_prd .prd_wrap>ul');
    var newPrdSlickOptions = {
        centerMode:false,
        variableWidth:true,
        slidesToScroll:1,
        slidesToShow:5,
        infinite:true,
        dots:false,
        arrows:true,
        swipe:false,
    };
    // OUR PICK
    $(function(){
		$(".theme_prd_list").css("display","none");
		$('.theme_prd_list').each(function(){
             if ($(this).hasClass("on")) {
                    $(this).css("display","block");
                }else {
                  $(this).css("display","none");
                }
        });
	});
    //UI/UX 개편 와인 반응형(PC) 슬라이드 - OUR PICK
    var themeSlider = $('.slide_prd .prd_wrap .theme_prd_list ul');
    var themeSlickOptions = {
		lazyLoad: 'ondemand',
        centerMode:false,
        variableWidth:true,
        slidesToScroll:1,
        slidesToShow:5,
        infinite:true,
        dots:false,
        arrows:true,
        swipe:false,
    };
    $(window).on('load resize', function(){
        if($(window).width() < 1023){
            if($(".slide_prd .prd_wrap>.slick-slider").length){
                newPrdSlider.slick("unslick");
            }
        }else{
            newPrdSlider.not('.slick-initialized').slick(newPrdSlickOptions);
        }
    });
    // OUR PICK
    $(".result_tab li button").on("click", function(){
    	console.log("aa");
        var i = 0;
        //탭 선택 시 첫번째 슬라이드로
        if($(".theme_con .prd_wrap .theme_prd_list .slick-slider").length){
            $('.theme_con .theme_prd_list ul').slick('slickGoTo', i);
        }
        var $this = $(this).parent();
        var index = $this.index();
        $this.addClass("on").siblings().removeClass("on");
        var $outer = $this.closest('.section');
        var $current = $outer.find(' > .prd_wrap > .theme_prd_list.on');
        var $post = $outer.find(' > .prd_wrap > .theme_prd_list').eq(index);
        $current.removeClass('on');
        $post.addClass('on');
        $('.theme_con .theme_prd_list').each(function(){
            if ($(this).hasClass("on")) {
            	$(this).css("display","block");
            }else {
            	$(this).css("display","none");
            }
        });
    });
    var cust_seq = '';
    var cust_seq_boolean = cust_seq ? 'Y' : 'N';
    // 뒤로가기 추가
    var pageInt = loadScrollgetCookie("pageInt");
    if(pageInt == null){
    	pageInt = 0;
    }
    var initGetList = false;
    var product = '[{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"19","gubun_cd":"151","gubun_nm":"\ub808\ub4dc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"20","gubun_cd":"152","gubun_nm":"\ud654\uc774\ud2b8 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"21","gubun_cd":"153","gubun_nm":"\uc2a4\ud30c\ud074\ub9c1 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"22","gubun_cd":"154","gubun_nm":"\uc0f4\ud398\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"23","gubun_cd":"155","gubun_nm":"\ub85c\uc81c \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"8","gubun_cd":"101","gubun_nm":"\ud504\ub791\uc2a4 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"9","gubun_cd":"102","gubun_nm":"\uc774\ud0c8\ub9ac\uc544 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"10","gubun_cd":"103","gubun_nm":"\uc2a4\ud398\uc778 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"11","gubun_cd":"104","gubun_nm":"\ub3c5\uc77c \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"12","gubun_cd":"105","gubun_nm":"\uce60\ub808 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"13","gubun_cd":"106","gubun_nm":"\ubbf8\uad6d \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"14","gubun_cd":"107","gubun_nm":"\ud638\uc8fc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"15","gubun_cd":"108","gubun_nm":"\ub274\uc9c8\ub79c\ub4dc \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"16","gubun_cd":"109","gubun_nm":"\uc544\ub974\ud5e8\ud2f0\ub098 \uc640\uc778","file_nm3":null},{"group_cd":"1110","mobile_group_nm":"","group_nm":"[\uba54\uc778] \ucd94\ucc9c\uc640\uc778 \uae30\ubcf8\uc0c1\ud488","file_nm1":"36e10069447ca6f9199c1b3e8d818287.jpg","file_nm2":"00c1dcebacb51bf5f0a51300b8b3c4e3.jpg","content1":"","content2":"","url":"","url2":"","code_gb":"","list_type":"G","type_gb":"2","group_gubun_seq":"18","gubun_cd":"111","gubun_nm":"\uae30\ud0c0\uc2e0\ub300\ub959 \uc640\uc778","file_nm3":null}]';
    var cmd_product = '';
    product = JSON.parse(product);
    console.log("cmd"+cmd_product);
    function callApi(mode, param){
    	scrollVal = false;
    	$.ajax({
    		type: "get",
    		url : "/shop/main/getRecommend_ajax",
    		async: false,
    		data: param,
    		success : function (res) {
    			if(!res){
    				if( mode === 'Y'){
    					$("#par_recom_"+product[loadDataIdx]['gubun_cd']).remove();
    				}
    			}else{
                    $("#par_recom_"+product[loadDataIdx]['gubun_cd']).show();
    				$("#recom_"+product[loadDataIdx]['gubun_cd']).append(res);
    				var aLinkBtn = $(".scrollEventEle a");
    				aLinkBtn.not('.scrollSaveEvent').on('click', function(){
    					event.preventDefault();
    					scrollSaveEventBinding($(this).closest('.scrollEventEle'));
    					window.location.href = $(this).attr('href');
    				});
    				aLinkBtn.addClass('scrollSaveEvent');
                    //하단 무한스크롤 반응형(PC) 슬라이드                
                    $('.scroll_area .prd_list>ul').not('.slick-initialized').slick({
                        centerMode:false,
                        variableWidth:true,
                        slidesToScroll:1,
                        slidesToShow:3,
                        infinite:true,
                        dots:false,
                        arrows:true,
                        swipe:false,
                        responsive:[{
                            breakpoint: 1024,
                            settings:{
                                centerMode:false,
                                variableWidth:true,
                                slidesToScroll:1,
                                slidesToShow:3,
                                infinite:true,
                                dots:false,
                                arrows:true,
                                swipe:false,
                            }
                        }]
                    });
    			}
    			console.log(pageInt);
    			if(loadDataIdx < pageInt) {
    				loadDataIdx += 1;
    				// console.log("스크롤 실행");
    				//var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
    				if( cust_seq && cmd_product ){
    					var datatest = { 'bigo' : product[loadDataIdx]['bigo'] } ;
    					console.log(datatest);
    					callApi('Y',datatest);
    				}else{
    					var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
    					callApi('N',datatest);
    				}
    			}else{
    				loadScroll();
    				if( loadDataIdx == (product.length-1) ){
    					window.removeEventListener('scroll', moreShowList);
    				}else{
    					loadDataIdx += 1;
    					scrollVal = true;
    				}
    			}
    		},
    		error: function (res) {
    			//alert("error");
    		}
    	});
    }
    //스크롤 바닥 감지
    window.addEventListener('scroll', moreShowList);
    var scrollVal = true;	//스크롤 무한로딩으로 추가
    var loadDataIdx = 0;
    function moreShowList() {
        if ($(window).scrollTop() >= $(document).height() - ($(window).height() * 3.5 )) {
            if( scrollVal === true) {
                // console.log("스크롤 실행");
                //var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
    			 if( cust_seq && cmd_product ){
    				 var datatest = { 'bigo' : product[loadDataIdx]['bigo'] } ;
//     				 console.log(datatest);
    				 callApi('Y',datatest);
    			 }else{
    				 var datatest = { 'group_cd' : product[loadDataIdx]['group_cd'], 'gubun_cd' : product[loadDataIdx]['gubun_cd'] } ;
    				 callApi('N',datatest);
    			 }
             //   callApi(cust_seq_boolean, datatest);
            }
        }
    }
    // js 호출안되어 추가
    product.likeProduct = function(product_cd) {
        var now_url = location.href;
    	if($('.wish_'+product_cd).hasClass('on')){
    		$(".wish_"+product_cd).removeClass("on");
            var ajax_mode = "DEL";
    	}else{
    		$(".wish_"+product_cd).addClass("on");
            var ajax_mode = "ADD";
    	}
        if( now_url.indexOf("/main") > -1){
            if( now_url.indexOf("/main/main") > -1){
                var url = "/shop/mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
            } else {
                var url = "/shop/mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
            }
        } else if( now_url.indexOf("/mypage") > -1){
            var url = "../note/wish_proc_ajax?ajax_mode="+ajax_mode;
        } else {
            var url = "../mypage/note/wish_proc_ajax?ajax_mode="+ajax_mode;
        }
//     	console.log(url);
    	if($("#session_id").val()){
    	    Csrf.Set(_CSRF_NAME_); //토큰 초기화
    	    $.ajax({
    	        type: "POST",
    	        url : url,
    	        dataType : 'json',
    	        data: { product_cd : product_cd },
    	        success : function (res) {
    				if (typeof(res)=="string")	{
    					res = JSON.parse(res);
    				}
    	            if( $.trim(res.status) == "ok"){
    					$('#header_like_cnt').text(res.data['like_cnt']);
    	                return;
    	            }else{
    	                return;
    	            }
    	            return;
    	        },
    	        error: function (res) {
    				if (typeof(res)=="string")	{
    					res = JSON.parse(res);
    				}
    	            alert(res.responseText);
    	        }
    	    });
    	}else{
    		commonUI.layer.open('login_layer');
    	}
    }
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
//     	console.log(getCurrentPd);
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
//     	console.log(_target)
    	loadScrollsetCookie("currentPd", _target.attr('data-val'));
    	loadScrollsetCookie("pageInt", loadDataIdx);
    	// setCookie("docHeight", $('#contents').height());
    }
    function deleteCookie (name) {
    	document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
    }
</script>
<!-- //page_script -->
</section>
<!-- //contents -->

<!-- footer -->
<%@ include file="common/footer.jsp" %>
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