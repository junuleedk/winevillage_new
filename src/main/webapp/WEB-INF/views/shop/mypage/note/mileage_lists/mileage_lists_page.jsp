<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 현재 날짜와 한 달 전 날짜 계산
	java.util.Calendar calendar = java.util.Calendar.getInstance();
	java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");

	// 현재 날짜
	String today = sdf.format(calendar.getTime());

	// 한 달 전 날짜
	calendar.add(java.util.Calendar.MONTH, -1);
	String oneMonthAgo = sdf.format(calendar.getTime());
%>
<div class="content mypage note shopping mileage_lists_page mileage_lists_test_page top_gap">
	<div class="inner">
		<div class="top_info">
			<div class="page_tit">
				<h2 class="tit">나의 마일리지</h2>
			</div>
			<div class="term_box">
				<div class="datepicker_area">
					<div class="datepicker">
						<input type="text" id="date_s" name="sh_s_date" value="<%= oneMonthAgo %>">
					</div>
					<span>~</span>
					<div class="datepicker">
						<input type="text" id="date_e" name="sh_e_date" value="<%= today %>">
					</div>
				</div>
				<button type="button" class="btn_txt btn_black" onclick="get_mlg_list();"><span>검색</span></button>
			</div>
		</div>
		<div class="mileage_box tab_area js_tab">
			<ul class="js_tabBtn tab2">
				<li class="on"><button type="button" data-val="plus_list">적립내역</button></li>
				<li><button type="button" data-val="minus_list">사용내역</button></li>
			</ul>
			<div class="js_tabCon o_lists on">
				<ul class="mypage_lists">
					<!-- <li>
						<div class="top_date">2024-05-24</div>
						<div class="o_wrap">
							<div class="box con">
								<div class="more_info">
									<p class="prd_name">
										<a>상품구매 적립</a>
									</p>
								</div>
							</div>
							<div class="box mileage">
								<p class="point plus">+85</p>
							</div>
						</div>
					</li>
					<li>
						<div class="top_date">2024-05-24</div>
						<div class="o_wrap">
							<div class="box con">
								<div class="more_info">
									<p class="prd_name">
										<a>고객/온라인상품주문적립</a>
									</p>
								</div>
							</div>
							<div class="box mileage">
								<p class="point plus">+85</p>
							</div>
						</div>
					</li> -->
				</ul>
			</div>
			<div class="js_tabCon o_lists">
				<ul class="mypage_use_lists">
				</ul>
			</div>
		</div>
	</div>
</div>