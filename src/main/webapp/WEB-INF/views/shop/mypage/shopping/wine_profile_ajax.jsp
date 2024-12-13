<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberName = (String) request.getAttribute("memberName");
%>
<div class="display_table">
	<div class="table_cell">
		<div class="layer_area">
			<button type="button" class="layer_close" onclick="commonUI.layer.close()"><span>Layer Close</span></button>
			<div class="layer_tit"><em><%= memberName %></em>님 사용자 테이스트 프로파일 선택</div>
			<div class="layer_con">
				<p class="info_txt"><em><%= memberName %></em> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
				<div class="wine_profile_con">
					<div class="con_box">
						<div class="box_tit">
							<h2>
								와인종류
								<!-- <a href="#" class="ico_note" onclick="$(this).toggleClass('on');">
									<p class="ntc_txt"><%= memberName %> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
								</a> -->
							</h2>
							<!-- <span>각 품종 명 아래 표기된 숫자는 해당 품종의 와인을 구매한 횟수입니다.</span> -->
							<!-- <div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch01" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch01">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div> -->
						</div>
						<ul class="list_box">
							<li><p>레드<em class="gray">0</em></p></li>
							<li><p>화이트<em class="gray">0</em></p></li>
							<li><p>스파클링<em class="gray">0</em></p></li>
							<li><p>디저트<em class="gray">0</em></p></li>
							<li><p>로제<em class="gray">0</em></p></li>
							<li><p>주정강화<em class="gray">0</em></p></li>
						</ul>
					</div>
					<div class="con_box">
						<div class="box_tit">
							<h2>
								가격
								<!-- <a href="#" class="ico_note" onclick="$(this).toggleClass('on');">
									<p class="ntc_txt"><%= memberName %> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
								</a> -->
							</h2>
							<!-- <div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch03" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch03">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div> -->
						</div>
						<div class="price_area">
							<ul>
								<li>
									<em class="gray">0</em>
									<p class="txt">~30,000</p>
									<div class="progress_line">
										<p class="fill" style="width:0%"></p>
										<p class="empty"></p>
									</div>
								</li>
								<li>
									<em class="gray">0</em>
									<p class="txt">30,000~60,000</p>
									<div class="progress_line">
										<p class="fill" style="width:0%"></p>
										<p class="empty"></p>
									</div>
								</li>
								<li>
									<em class="gray">0</em>
									<p class="txt">60,000~100,000</p>
									<div class="progress_line">
										<p class="fill" style="width:0%"></p>
										<p class="empty"></p>
									</div>
								</li>
								<li>
									<em class="gray">0</em>
									<p class="txt">100,000~</p>
									<div class="progress_line">
										<p class="fill" style="width:0%"></p>
										<p class="empty"></p>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="con_box">
						<div class="box_tit">
							<h2>
								맛
								<!-- <a href="#" class="ico_note" onclick="$(this).toggleClass('on');">
									<p class="ntc_txt"><%= memberName %> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
								</a> -->
							</h2>
							<!-- <div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch02" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch02">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div> -->
						</div>
						<dl class="taste">
							<!-- <dt>아로마</dt>
							<dd>
								<div class="area">
									<div class="left"><span>낮다</span></div>
									<div class="center">
										<ul>
											<li>0</li>
											<li>0</li>
											<li>1</li>
											<li>0</li>
											<li>0</li>
										</ul>
									</div>
									<div class="right"><span>높다</span></div>
								</div>
							</dd> -->
							<dt>당도</dt>
							<dd>
								<div class="area">
									<div class="left"><span>dry</span></div>
									<div class="center">
										<ul>
											<li class="gray">0</li>
											<li class="gray">0</li>
											<li class="gray">0</li>
											<li class="gray">0</li>
											<li class="gray">0</li>
										</ul>
									</div>
									<div class="right"><span>sweet</span></div>
								</div>
							</dd>
							<dt>산도</dt>
							<dd>
								<div class="area">
									<div class="left"><span>Low</span></div>
									<div class="center">
										<ul>
											<li class="gray">0</li>
											<li class="gray">0</li>
											<li class="">1</li>
											<li class="gray">0</li>
											<li class="gray">0</li>
										</ul>
									</div>
									<div class="right"><span>High</span></div>
								</div>
							</dd>
							<dt>바디</dt>
							<dd>
								<div class="area">
									<div class="left"><span>Light</span></div>
									<div class="center">
										<ul>
											<li class="gray">0</li>
											<li class="gray">0</li>
											<li class="">1</li>
											<li class="gray">0</li>
											<li class="gray">0</li>
										</ul>
									</div>
									<div class="right"><span>Heavy</span></div>
								</div>
							</dd>
							<dt>타닌</dt>
							<dd>
								<div class="area">
									<div class="left"><span>Low</span></div>
									<div class="center">
										<ul>
											<li class="gray">0</li>
											<li class="gray">0</li>
											<li class="gray">0</li>
											<li class="gray">0</li>
											<li class="gray">0</li>
										</ul>
									</div>
									<div class="right"><span>High</span></div>
								</div>
							</dd>
						</dl>
					</div>
					<div class="con_box">
						<div class="box_tit">
							<h2>
								포도품종
								<!-- <a href="#" class="ico_note" onclick="$(this).toggleClass('on');">
									<p class="ntc_txt"><%= memberName %> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
								</a> -->
							</h2>
							<!-- <div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch01" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch01">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div> -->
						</div>
						<ul class="list_box">
							<li><p>카베르네 소비뇽<em class="gray">0</em></p></li>
							<li><p>쉬라즈<em class="gray">0</em></p></li>
							<li><p>메를로<em class="gray">0</em></p></li>
							<li><p>카베르네 프랑<em class="gray">0</em></p></li>
							<li><p>템프라니요<em class="gray">0</em></p></li>
							<li><p>피노 누아<em class="gray">0</em></p></li>
							<li><p>말벡<em class="gray">0</em></p></li>
							<li><p>진판델<em class="gray">0</em></p></li>
							<li><p>산지오베제<em class="gray">0</em></p></li>
							<li><p>가메<em class="gray">0</em></p></li>
							<li><p>네비올로<em class="gray">0</em></p></li>
							<li><p>카르메네르<em class="gray">0</em></p></li>
							<li><p>그르나슈<em class="gray">0</em></p></li>
							<li><p>몬테풀치아노<em class="gray">0</em></p></li>
							<li><p>바르베라<em class="gray">0</em></p></li>
							<li><p>샤르도네<em class="gray">0</em></p></li>
							<li><p>세미용<em class="gray">0</em></p></li>
							<li><p>소비뇽 블랑<em class="gray">0</em></p></li>
							<li><p>리슬링<em class="gray">0</em></p></li>
							<li><p>슈냉 블랑<em class="gray">0</em></p></li>
							<li><p>모스카토<em class="gray">0</em></p></li>
							<li><p>피노그리<em class="gray">0</em></p></li>
							<li><p>비오니에<em class="gray">0</em></p></li>
							<li><p>게뷔르츠트라미너<em class="gray">0</em></p></li>
							<li><p>그뤼너 펠트리너<em class="gray">0</em></p></li>
							<li><p>베르데호<em class="gray">0</em></p></li>
							<li><p>알리고떼<em class="gray">0</em></p></li>
							<li><p>기타<em class="gray">0</em></p></li>
						</ul>
					</div>
					<div class="con_box">
						<div class="box_tit">
							<h2>
								국가
								<!-- <a href="#" class="ico_note" onclick="$(this).toggleClass('on');">
									<p class="ntc_txt"><%= memberName %> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
								</a> -->
							</h2>
							<!-- <span>각 국가명 아래 표기된 숫자는 해당 국가의 와인을 구매한 횟수입니다.</span> -->
							<!-- <div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch04" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch04">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div> -->
						</div>
						<ul class="list_box">
							<li><p>프랑스<em class="gray">0</em></p></li>
							<li><p>이탈리아<em class="gray">0</em></p></li>
							<li><p>스페인<em class="gray">0</em></p></li>
							<li><p>미국<em class="gray">0</em></p></li>
							<li><p>독일<em class="gray">0</em></p></li>
							<li><p>칠레<em class="gray">0</em></p></li>
							<li><p>아르헨티나<em class="gray">0</em></p></li>
							<li><p>호주<em class="gray">0</em></p></li>
							<li><p>뉴질랜드<em class="gray">0</em></p></li>
							<li><p>포루투갈<em class="gray">0</em></p></li>
							<li><p>기타구대륙<em class="gray">0</em></p></li>
							<li><p>기타신대륙<em class="gray">0</em></p></li>
						</ul>
					</div>
					<div class="con_box">
						<div class="box_tit">
							<h2>
								지역
								<!-- <a href="#" class="ico_note" onclick="$(this).toggleClass('on');">
									<p class="ntc_txt"><%= memberName %> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
								</a> -->
							</h2>
							<!-- <span>각 지역명 아래 표기된 숫자는 해당 지역의 와인을 구매한 횟수입니다.</span> -->
							<!-- <div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch05" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch05">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div> -->
						</div>
						<ul class="list_box">
							<li><p>랑그독루시용<em class="gray">0</em></p></li>
							<li><p>론<em class="gray">0</em></p></li>
							<li><p>보르도<em class="gray">0</em></p></li>
							<li><p>루아르<em class="gray">0</em></p></li>
							<li><p>보졸레<em class="gray">0</em></p></li>
							<li><p>부르고뉴<em class="gray">0</em></p></li>
							<li><p>샴페인<em class="gray">0</em></p></li>
							<li><p>알자스<em class="gray">0</em></p></li>
							<li><p>프로방스<em class="gray">0</em></p></li>
							<li><p>라치오<em class="gray">0</em></p></li>
							<li><p>롬바르디아<em class="gray">0</em></p></li>
							<li><p>리구리아<em class="gray">0</em></p></li>
							<li><p>베네토<em class="gray">0</em></p></li>
							<li><p>시실리<em class="gray">0</em></p></li>
							<li><p>아브루쪼<em class="gray">0</em></p></li>
							<li><p>에밀리아<em class="gray">0</em></p></li>
							<li><p>움브리아<em class="gray">0</em></p></li>
							<li><p>캄파니아<em class="gray">0</em></p></li>
							<li><p>토스카나<em class="gray">0</em></p></li>
							<li><p>풀리아<em class="gray">0</em></p></li>
							<li><p>프리울리<em class="gray">0</em></p></li>
							<li><p>피에몬테<em class="gray">0</em></p></li>
							<li><p>갈리시아<em class="gray">0</em></p></li>
							<li><p>까딸루냐 <em class="gray">0</em></p></li>
							<li><p>나바라 <em class="gray">0</em></p></li>
							<li><p>리오하<em class="gray">0</em></p></li>
							<li><p>카스틸라 라만차<em class="gray">0</em></p></li>
							<li><p>카스틸라 이 레온<em class="gray">0</em></p></li>
							<li><p>캘리포니아<em class="gray">0</em></p></li>
							<li><p>오레곤<em class="gray">0</em></p></li>
							<li><p>워싱턴 <em class="gray">0</em></p></li>
							<li><p>기타<em class="gray">0</em></p></li>
						</ul>
					</div>
					<!-- 삭제처리 요청
					<div class="con_box">
						<div class="box_tit">
							<h2>아로마<a href="#" class="ico_note"></a></h2>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch07" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch07">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div>
						</div>
						<!-- <div class="enrollment_area">
							<input type="text" placeholder='아로마를 입력하세요.'>
							<button type="button" class="btn_txt btn_black">등록</button>
						</div>
						<ul class="list_box">
							<li><p>블루베리<em>11</em></p></li>
							<li><p>블랙베리<em>20</em></p></li>
							<li><p>자두<em>11</em></p></li>
							<li><p>체리<em>20</em></p></li>
							<li><p>딸기<em>11</em></p></li>
							<li><p>건포도<em>20</em></p></li>
							<li><p>무화과<em>20</em></p></li>
							<li><p>대추야자<em>11</em></p></li>
							<li><p>오렌지<em>11</em></p></li>
							<li><p>레몬<em>11</em></p></li>
							<li><p>자몽<em>20</em></p></li>
							<li><p>라벤더<em>20</em></p></li>
							<li><p>장미<em>11</em></p></li>
							<li><p>라일락<em>11</em></p></li>
							<li><p>허브<em>11</em></p></li>
							<li><p>민트<em>20</em></p></li>
							<li><p>그린아몬드<em>20</em></p></li>
							<li><p>후추<em>11</em></p></li>
							<li><p>고추<em>11</em></p></li>
							<li><p>계피<em>11</em></p></li>
							<li><p>버터<em>20</em></p></li>
							<li><p>흙<em>11</em></p></li>
							<li><p>타르<em>11</em></p></li>
							<li><p>초콜릿<em>11</em></p></li>
							<li><p>커피<em>11</em></p></li>
							<li><p>가죽<em>20</em></p></li>
							<li><p>삼나무<em>20</em></p></li>
							<li><p>코코넛<em>11</em></p></li>
							<li><p>콜라<em>11</em></p></li>
						</ul>
					</div>
					-->
					<div class="con_box">
						<div class="box_tit">
							<h2>
								비비노 평점
								<!-- <a href="#" class="ico_note" onclick="$(this).toggleClass('on');">
									<p class="ntc_txt"><%= memberName %> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
								</a> -->
							</h2>
							<!-- <div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch08" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch08">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div> -->
						</div>
						<div class="review_star">
							<ul>
								<li>
									<em class="gray">0</em>
									<div class="star_area">
										<!-- 별 한 개당 20% -->
										<span class="full" style="width:90%"></span>
										<span class="empty"></span>
									</div>
									<span class="star_num">4.5</span>
									<div class="txt">특별한, 희귀한</div>
								</li>
								<li>
									<em class="gray">0</em>
									<div class="star_area">
										<!-- 별 한 개당 20% -->
										<span class="full" style="width:80%"></span>
										<span class="empty"></span>
									</div>
									<span class="star_num">4.0</span>
									<div class="txt">매우 좋은</div>
								</li>
								<li>
									<em class="gray">0</em>
									<div class="star_area">
										<!-- 별 한 개당 20% -->
										<span class="full" style="width:70%"></span>
										<span class="empty"></span>
									</div>
									<span class="star_num">3.5</span>
									<div class="txt">좋은</div>
								</li>
								<li>
									<em class="gray">0</em>
									<div class="star_area">
										<!-- 별 한 개당 20% -->
										<span class="full" style="width:60%"></span>
										<span class="empty"></span>
									</div>
									<span class="star_num">3.0</span>
									<div class="txt">평균</div>
								</li>
								<!--li>
									<em>0</em>
									<div class="txt">모든평점</div>
								</li-->
							</ul>
						</div>
					</div>
					<div class="con_box food" style="display:none">
						<div class="box_tit">
							<h2>
								음식페어링
								<a href="#" class="ico_note" onclick="$(this).toggleClass('on');">
									<p class="ntc_txt"><%= memberName %> 고객님께서 구입하신 와인 데이터를 기초로 만들어지는 테이스트 프로파일을 사용해서 고객님께서 선호할 가능성이 높은 와인을 추천합니다. 추천에 사용할 프로파일 항목을 ON/OFF 할 수 있고 추천 세부 조건을 선택하는 것도 가능합니다.</p>
								</a>
							</h2>
							<div class="btn_switch_module js_switch css_switch">
								<input type="checkbox" id="layer_btn_switch06" class="btn_switch_check">
								<div class="btn_switch_area">
									<span class="txt left pc_hidden">ON</span>
									<div class="btn_switch">
										<span class="pc_txt left mb_hidden">ON</span>
										<label class="bar" for="layer_btn_switch06">&nbsp;</label>
										<span class="pc_txt right mb_hidden">OFF</span>
									</div>
									<span class="txt right pc_hidden">OFF</span>
								</div>
							</div>
						</div>
						<div class="enrollment_area">
							<input type="text" placeholder='음식페어링을 입력하세요.'>
							<button type="button" class="btn_txt btn_black">등록</button>
						</div>
						<ul class="list_box"></ul>
					</div>
				</div>
				<!-- <div class="btn_area col2">
					<button type="button" class="btn_txt" onclick="commonUI.layer.close()"><span>취소</span></button>
					<button type="button" class="btn_txt btn_black"><span>등록</span></button>
				</div> -->
			</div>
		</div>
	</div>
</div>