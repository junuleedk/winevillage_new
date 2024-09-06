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

<!-- header -->
<sec:authorize access="!isAuthenticated()">
<%@ include file="../common/header.jsp" %>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
<%@ include file="../common/header_loggedin.jsp" %>
</sec:authorize>
<!-- //header -->
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
		<%-- <c:forEach items="${lists }" var="product" varStatus="loop">
			<div>
				<span>${ product.thumbnail }</span>
			</div>
		</c:forEach> --%>
		<div class="content product product_lists_page test">
			<div class="product_lists_wrap">
				<div class="prd_list_tit">
					<div class="top">
						<h2></h2>
						<div class="line_map">
							<ul>
								<li onclick="location.href='/shop/main'" style="cursor: pointer;">HOME</li>
								<li onclick="location.href='/shop/product/product_lists?sh_category1_cd=&amp;sh_category2_cd=&amp;sh_category3_cd='" style="cursor: pointer;" id="cate_txt">VALUE</li>
							</ul>
						</div>
					</div>
					<div class="tab_area prd_tab_area tab3">
						<ul>
							<li class="state_li on" id="state_li_1"><a href="javascript:void(0);" onclick="state_list('1');">VALUE </a></li>
							<li class="state_li " id="state_li_5"><a href="javascript:void(0);" onclick="state_list('5');">EXCLUSIVE</a></li>
							<li class="state_li " id="state_li_all"><a href="javascript:void(0);" onclick="state_list('all');">ALL</a></li>
						</ul>
						<button class="smart_search" onclick="commonUI.layer.open('filter_layer')"><span>SMART SEARCH</span></button>
					</div>
				</div>
				<!-- 필터 -->
				<div class="layer filter_layer">
					<div class="display_table">
						<div class="table_cell">
							<div class="layer_area">
								<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
								<div class="layer_tit">SMART SEARCH</div>
								<div class="layer_con">
									<div class="filter">
										<div class="check_area ">
											<p>와인 종류</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_29" value="29" data-nm="레드" onclick="filter_submit();">
													<label for="type_check_29">레드 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_28" value="28" data-nm="화이트" onclick="filter_submit();">
													<label for="type_check_28">화이트 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_27" value="27" data-nm="스파클링" onclick="filter_submit();">
													<label for="type_check_27">스파클링 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_26" value="26" data-nm="디저트" onclick="filter_submit();">
													<label for="type_check_26">디저트 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_25" value="25" data-nm="로제" onclick="filter_submit();">
													<label for="type_check_25">로제 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_100" value="100" data-nm="주정강화" onclick="filter_submit();">
													<label for="type_check_100">주정강화 
													<!--()-->
													</label>
												</div>
											</div>
										</div>
										<div class="check_area price">
											<p>가격</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox radio">
													<input type="radio" name="item_seq" id="type_check_35" value="35" data-nm="~30,000" onclick="filter_submit();">
													<label for="type_check_35">~30,000 
													<!--()-->
													</label>
												</div>
												<div class="checkbox radio">
													<input type="radio" name="item_seq" id="type_check_36" value="36" data-nm="30,000~60,000" onclick="filter_submit();">
													<label for="type_check_36">30,000~60,000 
													<!--()-->
													</label>
												</div>
												<div class="checkbox radio">
													<input type="radio" name="item_seq" id="type_check_66" value="66" data-nm="60,000~100,000" onclick="filter_submit();">
													<label for="type_check_66">60,000~100,000 
													<!--()-->
													</label>
												</div>
												<div class="checkbox radio">
													<input type="radio" name="item_seq" id="type_check_67" value="67" data-nm="100,000~" onclick="filter_submit();">
													<label for="type_check_67">100,000~ 
													<!--()-->
													</label>
												</div>
											</div>
										</div>
										<div class="check_area ">
											<p>생산 국가</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_75" value="75" data-nm="프랑스" onclick="filter_submit();">
													<label for="type_check_75">프랑스 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_76" value="76" data-nm="이탈리아" onclick="filter_submit();">
													<label for="type_check_76">이탈리아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_77" value="77" data-nm="스페인" onclick="filter_submit();">
													<label for="type_check_77">스페인 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_80" value="80" data-nm="미국" onclick="filter_submit();">
													<label for="type_check_80">미국 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_78" value="78" data-nm="독일" onclick="filter_submit();">
													<label for="type_check_78">독일 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_79" value="79" data-nm="칠레" onclick="filter_submit();">
													<label for="type_check_79">칠레 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_83" value="83" data-nm="아르헨티나" onclick="filter_submit();">
													<label for="type_check_83">아르헨티나 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_81" value="81" data-nm="호주" onclick="filter_submit();">
													<label for="type_check_81">호주 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_82" value="82" data-nm="뉴질랜드" onclick="filter_submit();">
													<label for="type_check_82">뉴질랜드 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_103" value="103" data-nm="포루투갈" onclick="filter_submit();">
													<label for="type_check_103">포루투갈 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_114" value="114" data-nm="기타구대륙" onclick="filter_submit();">
													<label for="type_check_114">기타구대륙 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_115" value="115" data-nm="기타신대륙" onclick="filter_submit();">
													<label for="type_check_115">기타신대륙 
													<!--()-->
													</label>
												</div>
											</div>
										</div>
										<div class="check_area ">
											<p>생산 지역</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_198" value="198" data-nm="랑그독루시용" onclick="filter_submit();">
													<label for="type_check_198">랑그독루시용 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_199" value="199" data-nm="론" onclick="filter_submit();">
													<label for="type_check_199">론 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_71" value="71" data-nm="보르도" onclick="filter_submit();">
													<label for="type_check_71">보르도 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_177" value="177" data-nm="루아르" onclick="filter_submit();">
													<label for="type_check_177">루아르 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_202" value="202" data-nm="보졸레" onclick="filter_submit();">
													<label for="type_check_202">보졸레 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_72" value="72" data-nm="부르고뉴" onclick="filter_submit();">
													<label for="type_check_72">부르고뉴 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_203" value="203" data-nm="샴페인" onclick="filter_submit();">
													<label for="type_check_203">샴페인 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_204" value="204" data-nm="알자스" onclick="filter_submit();">
													<label for="type_check_204">알자스 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_205" value="205" data-nm="프로방스" onclick="filter_submit();">
													<label for="type_check_205">프로방스 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_206" value="206" data-nm="라치오" onclick="filter_submit();">
													<label for="type_check_206">라치오 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_207" value="207" data-nm="롬바르디아" onclick="filter_submit();">
													<label for="type_check_207">롬바르디아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_208" value="208" data-nm="리구리아" onclick="filter_submit();">
													<label for="type_check_208">리구리아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_209" value="209" data-nm="베네토" onclick="filter_submit();">
													<label for="type_check_209">베네토 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_180" value="180" data-nm="시실리" onclick="filter_submit();">
													<label for="type_check_180">시실리 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_210" value="210" data-nm="아브루쪼" onclick="filter_submit();">
													<label for="type_check_210">아브루쪼 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_211" value="211" data-nm="에밀리아" onclick="filter_submit();">
													<label for="type_check_211">에밀리아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_212" value="212" data-nm="움브리아" onclick="filter_submit();">
													<label for="type_check_212">움브리아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_213" value="213" data-nm="캄파니아" onclick="filter_submit();">
													<label for="type_check_213">캄파니아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_74" value="74" data-nm="토스카나" onclick="filter_submit();">
													<label for="type_check_74">토스카나 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_214" value="214" data-nm="풀리아" onclick="filter_submit();">
													<label for="type_check_214">풀리아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_215" value="215" data-nm="프리울리" onclick="filter_submit();">
													<label for="type_check_215">프리울리 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_73" value="73" data-nm="피에몬테" onclick="filter_submit();">
													<label for="type_check_73">피에몬테 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_216" value="216" data-nm="갈리시아" onclick="filter_submit();">
													<label for="type_check_216">갈리시아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_217" value="217" data-nm="까딸루냐 " onclick="filter_submit();">
													<label for="type_check_217">까딸루냐 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_218" value="218" data-nm="나바라 " onclick="filter_submit();">
													<label for="type_check_218">나바라 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_178" value="178" data-nm="리오하" onclick="filter_submit();">
													<label for="type_check_178">리오하 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_219" value="219" data-nm="카스틸라 라만차" onclick="filter_submit();">
													<label for="type_check_219">카스틸라 라만차 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_220" value="220" data-nm="카스틸라 이 레온" onclick="filter_submit();">
													<label for="type_check_220">카스틸라 이 레온 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_221" value="221" data-nm="캘리포니아" onclick="filter_submit();">
													<label for="type_check_221">캘리포니아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_222" value="222" data-nm="오레곤" onclick="filter_submit();">
													<label for="type_check_222">오레곤 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_223" value="223" data-nm="워싱턴 " onclick="filter_submit();">
													<label for="type_check_223">워싱턴 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_230" value="230" data-nm="기타" onclick="filter_submit();">
													<label for="type_check_230">기타 
													<!--()-->
													</label>
												</div>
											</div>
										</div>
										<div class="check_area ">
											<p>포도 품종</p>
											<div class="check_type">
												<!-- PC : default(한 줄에 3개) col4 class 추가(한 줄에 4개) -->
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_37" value="37" data-nm="카베르네 소비뇽" onclick="filter_submit();">
													<label for="type_check_37">카베르네 소비뇽 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_157" value="157" data-nm="쉬라즈" onclick="filter_submit();">
													<label for="type_check_157">쉬라즈 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_38" value="38" data-nm="메를로" onclick="filter_submit();">
													<label for="type_check_38">메를로 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_92" value="92" data-nm="카베르네 프랑" onclick="filter_submit();">
													<label for="type_check_92">카베르네 프랑 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_90" value="90" data-nm="템프라니요" onclick="filter_submit();">
													<label for="type_check_90">템프라니요 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_87" value="87" data-nm="피노 누아" onclick="filter_submit();">
													<label for="type_check_87">피노 누아 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_88" value="88" data-nm="말벡" onclick="filter_submit();">
													<label for="type_check_88">말벡 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_168" value="168" data-nm="진판델" onclick="filter_submit();">
													<label for="type_check_168">진판델 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_89" value="89" data-nm="산지오베제" onclick="filter_submit();">
													<label for="type_check_89">산지오베제 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_164" value="164" data-nm="가메" onclick="filter_submit();">
													<label for="type_check_164">가메 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_167" value="167" data-nm="네비올로" onclick="filter_submit();">
													<label for="type_check_167">네비올로 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_156" value="156" data-nm="카르메네르" onclick="filter_submit();">
													<label for="type_check_156">카르메네르 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_91" value="91" data-nm="그르나슈" onclick="filter_submit();">
													<label for="type_check_91">그르나슈 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_231" value="231" data-nm="몬테풀치아노" onclick="filter_submit();">
													<label for="type_check_231">몬테풀치아노 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_232" value="232" data-nm="바르베라" onclick="filter_submit();">
													<label for="type_check_232">바르베라 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_171" value="171" data-nm="샤르도네" onclick="filter_submit();">
													<label for="type_check_171">샤르도네 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_161" value="161" data-nm="세미용" onclick="filter_submit();">
													<label for="type_check_161">세미용 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_159" value="159" data-nm="소비뇽 블랑" onclick="filter_submit();">
													<label for="type_check_159">소비뇽 블랑 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_160" value="160" data-nm="리슬링" onclick="filter_submit();">
													<label for="type_check_160">리슬링 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_224" value="224" data-nm="슈냉 블랑" onclick="filter_submit();">
													<label for="type_check_224">슈냉 블랑 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_225" value="225" data-nm="모스카토" onclick="filter_submit();">
													<label for="type_check_225">모스카토 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_166" value="166" data-nm="피노그리" onclick="filter_submit();">
													<label for="type_check_166">피노그리 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_226" value="226" data-nm="비오니에" onclick="filter_submit();">
													<label for="type_check_226">비오니에 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_163" value="163" data-nm="게뷔르츠트라미너" onclick="filter_submit();">
													<label for="type_check_163">게뷔르츠트라미너 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_227" value="227" data-nm="그뤼너 펠트리너" onclick="filter_submit();">
													<label for="type_check_227">그뤼너 펠트리너 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_162" value="162" data-nm="베르데호" onclick="filter_submit();">
													<label for="type_check_162">베르데호 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_228" value="228" data-nm="알리고떼" onclick="filter_submit();">
													<label for="type_check_228">알리고떼 
													<!--()-->
													</label>
												</div>
												<div class="checkbox type2">
													<input type="checkbox" name="item_seq" id="type_check_174" value="174" data-nm="기타" onclick="filter_submit();">
													<label for="type_check_174">기타 
													<!--()-->
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="bottom">
										<div class="current_filter filter_item nodata_fiter">
											<button type="button" class="reset" onclick="all_reset();">초기화</button>
										</div>
										<div class="btn_area">
											<button type="button" class="btn_txt btn_filter" onclick="filter_btn();">적용</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 필터 -->
				<div class="prd_list_area">
					<div class="search_result">
						<div class="result_area">
							<p class="result" id="total_count_text">436개의 상품</p>
							<ul class="result_num">
								<li class="on_li"><button class="rcd_cnt" value="25"><em>25</em>개</button></li>
								<li class="on_li"><button class="rcd_cnt" value="50"><em>50</em>개</button></li>
								<li class="on_li"><button class="rcd_cnt" value="100"><em>100</em>개씩 보기</button></li>
							</ul>
						</div>
						<div class="second_order">
							<select name="js_select" id="js_select" class="">
								<option value="A">최신순</option>
								<option value="C">높은 가격순</option>
								<option value="B">낮은 가격순</option>
								<option value="F">판매량순</option>
							</select>
						</div>
					</div>
					<ul class="n_prd_list" id="product_ul">
						<li>
							<div class="item">
								<div class="main_img" style="background:#D7F9E2">
									<a href="/shop/product/product_view?product_cd=29E404" class="prd_img table_box">
									<picture>
									<!--[if IE 9]><video style="display: none;"><![endif]-->
									<source srcset="../../uploads/product/200/157bc4be3f4e882f68da804d39956326.jpg" media="(min-width:1024px)">
									<!-- pc이미지 -->
									<source srcset="../../uploads/product/200/157bc4be3f4e882f68da804d39956326.jpg" media="(max-width:1023px)">
									<!-- mb이미지 -->
									<!--[if IE 9]></video><![endif]-->
									<img src="/uploads/product/200/157bc4be3f4e882f68da804d39956326.jpg" loading="lazy" alt="">
									<!-- pc이미지 -->
									</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_29E404 " id="wish_29E404" onclick="product.likeProduct('29E404');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=29E404"><span>빌라엠썸X수키도키 잔패키지</span><span class="en">VillaM SOME X SUKEYDOKEY Glass Package </span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#D7F9E2">디저트</span><span style="background:#D7F9E2">이탈리아</span><span style="background:#D7F9E2">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">32%</em>
											<del>25,000원</del>
											<ins>16,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#FFF">
									<a href="/shop/product/product_view?product_cd=art240516" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/03a9ae08fa7e65fcbc05496eea48fca3.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/03a9ae08fa7e65fcbc05496eea48fca3.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/03a9ae08fa7e65fcbc05496eea48fca3.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_art240516 " id="wish_art240516" onclick="product.likeProduct('art240516');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=art240516"><span>아르테비노 브랜드 데이 5.16(목)/서래점</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label"></div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>30,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#FFF">
									<a href="/shop/product/product_view?product_cd=art240502" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/2ff253ceba95588bf45b19b283cdf180.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/2ff253ceba95588bf45b19b283cdf180.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/2ff253ceba95588bf45b19b283cdf180.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_art240502 " id="wish_art240502" onclick="product.likeProduct('art240502');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=art240502"><span>아르테비노 브랜드 데이 5.02(목)/성수점</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>30,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#FFF">
									<a href="/shop/product/product_view?product_cd=art240426" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/c905f2a4d339dea8d14e24e0baa2df01.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/c905f2a4d339dea8d14e24e0baa2df01.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/c905f2a4d339dea8d14e24e0baa2df01.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_art240426 " id="wish_art240426" onclick="product.likeProduct('art240426');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=art240426"><span>아르테비노 브랜드 데이 4.26(금)/일산점</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label"></div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>30,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#FFF">
									<a href="/shop/product/product_view?product_cd=sau0503" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/a06f66ccd37d5cf160eae7cdacfc1cfa.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/a06f66ccd37d5cf160eae7cdacfc1cfa.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/a06f66ccd37d5cf160eae7cdacfc1cfa.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_sau0503 " id="wish_sau0503" onclick="product.likeProduct('sau0503');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=sau0503"><span>소비뇽 블랑 나이트 5.03(금)/일산점</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label"></div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>30,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#FFF">
									<a href="/shop/product/product_view?product_cd=sau0429" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/e55ed6a91ace7551a7249b526159b404.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/e55ed6a91ace7551a7249b526159b404.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/e55ed6a91ace7551a7249b526159b404.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_sau0429 " id="wish_sau0429" onclick="product.likeProduct('sau0429');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=sau0429"><span>소비뇽 블랑 나이트 4.29(월)/송도점</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>30,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#FFF">
									<a href="/shop/product/product_view?product_cd=sau0422" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/0133b719beae93d31e656ed607023afe.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/0133b719beae93d31e656ed607023afe.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/0133b719beae93d31e656ed607023afe.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_sau0422 " id="wish_sau0422" onclick="product.likeProduct('sau0422');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=sau0422"><span>소비뇽 블랑 나이트 4.22(월)/서래점</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label"></div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>30,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#FFF">
									<a href="/shop/product/product_view?product_cd=sau0418" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/079faf985cff327ae29b258cb90574f0.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/079faf985cff327ae29b258cb90574f0.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/079faf985cff327ae29b258cb90574f0.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_sau0418 " id="wish_sau0418" onclick="product.likeProduct('sau0418');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=sau0418"><span>소비뇽 블랑 나이트 4.18(목)/성수점</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>30,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03R278" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/ff4dd11a946671d88fd904590b1488fc.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03R278 " id="wish_03R278" onclick="product.likeProduct('03R278');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03R278"><span>페이덜트 고잉 포 브로크</span><span class="en">PAYDIRT GOING FOR BROKE</span></a>
										</p>
										<p class="prd_info">
											HARVESTED : Hand harvested between August 31st and October 3rd / BOTTLING DATE : December 19th, 2019 / PRODUCTION : 5,100 Cases
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">미국</span><span style="background:#E0D8EA">진판델</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">16%</em>
											<del>50,000원</del>
											<ins>42,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03T371" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/ca7dcbb412a2b49d2bb692dc8ee96b76.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/ca7dcbb412a2b49d2bb692dc8ee96b76.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/ca7dcbb412a2b49d2bb692dc8ee96b76.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T371 " id="wish_03T371" onclick="product.likeProduct('03T371');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03T371"><span>이즈웨이 롭 앤 레스</span><span class="en">Izway Rob And Les </span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">쉬라즈</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">35%</em>
											<del>75,000원</del>
											<ins>49,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03T999" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/32f8106a802290f578b2fd00bb18757e.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T999 on" id="wish_03T999" onclick="product.likeProduct('03T999');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03T999"><span>디아블로 데블스 카나발 스위트</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">칠레</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">70%</em>
											<del>50,000원</del>
											<ins>14,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03U001" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/aa7a7a81345a0f66e00a0962f5ab3904.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03U001 " id="wish_03U001" onclick="product.likeProduct('03U001');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03U001"><span>디아블로 데블스 카나발 카베르네</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">칠레</span><span style="background:#E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">70%</em>
											<del>50,000원</del>
											<ins>14,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#F6EC9C">
									<a href="/shop/product/product_view?product_cd=04F033" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/0bb964fdc5052765a1fc3f6ccfd37d6d.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_04F033 on" id="wish_04F033" onclick="product.likeProduct('04F033');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=04F033"><span>디아블로 데블스 카나발 소비뇽 </span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#F6EC9C">화이트</span><span style="background:#F6EC9C">칠레</span><span style="background:#F6EC9C">소비뇽 블랑</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">70%</em>
											<del>50,000원</del>
											<ins>14,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03T989" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/546ccbcb4c22a81defb341b9be9b4c10.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T989 " id="wish_03T989" onclick="product.likeProduct('03T989');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03T989"><span>디아블로 데블스 카나발 레드</span><span class="en"></span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">칠레</span><span style="background:#E0D8EA">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">70%</em>
											<del>50,000원</del>
											<ins>14,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03T786" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/65b95cf91ef4678a3376cf742f7e5749.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T786 " id="wish_03T786" onclick="product.likeProduct('03T786');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03T786"><span>마틴 레이 오크빌 카베르네 소비뇽</span><span class="en"></span></a>
										</p>
										<p class="prd_info">
											세계적인 와인 평론가들로부터 높은 평가를 받고 있으며, 매년 평균 90points 이상의 점수를 받는 프리미엄 나파밸리 와인
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">미국</span><span style="background:#E0D8EA">피노누아</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">33%</em>
											<del>300,000원</del>
											<ins>200,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03S801" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/74804eb1e4f3451e09af1e3a24c95b99.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03S801 " id="wish_03S801" onclick="product.likeProduct('03S801');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03S801"><span>앤젤린 멘도치노 피노누아 </span><span class="en"></span></a>
										</p>
										<p class="prd_info">
											"고급 레스토랑에서 판매하는 고퀄리티 글라스 와인으로 시작해서 현재는 해외 판매까지 성공시킨 역주행 성공의 브랜드"
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">미국</span><span style="background:#E0D8EA">피노누아</span>
									</div>
									<div class="price_area">
										<p class="price set">
											<!-- n병 구매시 -->
											<span class="regular_price price">
												<em class="discount">50%</em>
												<del>60,000원</del>
												<ins>29,900원</ins>
											</span>
											<em class="discount">53%</em>
											<i>3병 이상 구매시</i>
											<ins>28,400원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#F5F5F5">
									<a href="/shop/product/product_view?product_cd=12A184" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/158cf9333bab49d2357122779833b4f1.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/158cf9333bab49d2357122779833b4f1.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/158cf9333bab49d2357122779833b4f1.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_12A184 " id="wish_12A184" onclick="product.likeProduct('12A184');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=12A184"><span>고든앤맥패일 디스커버리 부나하벤 10년</span><span class="en">Gordon&amp;Macphail Discovery Bunnahabhain 10y</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#F5F5F5">위스키</span><span style="background:#F5F5F5">스코틀랜드</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<ins>185,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03N417" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/0636ea1b6e96aeb66eb3b82098a19528.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/0636ea1b6e96aeb66eb3b82098a19528.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/0636ea1b6e96aeb66eb3b82098a19528.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03N417 " id="wish_03N417" onclick="product.likeProduct('03N417');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03N417"><span>샤또 라 프랑스 델 옴므 메독CB</span><span class="en"></span></a>
										</p>
										<p class="prd_info">
											200년 역사의 보르도 메독의 크뤼 부르주아 등급 와인
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">프랑스</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">79%</em>
											<del>200,000원</del>
											<ins>42,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0EBF8">
									<a href="/shop/product/product_view?product_cd=02B054" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/0bf2addff4ed53c84e7e017a9edd5aca.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/0bf2addff4ed53c84e7e017a9edd5aca.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/0bf2addff4ed53c84e7e017a9edd5aca.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_02B054 " id="wish_02B054" onclick="product.likeProduct('02B054');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap">
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=02B054"><span>폴 당장 뀌베 로제 </span><span class="en"></span></a>
										</p>
										<p class="prd_info">
											영국 왕실 납품 샴페인 하우스
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0EBF8">프랑스</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">20%</em>
											<del>100,000원</del>
											<ins>80,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0EBF8">
									<a href="/shop/product/product_view?product_cd=02A774" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/ef628fa73851885efe15f3896e003776.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/ef628fa73851885efe15f3896e003776.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/ef628fa73851885efe15f3896e003776.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_02A774 " id="wish_02A774" onclick="product.likeProduct('02A774');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=02A774"><span>룩벨레어 로제 기프트박스 </span><span class="en">LUC BELAIRE ROSE W GIFT BOX 750ML</span></a>
										</p>
										<p class="prd_info">
											기프트 박스안에 기존 로제 제품의 넌 루미너스 보틀이 들어있습니다.
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0EBF8">스파클링</span><span style="background:#E0EBF8">프랑스</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">31%</em>
											<del>80,000원</del>
											<ins>55,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03S395" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/e98a8950af0da9417bd062cac7f2b591.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/e98a8950af0da9417bd062cac7f2b591.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="../../uploads/product/200/e98a8950af0da9417bd062cac7f2b591.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03S395 " id="wish_03S395" onclick="product.likeProduct('03S395');"><span>찜하기</span></button>
									</div>
									<p class="vivino">
										VIVINO<em>3.6</em>
									</p>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03S395"><span>하디스 틴타라 카베르네 소비뇽</span><span class="en"></span></a>
										</p>
										<p class="prd_info">
											호주 와인의 살아있는 역사 하디스의 대표 브랜드 “틴타라”
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">호주</span><span style="background:#E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">63%</em>
											<del>70,000원</del>
											<ins>25,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#D7F9E2">
									<a href="/shop/product/product_view?product_cd=04E803" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/5a003c0c26fb9f91c41b042233854688.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/5a003c0c26fb9f91c41b042233854688.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/5a003c0c26fb9f91c41b042233854688.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_04E803 " id="wish_04E803" onclick="product.likeProduct('04E803');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=04E803"><span>닥터루젠 리슬링 베렌아우스레제 </span><span class="en"></span></a>
										</p>
										<p class="prd_info">
											세계 3대 스위트 와인을 만드는 독일. 모젤에서 제일 가는 포도밭들인 벨레너 존넨우어(해시계), 위르찌거 뷔르츠가르텐(향신료의 정원), 에르데너 트렙첸(지구의 계단), 그라쳐 힘멜라이히(천국) 에서 자란 평균 수령 60년 포도나무들에서 수확한 포도로 만들었다. 보트리티스 즉 노블롯 포도로만 만드려면 110 도 이상의 왹슬레 (독일의 당도 단위) 이상의 당도를 가져야만 한다. 닥터루젠에서는 그보다 더 높은 단위인 120 도 이상으로 만든다.
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#D7F9E2">독일</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">33%</em>
											<del>90,000원</del>
											<ins>60,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#D7F9E2">
									<a href="/shop/product/product_view?product_cd=29E759" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/3bbce77486eb4eb329f9b2963a3f7276.jpg" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/3bbce77486eb4eb329f9b2963a3f7276.jpg" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/3bbce77486eb4eb329f9b2963a3f7276.jpg" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_29E759 " id="wish_29E759" onclick="product.likeProduct('29E759');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=29E759"><span>빌라엠 로쏘 봄 패키지</span><span class="en">VILLA M ROSSO SPRING PACKAGE</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#D7F9E2">디저트</span><span style="background:#D7F9E2">이탈리아</span><span style="background:#D7F9E2">기타</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">38%</em>
											<del>40,000원</del>
											<ins>25,000원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#D7F9E2">
									<a href="/shop/product/product_view?product_cd=29E758" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/b9cc0bad255fce23383b44ede1827863.jpg" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/b9cc0bad255fce23383b44ede1827863.jpg" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/b9cc0bad255fce23383b44ede1827863.jpg" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_29E758 " id="wish_29E758" onclick="product.likeProduct('29E758');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap"></div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=29E758"><span>빌라엠 비앙코 봄 패키지</span><span class="en">VILLA M BIANCO SPRING PACKAGE</span></a>
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#D7F9E2">디저트</span><span style="background:#D7F9E2">이탈리아</span><span style="background:#D7F9E2">모스카토</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">34%</em>
											<del>36,000원</del>
											<ins>23,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item">
								<div class="main_img" style="background:#E0D8EA">
									<a href="/shop/product/product_view?product_cd=03T664" class="prd_img table_box">
										<picture>
											<!--[if IE 9]><video style="display: none;"><![endif]-->
											<source srcset="../../uploads/product/200/58455e65df70b6ce8f7e0b6da7074605.png" media="(min-width:1024px)">
											<!-- pc이미지 -->
											<source srcset="../../uploads/product/200/58455e65df70b6ce8f7e0b6da7074605.png" media="(max-width:1023px)">
											<!-- mb이미지 -->
											<!--[if IE 9]></video><![endif]-->
											<img src="/uploads/product/200/58455e65df70b6ce8f7e0b6da7074605.png" loading="lazy" alt="">
											<!-- pc이미지 -->
										</picture>
									</a>
									<div class="btn">
										<button type="button" class="wish wish_03T664 " id="wish_03T664" onclick="product.likeProduct('03T664');"><span>찜하기</span></button>
									</div>
									<div class="label_wrap">
										<span class="icon new">NEW</span>
									</div>
								</div>
								<div class="info">
									<div class="more_info">
										<p class="prd_name">
											<a href="/shop/product/product_view?product_cd=03T664"><span>1000스토리즈 카베르네소비뇽</span><span class="en">1000STORIES CABERNET SAUVIGNON</span></a>
										</p>
										<p class="prd_info">
											배럴 숙성을 통해 더해진 이 와인만의 독특한 특징인 버번의 뉘앙스를 표현한 카베르네 소비뇽
										</p>
									</div>
									<div class="cate_label">
										<span style="background:#E0D8EA">레드</span><span style="background:#E0D8EA">미국</span><span style="background:#E0D8EA">카베르네 소비뇽</span>
									</div>
									<div class="price_area">
										<p class="price">
											<!-- 할인가 -->
											<em class="discount">50%</em>
											<del>60,000원</del>
											<ins>29,900원</ins>
										</p>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="pagination">
					<a href="/shop/product/product_lists" data-ci-pagination-page="1" rel="start" class="" style="display: none;">&lt;&lt;</a><a href="/shop/product/product_lists" data-ci-pagination-page="1" rel="prev" class="">&lt;</a><span class="page"><a href="#self" class="on">1</a><a href="/shop/product/product_lists?page=2" data-ci-pagination-page="2">2</a><a href="/shop/product/product_lists?page=3" data-ci-pagination-page="3">3</a><a href="/shop/product/product_lists?page=4" data-ci-pagination-page="4">4</a><a href="/shop/product/product_lists?page=5" data-ci-pagination-page="5">5</a><a href="/shop/product/product_lists?page=6" data-ci-pagination-page="6">6</a><a href="/shop/product/product_lists?page=7" data-ci-pagination-page="7">7</a><a href="/shop/product/product_lists?page=8" data-ci-pagination-page="8">8</a><a href="/shop/product/product_lists?page=9" data-ci-pagination-page="9">9</a><a href="/shop/product/product_lists?page=10" data-ci-pagination-page="10">10</a></span><a href="/shop/product/product_lists?page=2" data-ci-pagination-page="2" rel="next" class="">&gt;</a><a href="/shop/product/product_lists?page=18" data-ci-pagination-page="18" class="" style="display: none;">&gt;&gt;</a>
				</div>
			</div>
		</div>
	</div>
	<form id="listFrm" name="listFrm" method="GET" action="/shop/product/product_lists">
		<input type="hidden" name="sh_category1_cd" id="sh_category1_cd" value="">
		<input type="hidden" name="sh_category2_cd" id="sh_category2_cd" value="">
		<input type="hidden" name="sh_category3_cd" id="sh_category3_cd" value="">
		<input type="hidden" name="sh_order_by" id="sh_order_by" value="1">
		<input type="hidden" name="sh_sort_order_by" id="sh_sort_order_by" value="">
		<input type="hidden" name="sh_filter_code" id="sh_filter_code" value="">
		<input type="hidden" name="sh_rcd" id="sh_rcd" value="">
	</form>
	<link rel="stylesheet" type="text/css" href="/asset/css/shop/slick.css">
	<link rel="stylesheet" type="text/css" href="/asset/css/shop/jqcloud.min.css">
	<script type="text/javascript" src="/asset/js/jqcloud.min.js"></script>
	<script type="text/javascript" src="/asset/js/slick.min.js"></script>
	<!-- http://mistic100.github.io/jQCloud/demo.html -->
	<script>	
		$(function(){
			$(".pagination > a:first-child, .pagination > a:last-child").css("display", "none");	// << >> 미노출
			var state = '1';
			if(state == "5"){	// 매장문의(2022-11-28 soldout랑 통합)
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
			$("#sh_order_by").val(state);
			if(state == "5"){	// 매장문의(2022-11-28 soldout랑 통합)
				$("#cate_txt").text("EXCLUSIVE");
			}else if(state == "1"){
				$("#cate_txt").text("VALUE");
			}else{
				$("#cate_txt").text("ALL");
			}
			form.submit();
		};
		// 갯수
		$(".rcd_cnt").on("click", function(){
			var form = document.listFrm;
			var val = $(this).val();
			$("#sh_rcd").val(val);
			setCookie("row_count_cookie",val, 30);
			form.submit();
		});
		// 정렬
		$("#js_select").change(function(){
			var form = document.listFrm;
			var val = $(this).val();
			$("#sh_sort_order_by").val(val);
			setCookie("list_order_cookie",val, 30);
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