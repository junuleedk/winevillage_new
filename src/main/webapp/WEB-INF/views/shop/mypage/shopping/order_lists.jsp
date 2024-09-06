<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>WINEVILLAGE 2024 ㅣ 주문내역</title>
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
	<div class="lnb mypage_lnb lnb_wrap">
		<div class="pc_hidden">
			<a href="javascript:history.go(-1);" class="prev">이전</a>
			<div class="select_brand js_select" id="select_brand">
				<button type="button" class="my_value js_selectBtn" onclick="$(this).toggleClass('on')"><span>주문내역</span></button>
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
		<div class="common_lnb">
			<div class="my">
				<div class="txt grade_area">
					<div class="img gold grade_info g100">
						<span>실버</span>
					</div>
					<p><strong class="name">고객</strong>님</p>
				</div>
				<div class="btn_area">
					<button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
					<!-- <span>시음노트 작성하면 등급 UP</span> -->
				</div>
			</div>
			<div class="my_info my_class_info">
				<ul class="">
					<li>
						<a href="/shop/mypage/shopping/order_lists">
							<p class="tit">주문내역</p>
							<div class="num_box"><span>0</span></div>
						</a>
					</li>
					<!-- <li>
						<a href="/shop/mypage/reserve/reserve_list">
							<p class="tit">예약내역</p>
							<div class="num_box">
								<span>0</span>
							</div>
						</a>
					</li> -->
					<li>
						<a href="/shop/mypage/note/coupon_lists">
							<p class="tit">나의 쿠폰</p>
							<div class="num_box"><span>1</span></div>
						</a>
					</li>
					<li class="on">
						<a href="/shop/mypage/note/mileage_lists">
							<p class="tit">나의 마일리지</p>
							<div class="num_box"><span>0</span></div>
						</a>
					</li>
					<li>
						<a href="/shop/mypage/note/giftcard_lists">
							<p class="tit">나의 기프트카드</p>
							<div class="num_box"><span>0</span></div>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- <div class="mb_hidden">
			<div class="my_lnb_info">
				<div class="my">
					<img src="../../../asset/images/shop/default/ico_user_vip.png" alt="">
					<div class="txt">
						<p><strong class="name">윤영길</strong>님 안녕하세요!</p>
						<button type="button" class="btn_txt btn_grade" onclick="commonUI.layer.open('grade_layer')">등급현황</button>
					</div>
				</div>
				<div class="my_info">
					<a href="/shop/mypage/shopping/order_lists"><span class="new">N</span><p class="info order_info"><em>주문내역</em>0</p></a>
					<a href="/shop/mypage/note/coupon_lists"><span class="new">N</span><p class="info coupon_info"><em>쿠폰</em>1</p></a>
					<a href="/shop/mypage/note/mileage_lists"><span class="new">N</span><p class="info cash_info"><em>마일리지</em>0</p></a>
					<a href="/shop/mypage/note/giftcard_lists"><span class="new">N</span><p class="info gift_info"><em>기프트카드</em>10,000</p></a>
				</div>
			</div>
		</div> -->
		<div class="mypage_link mb_hidden">
			<ul class="depth_01">
				<li>
					<a href="/shop/mypage/shopping/mypage">나의 쇼핑</a>
					<ul class="depth_02">
						<li class="on"><a href="/shop/mypage/shopping/order_lists">주문내역</a></li>
						<li><a href="/shop/mypage/shopping/return_order_lists">교환/반품내역</a></li>
						<li><a href="/shop/mypage/note/wish_lists">위시리스트</a></li>
						<li><a href="/shop/cart/cart_lists">장바구니</a></li>
						<!-- <li ><a href="/shop/mypage/shopping/order_pre_lists">이전주문 내역</a></li>
							<li ><a href="/shop/mypage/shopping/order_shop_lists">오프라인 주문내역</a></li> -->
					</ul>
				</li>
				<li>
					<a href="#none">쇼핑수첩</a>
					<ul class="depth_02">
						<li><a href="/shop/mypage/note/giftcard_lists">나의 기프트카드</a></li>
						<!-- <li ><a href="/shop/mypage/note/balance_lists">나의 예치금</a></li> -->
						<li><a href="/shop/mypage/note/mileage_lists">나의 마일리지</a></li>
						<li><a href="/shop/mypage/note/coupon_lists">나의 쿠폰</a></li>
					</ul>
				</li>
				<li>
					<a href="#none">나의 활동</a>
					<ul class="depth_02">
						<li><a href="/shop/mypage/recommand/recommand_expert_lists">와인추천신청</a></li>
						<!-- <li ><a href="/shop/mypage/recommand/keeping_lists">보관내역</a></li> -->
						<li><a href="/shop/mypage/action/tasting_lists">나의 리뷰관리</a></li>
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
	<div class="content mypage shopping order_lists_page">
		<div class="inner">
			<form action="https://www.winenara.com/shop/mypage/shopping/order_lists" id="searchFrm" name="searchFrm" method="get" accept-charset="utf-8">
				<div class="top_info">
					<div class="page_tit">
						<h2 class="tit">주문내역</h2>
					</div>
					<div class="term_box">
						<div class="datepicker_area">
							<div class="datepicker">
								<input type="text" id="date_s" name="sh_s_date" value="2024-04-23" class="hasDatepicker"><button type="button" class="ui-datepicker-trigger">선택</button>
							</div>
							<span>~</span>
							<div class="datepicker">
								<input type="text" id="date_e" name="sh_e_date" value="2024-05-23" class="hasDatepicker"><button type="button" class="ui-datepicker-trigger">선택</button>
							</div>
						</div>
						<button type="button" class="btn_txt btn_black" onclick="shSubmit();"><span>검색</span></button>
					</div>
				</div>
			</form>
			<div class="o_lists">
				<ul>
					<!-- 취소 주문은 li class="cancel" -->
					<li>
					<div class="top_date">
						<p>
							2024.05.23
							<!-- <em>202405231716140GPA</em><span class="store">시청점</span> -->
						</p>
						<button type="button" class="btn_txt" onclick="location.href='/shop/mypage/shopping/order_view?ocode=202405231716140GPA'"><span>주문상세</span></button>
					</div>
					<div class="o_wrap">
						<div class="box ip_img" style="background:#E0EBF8">
							<a href="/shop/mypage/shopping/order_view?ocode=202405231716140GPA">
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
							</a>
						</div>
						<div class="box con">
							<div class="more_info">
								<p class="store">시청점</p>
								<p class="prd_name">
									<a href="/shop/mypage/shopping/order_view?ocode=202405231716140GPA">뵈브 드 베르네 브뤼 200ml</a>
								</p>
								<span class="label" style="background:#E0EBF8">스파클링</span><span class="label" style="background:#E0EBF8">프랑스</span>
								<span class="icon box">ml</span>
								<div class="price">
									<p>
										<!-- <del>9,500원</del> -->
										<ins>8,500원</ins>
									</p>
									<p class="amount">1개</p>
								</div>
							</div>
						</div>
						<div class="box progress">
							<ul>
								<li class="s_info">
								<div class="progressbar">
									<!-- 주문 상태 fill 0
										 이동중 상태 fill 35
										 도착 상태 fill 67
										 픽업 상태일 때는 fill 값이 100임(원형) -->
									<p class="fill" value="67"></p>
									<p class="empty"></p>
								</div>
								</li>
								<li class="txt">
								<!-- 현재상태 p class current / 완료상태 p class end -->
								<p class="current">
									결제완료<em>2024/05/23</em>
								</p>
								<p class="">
									상품이동중<em></em>
								</p>
								<p class="">
									상품준비중<em></em>
								</p>
								<p class="">
									픽업완료<em></em>
								</p>
								</li>
							</ul>
						</div>
						<!-- <div class="box review">
							<i>와인 평가</i>
							<div class="star_area">
								<span class="full" style="width:80%"></span>
								<span class="empty"></span>
							</div>
							<button type="button" onclick="$(this).toggleClass('on')" class="q">왜 해야하나?</button>
							<div class="ntc_txt">
								준비중입니다.
							</div>
						</div> -->
						<div class="box wish_cart">
							<button type="button" class="wish wish_02B044 " onclick="product.likeProduct('02B044');"><span>찜하기</span></button>
							<button type="button" class="cart" onclick="location.href='/shop/product/product_view?product_cd=02B044'"><span>장바구니</span></button>
						</div>
						<div class="box btn">
							<div class="btn_area">
								<!-- <button type="button" class="btn_txt" onclick="location.href='/shop/mypage/recommand/keeping_write?mode=N&product_ocode=33111'"><span>보관하기</span></button> -->
								<!-- <button type="button" class="btn_txt" onclick="commonUI.layer.open('cash_receipt_layer', { bg : true, alert : true });"><span>현금영수증 신청</span></button> -->
								<!--  -->
								<!-- <button type="button" class="btn_txt" onclick="printReceipt('202405231716140GPA', '20', '24394489904349', '8500');"><span>현금 영수증</span></button>
								 -->
							</div>
						</div>
					</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- 교환반품신청 -->
		<!-- 상품 개별 선택이 안되는데 이부분 다시 협의 필요-->
		<form action="https://www.winenara.com/shop/mypage/shopping/order_lists" id="refundForm" name="refundForm" method="post" accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token" value="709de65ffcd5176e7474726c079007f4">
			<input type="hidden" id="ocode" name="ocode" value="">
			<input type="hidden" id="product_ocode" name="product_ocode" value="">
			<div class="layer return_order_layer">
				<div class="display_table">
					<div class="table_cell">
						<div class="layer_area">
							<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
							<div class="layer_tit">교환/반품 신청</div>
							<div class="layer_con">
								<ul class="o_lists refund_product_info"></ul>
								<div class="form_area">
									<!-- <div class="l_tit">
										<label for="return_select"></label>
									</div> -->
									<ul>
										<li>
											<div class="form_box">
												<div class="return_select_box">
													<div class="box exchange">
														<input type="radio" name="refund_gb" id="exchange_box" value="10" checked="">
														<label for="exchange_box">교환신청</label>
													</div>
													<div class="box return">
														<input type="radio" name="refund_gb" id="return_box" value="20">
														<label for="return_box">반품신청</label>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="l_tit">
												<label for="">사유</label>
											</div>
											<div class="form_box">
												<select name="refund_gb_msg" id="refund_gb_msg">
													<option>교환/반품 사유를 선택해주세요</option>
													<option value="1201">사유1</option>
													<option value="1202">사유2</option>
													<option value="1203">사유3</option>
												</select>
											</div>
										</li>
										<li>
											<div class="l_tit">
												<label for="input_default">내용</label>
											</div>
											<div class="form_box">
												<textarea id="content" name="content" placeholder="내용을 입력해주세요."></textarea>
												<!-- <p class="input_info_txt">안내메시지 텍스트</p> -->
											</div>
										</li>
									</ul>
								</div>
								<div class="btn_area">
									<button type="button" onclick="refundSubmit();" class="btn_txt btn_black"><span>신청하기</span></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- //교환반품신청 -->
		<!-- 전체취소 -->
		<form action="https://www.winenara.com/shop/mypage/shopping/order_lists" id="cancelForm" name="cancelForm" method="post" accept-charset="utf-8">
			<input type="hidden" name="witplus_csrf_token" value="709de65ffcd5176e7474726c079007f4">
			<input type="hidden" id="ocode" name="ocode" value="">
			<input type="hidden" id="product_ocode" name="product_ocode" value="">
			<input type="hidden" id="part_yn" name="part_yn" value="">
			<div class="layer cancel_all_layer">
				<div class="display_table">
					<div class="table_cell">
						<div class="layer_area">
							<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
							<div class="layer_tit">전체취소</div>
							<div class="layer_con">
								<span class="order_num">주문번호: <em id="cancel_ocode_text"></em></span>
								<ul class="o_lists cancel_product_info">
								</ul>
								<div class="form_area">
									<ul>
										<li>
											<div class="l_tit">
												<label for="">환불수취 은행</label>
											</div>
											<div class="form_box">
												<select name="vart_refund_bank_cd" id="vart_refund_bank_cd">
													<option value="" selected="">선택</option>
													<option value="BK39">경남은행</option>
													<option value="BK34">광주은행</option>
													<option value="BK04">국민은행</option>
													<option value="BK03">기업은행</option>
													<option value="BK11">농협</option>
													<option value="BK31">대구은행</option>
													<option value="BK32">부산은행</option>
													<option value="BK45">새마을금고</option>
													<option value="BK07">수협</option>
													<option value="BK88">신한은행</option>
													<option value="BK48">신협</option>
													<option value="BK05">외환은행</option>
													<option value="BK20">우리은행</option>
													<option value="BK71">우체국</option>
													<option value="BK35">제주은행</option>
													<option value="BK81">하나은행</option>
													<option value="BK27">한국시티은행</option>
													<option value="BK54">HSBC</option>
													<option value="BK23">SC제일은행</option>
													<option value="BK02">산업은행</option>
													<option value="BK37">전북은행</option>
													<option value="BK90">카카오뱅크</option>
												</select>
											</div>
										</li>
										<li>
											<div class="l_tit">
												<label for="vact_refund_account">환불수취 계좌번호</label>
											</div>
											<div class="form_box">
												<input type="text" id="vact_refund_account" name="vact_refund_account" placeholder="계좌번호를 입력해주세요" size="23" maxlength="50">
											</div>
										</li>
										<li>
											<div class="l_tit">
												<label for="vart_refund_depositor">환불수취 예금주명</label>
											</div>
											<div class="form_box">
												<input type="text" id="vart_refund_depositor" name="vart_refund_depositor" placeholder="예금주명을 입력해주세요" size="23" maxlength="50">
											</div>
										</li>
									</ul>
								</div>
								<div class="btn_area">
									<button type="button" onclick="vactCancelSubmit();" class="btn_txt btn_black"><span>신청하기</span></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- //전체취소 -->
		<!-- 현금영수증 신청 -->
		<!-- <div class="layer cash_receipt_layer">
				<div class="display_table">
					<div class="table_cell">
						<div class="layer_area">
							<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
							<div class="layer_tit">현금영수증 신청</div>
							<div class="layer_con">
								<div class="form_area">
									<ul>
										<li>
											<div class="l_tit">
												<label for="">종류</label>
											</div>
											<div class="form_box">
												<select name="refund_bank" id="refund_bank">
													<option>종류를 선택해주세요</option>
												</select>
											</div>
										</li>
										<li>
											<div class="l_tit">
												<label for="bank_account_num">발급번호</label>
											</div>
											<div class="form_box">
												<input type="text" id="bank_account_num" placeholder="휴대폰번호,주민등록번호,사업자등록번호,현금영수증 카드번호">
											</div>
										</li>
									</ul>
								</div>
								<div class="btn_area">
									<button type="button" onclick="" class="btn_txt btn_black"><span>신청하기</span></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> -->
		<!-- //현금영수증 신청 -->
	</div>
	<!-- page_script -->
	<script>
	$(".o_lists .o_wrap").each(function(index, item){
		//버튼 정렬
		var btnLeng = $(item).find(".btn_area").children().length;
		if(btnLeng == 2){
			$(item).find(".btn_area").addClass("col2");
		}else if(btnLeng == 3){
			$(item).find(".btn_area").addClass("col2");
			$(item).find(".btn_area .btn_txt:nth-child(2)").css({"margin-right":"0"});
			$(item).find(".btn_area .btn_txt:last-child").css({"width":"100%","margin-top":"10px"});
		}else if(btnLeng == 4){
			$(item).find(".btn_area").addClass("col3");
			$(item).find(".btn_area .btn_txt:nth-child(3)").css({"margin-right":"0"});
			$(item).find(".btn_area .btn_txt:last-child").css({"width":"100%","margin-top":"10px"});
		}
		//프로그레스바 상태 별 class 추가
		// var itemVal = $(item).find(".fill").attr("value");
		// if(itemVal == "0"){
		//     $(item).find(".txt").addClass("step01");
		// }else if(itemVal == "35"){
		//     $(item).find(".txt").addClass("step02");
		// }else if(itemVal == "67"){
		//     $(item).find(".txt").addClass("step03");
		// }else if(itemVal == "100"){
		//     $(item).find(".txt").addClass("step04");
		// }
	});
	//프로그레스 바
	$(".progressbar .fill").each(function(index, item){
		var fillVal = $(this).attr("value");
		if(fillVal == "0"){
			$(this).css({"width":"10px","height":"10px"})
		}else{
			var fill = fillVal + "%";
				console.log(fill);
			$(this).stop().animate({
				width: fill
			}, 1000);
		}
	});
	function shSubmit(){
		var form = document.searchFrm;
		form.submit();
	}
	/**
	 * 교환/반품
	 * @param  {[type]} ocode         [description]
	 * @param  {[type]} product_ocode [description]
	 * @return {[type]}               [description]
	 */
	function open_refund_layer(ocode, product_ocode){
		document.refundForm.ocode.value = ocode;
		document.refundForm.product_ocode.value = product_ocode;
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type : "POST",
			url : "refund_product_ajax",
			dataType : 'text',
			data : {"ocode" : ocode, "product_ocode" : product_ocode},
			success : function (res) {
				$(".refund_product_info").html(res);
				commonUI.layer.open('return_order_layer', { bg : true, alert : true });
			},
			error: function (res) {
				alert(res.responseText);
			}
		});
	}
	/**
	 * 가상계좌 주문 취소
	 * @param  {[type]} ocode         [description]
	 * @param  {[type]} product_ocode [description]
	 * @return {[type]}               [description]
	 */
	function open_cancel_layer(ocode, product_ocode){
		document.cancelForm.ocode.value = ocode;
		document.cancelForm.product_ocode.value = product_ocode;
		$("#cancel_ocode_text").text(ocode);
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type : "POST",
			url : "cancel_product_ajax",
			dataType : 'text',
			data : {"ocode" : ocode, "product_ocode" : product_ocode},
			success : function (res) {
				$(".cancel_product_info").html(res);
				commonUI.layer.open('cancel_all_layer', { bg : true, alert : true });
			},
			error: function (res) {
				alert(res.responseText);
			}
		});
	}
	function vactCancelSubmit() {
		var ocode         = document.cancelForm.ocode.value;
		var product_ocode = document.cancelForm.product_ocode.value;
		var part_yn       = document.cancelForm.part_yn.value;
		if( $("#vart_refund_bank_cd").val() == ''){
			alert("환불수취 은행을 입력해주세요.");
			return;
		}
		if( $.trim($("#vact_refund_account").val()) == ''){
			alert("환불수취 계좌번호를 입력해주세요.");
			return;
		}
		if( $.trim($("#vart_refund_depositor").val()) == ''){
			alert("환불수취 예금주명을 입력해주세요.");
			return;
		}
		if(part_yn == 'N'){
			part_yn_val = "전체";
		} else {
			part_yn_val = "부분";
		}
		if(confirm("주문을 "+part_yn_val+"취소 하시겠습니까?")){
			Csrf.Set(_CSRF_NAME_); //토큰 초기화
			$.ajax({
				type : "POST",
				url : "cancel_proc_ajax?ajax_mode=ORDER_CANCEL",
				dataType : 'json',
				async : false,
				data : $("#cancelForm").serialize(),
				success : function (res) {
					alert(res.msg);
					if( $.trim(res.status) == "ok"){
						location.reload();
					}
					return;
				},
				error: function (res) {
					alert(res.responseText);
				}
			});
		}
	}
	function cancelSubmit(ocode, product_ocode, order_cnt, otype_cd, product_order_state_cd){
		if(parseInt(order_cnt) > 1){
			var part_yn = 'Y';
			var part_yn_val = "부분";
		} else {
			var part_yn = 'N';
			var part_yn_val = "전체";
		}
		//가상계좌 취소
		if( otype_cd == '10' && product_order_state_cd != '10' ){
			document.cancelForm.part_yn.value = part_yn;
			open_cancel_layer(ocode, product_ocode);
		} else {
			if(confirm("주문을 "+part_yn_val+"취소 하시겠습니까?")){
				Csrf.Set(_CSRF_NAME_); //토큰 초기화
				$.ajax({
					type : "POST",
					url : "cancel_proc_ajax?ajax_mode=ORDER_CANCEL",
					dataType : 'json',
					async : false,
					data : {"ocode" : ocode, "product_ocode" : product_ocode, "part_yn" : part_yn},
					success : function (res) {
						alert(res.msg);
						if( $.trim(res.status) == "ok"){
							location.reload();
						}
						return;
					},
					error: function (res) {
						alert(res.responseText);
					}
				});
			}
		}
	}
	function refundSubmit(){
		if(!$("#refund_gb_msg").val()){
			alert("사유를 선택해 주세요.");
			$("#refund_gb_msg").focus();
			return;
		}
		Csrf.Set(_CSRF_NAME_); //토큰 초기화
		$.ajax({
			type : "POST",
			url : "order_proc_ajax?ajax_mode=REFUND_WRITE",
			dataType : 'json',
			async : false,
			data    : $("#refundForm").serialize(),
			success : function (res) {
				alert(res.msg);
				if( $.trim(res.status) == "ok"){
					location.reload();
					return;
				}
			},
			error: function (res) {
				alert(res.responseText);
			}
		});
	}
	function printReceipt(ocode, otype, tno, amount){
		var url = "";
		if(otype == '10'){ //가상계좌
			url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=vcnt_bill&tno="+tno+"&order_no="+ocode+"&trade_mony="+amount;
		} else if(otype == '20') {//카드결제
			url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=card_bill&tno="+tno+"&order_no="+ocode+"&trade_mony="+amount;
		} else if(otype == '30') {//계좌이체
			url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=acnt_bill&tno="+tno+"&order_no="+ocode+"&trade_mony="+amount;
		} else if(otype == '40') {//휴대폰결제
			url = "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=mcash_bill&tno="+tno+"&order_no="+ocode+"&trade_mony="+amount;
		}
		if( url != ''){
			console.log(url);
			Common.openWindowPop(url,'영수증출력','scrollbars=yes,resizable=yes,width=470,height=815');
		} else {
			alert("오류가 발생했습니다.");
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