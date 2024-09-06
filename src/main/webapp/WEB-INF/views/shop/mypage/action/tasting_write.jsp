<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 나의 리뷰관리</title>
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
<section id="contents" style="margin-top: 62px;">
<div class="lnb mypage_lnb lnb_wrap">
	<div class="pc_hidden">
		<a href="javascript:history.go(-1);" class="prev">이전</a>
		<div class="select_brand js_select" id="select_brand">
			<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>나의 리뷰관리</span></button>
			<ul class="mb_lnb_lists">
				<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
				<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
				<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
				<!-- <li><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li> -->
				<!-- <li><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
				<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
				<!-- <li><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
				<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
				<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
				<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천</a></li>
				<!-- <li><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
				<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
				<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
				<li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
				<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
				<li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
				<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
			</ul>
		</div>
	</div>
	<div class="common_lnb tasting_lnb">
		<div class="my">
			<div class="txt">
				<div class="img gold grade_info g100">
					<span>실버</span>
				</div>
				<p>
					<strong class="name">고객</strong>님
				</p>
			</div>
			<div class="btn_area">
				<button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
				<!-- <span>시음노트 작성하면 등급 UP</span> -->
			</div>
		</div>
		<div class="my_class_info">
			<ul class="">
				<!-- <li class=" switch_con">
                    <div class="info_switch">
                        <div class="btn_switch_module js_switch css_switch">
						<input type="hidden" id="follower_yn" value="Y">
                        <input type="checkbox" id="mypage_info_01" class="btn_switch_check" onclick="myPublic()" checked>
                            <div class="btn_switch_area">
                                <span class="txt left pc_hidden">ON</span>
                                <div class="btn_switch">
                                    <span class="pc_txt left mb_hidden">ON</span>
                                    <label class="bar" for="mypage_info_01">&nbsp;</label>
                                    <span class="pc_txt right mb_hidden">OFF</span>
                                </div>
                                <span class="txt right pc_hidden">OFF</span>
                            </div>
                        </div>
                        <p class="tit"><a href='/shop/mypage/action/follower'>나의 팔로워</a></p>
                    </div>
                    <div class="num_box">
                        <a href="/shop/mypage/action/follower">
                            <span>0</span>
                            <em>위</em>
                        </a>
                    </div>
                </li>
                <li class="">
                    <p class="tit"><a href='/shop/mypage/action/following'>나의 팔로잉</a></p>
                    <div class="num_box">
                        <a href="/shop/mypage/action/following">
                            <span>0</span>
                        </a>
                    </div>
                </li> -->
				<li class="">
					<p class="tit">도움이 돼요</p>
					<div class="num_box"><span>0</span></div>
				</li>
				<li class="">
					<p class="tit">도움이 안돼요</p>
					<div class="num_box"><span>0</span></div>
				</li>
			</ul>
		</div>
	</div>
	<div class="mypage_link mb_hidden">
		<ul class="depth_01">
			<li>
				<a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
					<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
					<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
					<li><a href="/shop/cart/cart_lists">장바구니</a></li>
					<!-- <li><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
	                    <li><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
				</ul>
			</li>
			<li>
				<a href="#none">쇼핑수첩</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
					<!-- <li><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
					<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
					<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">나의 활동</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천신청</a></li>
					<!-- <li><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
					<li class="on"><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#none">개인정보</a>
				<ul class="depth_02">
					<li><a href="/shop/mypage/action/qna_lists">문의내역확인</a></li>
					<li><a href="/shop/mypage/account/password_cert">회원정보수정</a></li>
					<li><a href="/shop/mypage/account/sns_connect">SNS 연동관리</a></li>
					<li><a href="/shop/mypage/account/change_password">비밀번호 변경</a></li>
					<li><a href="/shop/mypage/account/withdrawal">회원탈퇴</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>
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
<div class="content mypage action tasting tasting_write_page">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">나의 리뷰관리</h2>
			</div>
		</div>
		<div class="lnb_wrap">
			<ul class="menu tab3">
				<li class="on"><a href="/shop/mypage/action/tasting_lists"><span>리뷰 작성 <em>1</em></span></a></li>
				<li><a href="/shop/mypage/action/tasting_view"><span>나의 리뷰 보기 </span></a></li>
				<li><a href="/shop/mypage/action/tasting_gallery_view"><span>나의 갤러리</span></a></li>
			</ul>
		</div>
		<form action="https://www.winenara.com/shop/mypage/action/proc" id="myform" onsubmit="return checkForm(this);" enctype="multipart/form-data" method="post" accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token" value="7db71478c2b8956faab62a5c1adf3e0a">
			<input type="hidden" name="mode" id="mode" value="N">
			<input type="hidden" name="ocode" value="202405231716140GPA">
			<input type="hidden" name="cust_seq" value="115245">
			<input type="hidden" name="user_id" value="gogek1234">
			<input type="hidden" name="user_nm" value="고객">
			<input type="hidden" name="product_cd" value="02B044">
			<input type="hidden" name="product_nm" value="뵈브 드 베르네 브뤼 200ml">
			<input type="hidden" name="product_nm_org" value="">
			<input type="hidden" name="product_kind" value="605">
			<!--와인 종류-->
			<input type="hidden" name="national" value="G501">
			<!--국가-->
			<input type="hidden" name="vintage" value="">
			<!--빈티지-->
			<input type="hidden" name="capacity" value="">
			<!--용량-->
			<input type="hidden" name="order_date" value="2024-01-04 17:25:18">
			<input type="hidden" name="pickup_store_cd" value="2219">
			<div class="tasting_wrap">
				<div class="o_lists">
					<!-- <div class="btn_switch_module js_switch css_switch">
                        <p>시음노트 공개</p>
						<input type="hidden" name="product_public_yn" id="product_public_yn" value="Y">
                        <input type="checkbox" id="openClose"  class="btn_switch_check" checked>
						                        <div class="btn_switch_area">
                            <div class="btn_switch">
                                <span class="txt left">ON</span>
                                <label class="bar" for="openClose">&nbsp;</label>
                                <span class="txt right">OFF</span>
                            </div>
                        </div>
                    </div> -->
					<ul>
						<li>
						<div class="top_date">
							2024-05-23&nbsp;<em>202405231716140GPA</em>&nbsp;
							<!--<span class="store">시청점</span>-->
						</div>
						<div class="o_wrap">
							<div class="box ip_img" style="background:#FFF">
								<picture>
								<!--[if IE 9]><video style="display: none;"><![endif]-->
								<source srcset="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(min-width:768px)">
								<!-- pc이미지 -->
								<source srcset="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" media="(max-width:767px)">
								<!-- mb이미지 -->
								<!--[if IE 9]></video><![endif]-->
								<img src="../../../uploads/product/200/8504982956dc85f9d9ece56388fd46c6.png" alt="">
								<!-- pc이미지 -->
								</picture>
							</div>
							<div class="box con">
								<div class="more_info">
									<p class="store">시청점</p>
									<p class="prd_name">
										<a href="/shop/mypage/shopping/order_view">뵈브 드 베르네 브뤼 200ml</a>
									</p>
									<span class="label" style="background:#FFF">프랑스</span>
									<div>
										- 샤르마 방식(Charmat Method) 생산 - 도사쥬: 12gr/L (Brut) / 시음 적정 온도 : 8°C.
									</div>
								</div>
							</div>
							<!-- <div class="box progress">
                                    <ul>
                                        <li class="date">
                                            <p>9/20</p>
                                            <p>9/21</p>
                                            <p>9/25</p>
                                            <p>9/25</p>
                                        </li>
                                        <li class="s_info">
                                            <div class="progressbar">
                                                <p class="fill" value="75" style="width: 75%;"></p>
                                                <p class="empty"></p>
                                            </div>
                                        </li>
                                        <li class="txt">
                                            <p>주문</p>
                                            <p>이동중</p>
                                            <p>도착</p>
                                            <p>픽업</p>
                                        </li>
                                    </ul>
                                </div> -->
						</div>
						</li>
					</ul>
				</div>
				<div class="tasting_lists">
					<div class="form_area">
						<ul>
							<li class="review_star">
							<div class="l_tit">
								<label for="check_5" id="star_label">와인평가</label>
								<!-- <span class="sub_txt">왜 해야하나?</span> -->
							</div>
							<div class="star_select">
								<input type="radio" id="check_1" class="star_c star_1" name="star" value="1">
								<input type="radio" id="check_2" class="star_c star_2" name="star" value="2">
								<input type="radio" id="check_3" class="star_c star_3" name="star" value="3">
								<input type="radio" id="check_4" class="star_c star_4" name="star" value="4">
								<input type="radio" id="check_5" class="star_c star_5" name="star" value="5">
								<div class="star_wrap">
									<label for="check_1" class="check_1" data-num="1">별점 1</label>
									<label for="check_2" class="check_2" data-num="2">별점 2</label>
									<label for="check_3" class="check_3" data-num="3">별점 3</label>
									<label for="check_4" class="check_4" data-num="4">별점 4</label>
									<label for="check_5" class="check_5" data-num="5">별점 5</label>
									<span>
									</span>
								</div>
							</div>
							<!-- <li>
                                <div class="l_tit">
                                    <label for="aroma">아로마</label>
									<span class="sub_txt" id="aroma_txt">(0/20자 이상 입력 시 1000마일리지 지급)</span>
								</div>
                                <div class="form_box">
                                    <input type="text" id="aroma" name="aroma" class="js_tasting_input" placeholder="예) 블루베리, 체리, 자두" maxlength="40" value="">
                                </div>
                            </li>
                            <li>
                                <div class="l_tit">
                                    <label for="pairing">페어링</label>
									<span class="sub_txt" id="pairing_txt">(0/20자 이상 입력 시 1000마일리지 지급)</span>
								</div>
                                <div class="form_box">
                                    <input type="text" id="pairing" name="pairing" class="js_tasting_input" placeholder="예) 돼지고기 볶음 요리" maxlength="40" value="">
                                </div>
                            </li> -->
							</li>
							<li>
								<div class="l_tit">
									<label for="content">리뷰작성</label>
									<!-- <span class="sub_txt" id="content_txt">(0/20자 이상 입력 시 1000마일리지 지급)</span> -->
								</div>
								<div class="form_box">
									<textarea id="content" name="content" class="js_tasting_input" placeholder="내용을 입력해주세요."></textarea>
									<!-- <p class="input_info_txt">안내메시지 텍스트</p> -->
								</div>
							</li>
							<li>
								<div class="l_tit">
									<label for="content">첨부 이미지</label>
								</div>
								<ul class="upload_img_lists">
									<li>
										<div class="upload_img_area">
											<div class="upload_imgbox">
												<label for="img_upload1">업로드</label>
												<input type="file" id="img_upload1" name="img_upload1">
												<div class="img">
													<img src="/uploads/review/" alt="" id="ex_file1_img">
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="upload_img_area">
											<div class="upload_imgbox">
												<label for="img_upload2">업로드</label>
												<input type="file" id="img_upload2" name="img_upload2">
												<div class="img">
													<img src="/uploads/review/" alt="" id="ex_file2_img">
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="upload_img_area">
											<div class="upload_imgbox">
												<label for="img_upload3">업로드</label>
												<input type="file" id="img_upload3" name="img_upload3">
												<div class="img">
													<img src="/uploads/review/" alt="" id="ex_file3_img">
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="upload_img_area">
											<div class="upload_imgbox">
												<label for="img_upload4">업로드</label>
												<input type="file" id="img_upload4" name="img_upload4">
												<div class="img">
													<img src="/uploads/review/" alt="" id="ex_file4_img">
												</div>
											</div>
										</div>
									</li>
								</ul>
							</li>
						</ul>
						<!-- <div class="checkbox">
                            <input type="checkbox" id="checkbox1">
                            <label for="checkbox1">체크박스</label>
                        </div> -->
						<!-- 첨부 이미지 -->
						<div class="total_mile">
							<!-- <span id="mileage_text">0 마일리지 적립예정</span> -->
							<input type="hidden" id="mileage" name="mileage" value="0">
						</div>
					</div>
					<div class="btn_area">
						<button type="button" class="btn_txt" onclick="history.back()"><span>취소</span></button>
						<button type="submit" class="btn_txt btn_black js_tasting_button" disabled=""><span>등록하기</span></button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- page_script -->
