<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="search_result">
	<div class="second_order">
		<div class="btn_switch_module js_switch css_switch" style="display:none;">
			<!-- 당일픽업 추후적용 -->
			<input type="checkbox" id="btn_switch03" class="btn_switch_check">
			<div class="btn_switch_area">
				<span class="txt left">당일픽업</span>
				<div class="btn_switch">
					<!-- <span class="pc_txt left mb_hidden"></span> -->
					<label class="bar" for="btn_switch03">&nbsp;</label>
					<!-- <span class="pc_txt right mb_hidden"></span> -->
				</div>
				<span class="txt right pc_hidden">당일픽업</span>
			</div>
		</div>
		<select name="js_select" id="js_select" class="">
			<option value="recent"${sort == 'recent' ? ' selected' : ''}>최신순</option>
			<option value="price_desc"${sort == 'price_desc' ? ' selected' : ''}>높은 가격순</option>
			<option value="price_asc"${sort == 'price_asc' ? ' selected' : ''}>낮은 가격순</option>
			<!-- <option value="sales">판매량순</option> -->
		</select>
	</div>
	<p class="result">총 <span>${ maps.count }</span>개의 상품</p>
</div>