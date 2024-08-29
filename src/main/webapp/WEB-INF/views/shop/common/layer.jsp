<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 와인 프로파일 레이어 -->
<!-- /shop/mypage/shopping/wine_profile_ajax.php LOAD -->
<div class="layer wine_profile_layer">
</div>
<!-- //와인 프로파일 레이어 -->
<!-- 회원 등급현황 레이어 - 로그인 했을 때만 노출 -->
<div class="layer grade_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">등급현황</div>
				<div class="layer_con">
					<ul class="grade_status">
						<li>
							<p class="ico_silver"><span><i>Silver</i></span></p>
							<em>실버</em>
						</li>
						<li>
							<p class="ico_gold"><span><i>Gold</i></span></p>
							<em>골드</em>
						</li>
						<li>
							<p class="ico_diamond"><span><i>Diamond</i></span></p>
							<em>다이아몬드</em>
						</li>
						<li>
							<p class="ico_trinity"><span><i>Trinity</i></span></p>
							<em>트리니티</em>
						</li>
					</ul>
					<div class="grade_ex">
						<dl>
							<dt>내 구입금액</dt>
							<dd> 0 원 (주문 0 건) </dd>
						</dl>
						<div class="g_list_box">
							<ul>
								<li class="tit">회원<br class="mb_hidden">등급</li>
								<li class="tit">실버</li>
								<li class="tit">골드</li>
								<li class="tit">다이아몬드</li>
								<li class="tit">트리니티</li>
							</ul>
							<ul>
								<li class="tit">등급<br class="mb_hidden">조건</li>
								<li>일반회원</li>
								<li>200만원 <br class="mb_hidden">이상구매</li>
								<li>500만원 <br class="mb_hidden">이상구매</li>
								<li>1000만원 <br class="mb_hidden">이상구매</li>
							</ul>
						</div>
						<div class="btn_area">
							<button type="button" class="btn_txt btn_black" onclick="location.href='/shop/company/member_benefit'"><span>혜택 자세히보기</span></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //회원 등급현황 레이어 -->
<!-- 알림설정 레이어 -->
<div class="layer push_layer" id="push_layer" style="display:none;">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">알림설정</div>
				<div class="layer_con">
					<ul>
						<li>
							<div class="btn switch">
								<strong class="tit">푸시알림</strong>
								<div class="btn_switch_module js_switch css_switch">
									<input type="checkbox" id="btn_switch01" class="btn_switch_check" onchange="">
									<div class="btn_switch_area">
										<div class="btn_switch">
											<label class="bar" for="btn_switch01">&nbsp;</label>
										</div>
									</div>
								</div>
							</div>
							<p class="info">와인나라 앱에서 보내는 알림을 받을 수 있습니다.</p>
						</li>
						<li>
							<div class="btn switch">
								<strong class="tit">광고성 정보 수신 동의</strong>
								<div class="btn_switch_module js_switch css_switch">
									<input type="checkbox" id="btn_switch02" class="btn_switch_check" onchange="">
									<div class="btn_switch_area">
										<div class="btn_switch">
											<label class="bar" for="btn_switch02">&nbsp;</label>
										</div>
									</div>
								</div>
							</div>
							<p class="info">신규서비스 및 고객 맞춤 혜택 정보를 받을 수 있습니다.</p>
						</li>
						<li>
							<div class="btn switch">
								<strong class="tit">야간 수신 동의</strong>
								<div class="btn_switch_module js_switch css_switch">
									<input type="checkbox" id="btn_switch03" class="btn_switch_check" onchange="">
									<div class="btn_switch_area">
										<div class="btn_switch">
											<label class="bar" for="btn_switch03">&nbsp;</label>
										</div>
									</div>
								</div>
							</div>
							<p class="info">야간(오후 9시 ~ 오전8시)에 알림을 받을 수 있습니다.</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림설정 레이어 -->
<!-- 알림내역 레이어 -->
<div class="layer push_lists_layer" id="push_lists_layer" style="display:none;">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">알림내역</div>
				<div class="layer_con">
					<ul>
						<li>
							<strong class="tit">4월 이달의 와인</strong>
							<p class="info">봄에 어울리는 색, 그리고 향을 테마로 준비한 이달의 와인 5종을 소개합니다.</p>
							<div class="img">
								<img src="<c:url value='/asset/images/shop/product/mb_recom_lnb.jpg' />" alt="">
							</div>
							<div class="btn_box">
								<span class="date">2022.04.01</span>
								<button type="button" class="btn_more">자세히보기</button>
							</div>
						</li>
						<li>
							<strong class="tit">아발론 브랜드 기획전</strong>
							<p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
							<div class="btn_box">
								<span class="date">2022.04.01</span>
								<button type="button" class="btn_more">자세히보기</button>
							</div>
						</li>
						<li>
							<strong class="tit">아발론 브랜드 기획전</strong>
							<p class="info">최고 가성비 와인, 아바론 브랜드 기획전</p>
							<div class="btn_box">
								<span class="date">2022.04.01</span>
								<button type="button" class="btn_more">자세히보기</button>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //알림내역 레이어 -->
<!-- 설정 레이어 -->
<div class="layer set_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close btn_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_tit">설정</div>
				<div class="layer_con">
					<strong class="tit">푸시설정</strong>
					<div class="set_con">
						<span>알림설정</span>
						<div class="btn_switch_module js_switch css_switch">
							<input type="checkbox" id="btn_alarm" class="btn_switch_check" onchange="push_ajax('push',this);">
							<div class="btn_switch_area">
								<div class="btn_switch">
									<!-- <span class="txt left">ON</span> -->
									<label class="bar" for="btn_alarm">&nbsp;</label>
									<!-- <span class="txt right">OFF</span> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //설정 레이어 -->
