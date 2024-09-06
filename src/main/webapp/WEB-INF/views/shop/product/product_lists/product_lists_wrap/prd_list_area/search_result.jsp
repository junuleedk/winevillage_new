<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="search_result">
	<div class="result_area">
		<p class="result" id="total_count_text">${ maps.count }개의 상품</p>
		<ul class="result_num">
			<li class="on_li${currentPageSize == 25 ? ' on' : ''}"><button class="rcd_cnt" value="25"><em>25</em>개</button></li>
			<li class="on_li${currentPageSize == 50 ? ' on' : ''}"><button class="rcd_cnt" value="50"><em>50</em>개</button></li>
			<li class="on_li${currentPageSize == 100 ? ' on' : ''}"><button class="rcd_cnt" value="100"><em>100</em>개씩 보기</button></li>
		</ul>
	</div>
	<div class="second_order">
		<select name="js_select" id="js_select" class="">
			<option value="recent"${sort == 'recent' ? ' selected' : ''}>최신순</option>
			<option value="price_desc"${sort == 'price_desc' ? ' selected' : ''}>높은 가격순</option>
			<option value="price_asc"${sort == 'price_asc' ? ' selected' : ''}>낮은 가격순</option>
			<!-- <option value="sales">판매량순</option> -->
		</select>
	</div>
</div>