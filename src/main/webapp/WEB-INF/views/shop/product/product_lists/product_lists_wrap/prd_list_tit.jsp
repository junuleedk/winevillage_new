<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="prd_list_tit">
	<div class="top">
		<h2>
		<c:if test="${category == '10000' && category_type == '[]' && category_country == '[]'}">WINE</c:if>
		<c:if test="${category_type == '[10101]'}">RED</c:if>
		<c:if test="${category_type == '[10102]'}">WHITE</c:if>
		<c:if test="${category_type == '[10103]'}">SPARKLING</c:if>
		<c:if test="${category_type == '[10104]'}">DESSERT</c:if>
		<c:if test="${category_type == '[10105]'}">FORTIFIED</c:if>
		<c:if test="${category_type == '[10108]'}">ROSE</c:if>
		<c:if test="${category_country == '[10201]'}">프랑스</c:if>
		<c:if test="${category_country == '[10202]'}">이탈리아</c:if>
		<c:if test="${category_country == '[10203]'}">스페인</c:if>
		<c:if test="${category_country == '[10204]'}">독일</c:if>
		<c:if test="${category_country == '[10205]'}">칠레</c:if>
		<c:if test="${category_country == '[10206]'}">미국</c:if>
		<c:if test="${category_country == '[10207]'}">호주</c:if>
		<c:if test="${category_country == '[10208]'}">뉴질랜드</c:if>
		<c:if test="${category_country == '[10209]'}">아르헨티나</c:if>
		<c:if test="${category_country == '[10210]'}">기타 구대륙</c:if>
		<c:if test="${category_country == '[10211]'}">기타 신대륙</c:if>
		<c:if test="${category_country == '[10213]'}">포르투갈</c:if>
		<c:if test="${category == '20000' && category_type == '[]'}">BEER&LIQUOR</c:if>
		<c:if test="${category_type == '[20101]'}">위스키</c:if>
		<c:if test="${category_type == '[20102]'}">꼬냑</c:if>
		<c:if test="${category_type == '[20103]'}">진</c:if>
		<c:if test="${category_type == '[20105]'}">데킬라</c:if>
		<c:if test="${category_type == '[20106]'}">럼</c:if>
		<c:if test="${category_type == '[20201]'}">맥주</c:if>
		<c:if test="${category == '40000'}">OTHER</c:if>
		<c:if test="${category == '50000'}">TICKET</c:if>
		</h2>
		<div class="line_map">
			<ul>
				<li onclick="location.href='/shop/main'" style="cursor: pointer;">HOME</li>
				<li onclick="location.href='/shop/product/product_lists?sh_category1_cd=&amp;sh_category2_cd=&amp;sh_category3_cd='" style="cursor: pointer;" id="cate_txt"></li>
			</ul>
		</div>
	</div>
	<div class="tab_area prd_tab_area tab3">
		<ul>
			<li class="state_li${classified == 'value' ? ' on' : ''}" id="state_li_1"><a href="javascript:void(0);" onclick="state_list('value');">VALUE </a></li>
			<li class="state_li${classified == 'exclusive' ? ' on' : ''}" id="state_li_5"><a href="javascript:void(0);" onclick="state_list('exclusive');">EXCLUSIVE</a></li>
			<li class="state_li${classified == 'all' || classified == null ? ' on' : ''}" id="state_li_all"><a href="javascript:void(0);" onclick="state_list('all');">ALL</a></li>
		</ul>
		<button class="smart_search" onclick="commonUI.layer.open('filter_layer')"><span>SMART SEARCH</span></button>
	</div>
</div>