<script>
	$(document).ready(function(){
		$("#openClose").change(function(){
			if($("#openClose").is(":checked")){
				$("#product_public_yn").val('Y');
			}else{
				$("#product_public_yn").val('N');
			}
		});
	});
    function writeCheck(){
        var btnActive = 0;
        $('.js_tasting_input').each(function(){
            if($(this).val() == ''){
                console.log('no val')
            }else{
                console.log('val')
                btnActive += 1;
            }
        })
        if(btnActive > 0){
            // disabled 삭제
            $(".js_tasting_button").removeAttr("disabled");
        }else{
            if(!starChecked){
                // disabled 처리
                $(".js_tasting_button").attr("disabled",true);
            }
        }
    }
    $('.js_tasting_input').on('change', function(){
        writeCheck();
    })
    $(".note_tab .note_info").mouseover(function(){
        $(".note_info_con").css("display", "block");
    });
    $(".note_tab .note_info").mouseout(function(){
        $(".note_info_con").css("display", "none");
    });
    var starChecked = false;
    $('.star_select .star_c').on('click',function(){
        const starVal = $(this).attr('value');
        console.log(starVal)
        $('.star_wrap span').width(starVal*20+'px')
        // disabled 삭제
        $(".js_tasting_button").removeAttr("disabled");
        starChecked = true;
    })
    const drawStar = (target) => {
        document.querySelector(`.star_select .star_c`).style.width = `${target.value * 20}%`;
    }
	var AromaMileage	= 0;
	var PairingMileage	= 0;
	var contentMileage	= 0;
	function updateMileage(){
		if( $("#aroma").val().length >= 20 && $("#pairing").val().length >= 20 && $("#content").val().length >= 20 ){
			$("#mileage").val( 1000 );
			$("#mileage_text").text(  1000  + ' 마일리지 적립예정');
		}else{
			$("#mileage").val( 0 );
			$("#mileage_text").text(  0  + ' 마일리지 적립예정');
		}
		//alert( $("#pairing").val().length );
		/*
		$("#mileage").val( AromaMileage + PairingMileage + contentMileage );
		$("#mileage_text").text(  AromaMileage + PairingMileage + contentMileage  + ' 마일리지 적립예정');
		*/
	}
	$('#aroma').keyup(function (e) { 
		let content = $(this).val(); // 글자수 세기 
		$('#aroma_txt').text(content.length + '자');
		$('#aroma_txt').text('('+content.length + '/20자 이상 입력 시 1000마일리지 지급');
		if( content.length >= 20 ){
			AromaMileage = 1000;
		}else{
			AromaMileage = 0;
		}
		updateMileage();
	}); 
	$('#pairing').keyup(function (e) { 
		let content = $(this).val(); // 글자수 세기 
		$('#pairing_txt').text(content.length + '자');
		$('#pairing_txt').text('('+content.length + '/20자 이상 입력 시 1000마일리지 지급');
		if( content.length >= 20 ){
			PairingMileage = 1000;
		}else{
			PairingMileage = 0;
		}
		updateMileage();
	}); 
	$('#content').keyup(function (e) { 
		let content = $(this).val(); // 글자수 세기 
		$('#content_txt').text(content.length + '자');
		$('#content_txt').text('('+content.length + '/20자 이상 입력 시 1000마일리지 지급');
		if( content.length >= 20 ){
			contentMileage = 1000;
		}else{
			contentMileage = 0;
		}
		updateMileage();
	}); 
	function checkForm(){
		var mode  = $("#mode").val();
		if( mode === 'N') {
			if(!confirm('등록하시겠습니까?')){
				return false;
			}
		}else{
			if(!confirm('수정하시겠습니까?')){
				return false;
			}
		}
		if( !$('input:radio[name=star]').is(':checked') ){
			alert('와인을 평가할 점수를 선택해주세요.');		
			return false;
		}
		if( !$('#aroma').val() ){
			alert('아로마를 작성해주세요.');		
			$('#aroma').focus();
			return false;
		}
		if( !$('#pairing').val() ){
			alert('페어링을 작성해주세요.');		
			$('#pairing').focus();
			return false;
		}
		if( !$('#content').val() ){
			alert('시음노트를 작성해주세요.');		
			$('#content').focus();
			return false;
		}
		return true;
	}
    function getExtensionOfFilename(filename) {
        var _fileLen = filename.length;
        var _lastDot = filename.lastIndexOf('.');
        var _fileExt = filename.substring(_lastDot, _fileLen).toLowerCase();
        return _fileExt;
    }
    $(function() {
        $("#img_upload1").on('change', function(){
            var i = 1;
			var ext = getExtensionOfFilename(this.value);
			if(!/\.(gif|jpg|jpeg|png|mp4)$/i.test(ext)) {
				alert('gif, jpg, png, mp4 파일만 선택해 주세요.');
				return false;
			}
            readURL(this, i);
        });
        $("#img_upload2").on('change', function(){
            var i = 2;
			var ext = getExtensionOfFilename(this.value);
			if(!/\.(gif|jpg|jpeg|png|mp4)$/i.test(ext)) {
				alert('gif, jpg, png, mp4 파일만 선택해 주세요.');
				return false;
			}
            readURL(this, i);
        });
        $("#img_upload3").on('change', function(){
            var i = 3;
			var ext = getExtensionOfFilename(this.value);
			if(!/\.(gif|jpg|jpeg|png|mp4)$/i.test(ext)) {
				alert('gif, jpg, png, mp4 파일만 선택해 주세요.');
				return false;
			}
            readURL(this, i);
        });
        $("#img_upload4").on('change', function(){
            var i = 4;
			var ext = getExtensionOfFilename(this.value);
			if(!/\.(gif|jpg|jpeg|png|mp4)$/i.test(ext)) {
				alert('gif, jpg, png, mp4 파일만 선택해 주세요.');
				return false;
			}
            readURL(this, i);
        });
    });
    function readURL(input, no) {
        console.log(input)
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
                $('#ex_file'+no+'_img').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
<!-- //page_script -->
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
	var page = 'tasting_lists';
	if( page == false){
		page = 'main';
	}
	if( page !== 'product_view' && page !== 'order_ok'){
		console.log(page);
		/*
		RC_Method({
			sign_up_data: "2024-04-10 22:25:14",
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