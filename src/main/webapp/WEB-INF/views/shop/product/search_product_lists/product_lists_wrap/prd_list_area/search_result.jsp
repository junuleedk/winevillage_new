<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="search_result">
	<div class="second_order">
		<select name="js_select" id="js_select" class="">
			<option value="price_desc">높은 가격순</option>
			<option value="price_asc">낮은 가격순</option>
			<!-- <option value="D">판매량순</option> -->
			<option value="recent">최신순</option>
		</select>
	</div>
	<p class="result">총 <span class="total_count_text">${ maps.count }</span>개의 상품</p>
</div>