<!-- 모바일 카테고리 레이어 -->
<div class="layer category_layer">
	<div class="display_table">
		<div class="table_cell">
			<div class="layer_area">
				<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
				<div class="layer_con">
					<div class="open_search_area">
						<button type="button" id="mb_search_btn" onclick="$('.mb_search_layer').show();$('.mb_search_layer #search_box').focus();">오늘 마시고 싶은 와인을 검색해 보세요.</button>
					</div>
					<div class="category_area">
						<div class="box cate">
							<p class="tit">카테고리</p>
							<ul>
								<li><a href="/shop/product/group_product_lists?group_cd=1901">신상품</a></li>
								<li><a href="/shop/product/group_product_lists?group_cd=1902">베스트</a></li>
								<li><a href="/shop/event/event_lists">프로모션</a></li>
								<!-- <li><a href="#">시그니쳐</a></li> -->
								<li><a href="/shop/cs/special">대량구매 할인</a></li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">와인</p>
							<ul>
								<li class="ico_red"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10101">레드</a></li>
								<li class="ico_white"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10102">화이트</a></li>
								<li class="ico_rose"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10108">로제</a></li>
								<li class="ico_sparkling"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10103">스파클링</a></li>
								<li class="ico_dessert"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10104">디저트</a></li>
								<li class="ico_spirits"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10100&sh_category3_cd=10105">주정강화</a></li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">기타 주류</p>
							<ul>
								<li class="ico_whiskey"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20101">위스키</a></li>
								<li class="ico_cognac"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20102">꼬냑</a></li>
								<li class="ico_tequila"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20105">데킬라</a></li>
								<li class="ico_jin"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20103">진</a></li>
								<li class="ico_rum"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20100&sh_category3_cd=20106">럼</a></li>
								<li class="ico_beer"><a href="/shop/product/product_lists?sh_category1_cd=20000&sh_category2_cd=20200&sh_category3_cd=20201">맥주</a></li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">OTHER</p>
							<ul>
								<li class="ico_acc"><a href="/shop/product/product_lists?sh_category1_cd=40000&sh_category2_cd=40100&sh_category3_cd=40101">악세서리</a></li>
								<li class="ico_ticket"><a href="/shop/product/product_lists?sh_category1_cd=40000&sh_category2_cd=40100&sh_category3_cd=40102">티켓</a></li>
							</ul>
						</div>
						<div class="box">
							<p class="tit">국가별 와인</p>
							<ul>
								<li class="ico_france"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10201">프랑스</a></li>
								<li class="ico_italia"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10202">이탈리아</a></li>
								<li class="ico_spain"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10203">스페인</a></li>
								<li class="ico_germ"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10204">독일</a></li>
								<li class="ico_usa"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10206">미국</a></li>
								<li class="ico_chile"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10205">칠레</a></li>
								<li class="ico_argentina"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10209">아르헨티나</a></li>
								<li class="ico_aus"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10207">호주</a></li>
								<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10210">기타 구대륙</a></li>
								<li class="ico_etc"><a href="/shop/product/product_lists?sh_category1_cd=10000&sh_category2_cd=10200&sh_category3_cd=10211">기타 신대륙</a></li>
							</ul>
						</div>
					</div>
					<!-- 모바일 검색 레이어 -->
					<div class="mb_search_layer">
						<div class="display_table">
							<div class="table_cell">
								<div class="layer_area">
									<div class="layer_con">
										<form action="https://www.winenara.com/shop/product/search_product_lists" id="searchForm" name="searchForm" method="get" accept-charset="utf-8">
											<div class="search_box">
												<button type="button" class="btn_close" onclick="$('.mb_search_layer').hide();">모바일 검색창 닫기</button>
												<input type="text" id="search_box" name="keyword" placeholder='오늘 마시고 싶은 와인을 검색해 보세요.' autocomplete="off" value="">
												<button type="submit" id="s_btn">검색</button>
											</div>
										</form>
										<!-- 최근검색어 -->
										<div class="search_result" id="search_block">
											<div class="result_inner">
												<div class="allDelete off">
													<h2 class="tit">최근검색어</h2>
													<button type="button" class="btn del_btn" onclick="all_del_item();">전체삭제</span>
												</div>
												<ul id="result_list" class="result_list">
													<li id="nodata">최근검색어 내역이 없습니다.</li>
												</ul>
											</div>
										</div>
										<!-- 지금 인기 있는 검색어 -->
										<!-- <div class="search_popular">
                                            <h2 class="tit">지금 인기 있는 검색어</h2>
                                            <ul>
                                                <li><a href="/shop/product/search_product_lists?keyword=프랑스">추석</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=레드">레드</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=제로">제로</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=스파클링">스파클링</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=로제">로제</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=레드와인">레드와인</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=이벤트 와인">이벤트 와인</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=논알콜">논알콜</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=디저트 와인">디저트 와인</a></li>
                                                <li><a href="/shop/product/search_product_lists?keyword=화이트">화이트</a></li>
                                            </ul>
                                        </div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //모바일 카테고리 레이어 -->
<input type="hidden" id="path_gb" value="">
<link rel="stylesheet" type="text/css" href="<c:url value='/asset/css/shop/slick.css' />">
<script type="text/javascript" src="<c:url value='/asset/js/slick.min.js' />"></script>