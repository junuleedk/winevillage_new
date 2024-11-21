<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String memberName = (String) request.getAttribute("memberName");
    String memberGrade = (String) request.getAttribute("memberGrade");
%>
<div class="common_lnb mileage_lnb">
	<div class="my">
		<div class="txt">
			<% if (memberGrade != null && memberGrade.equals("SILVER")) { %>
			<div class="img silver grade_info g100"><span>실버</span></div>
			<% } else if (memberGrade != null && memberGrade.equals("GOLD")) { %>
			<div class="img gold grade_info g200"><span>실버</span></div>
			<% } else if (memberGrade != null && memberGrade.equals("DIAMOND")) { %>
			<div class="img diamond grade_info g300"><span>실버</span></div>
			<% } else if (memberGrade != null && memberGrade.equals("TRINITY")) { %>
			<div class="img trinity grade_info g400"><span>실버</span></div>
			<% } else { %>
			<div class="img silver grade_info g100"><span></span></div>
			<% } %>
			<p>
				<strong class="name"><%= (memberName == null || memberName.isEmpty()) ? "회원" : memberName %></strong>님
			</p>
		</div>
		<div class="btn_area">
			<button type="button" class="btn_txt" onclick="commonUI.layer.open('grade_layer')">등급 혜택보기</button>
			<!-- <span>시음노트 작성하면 등급 UP</span> -->
		</div>
	</div>
	<div class="my_class_info">
		<ul class="">
			<li class="on">
				<p class="tit">누적 마일리지</p>
				<div class="num_box">
					<span>${saved != null ? saved : 0}</span>
				</div>
			</li>
			<li>
				<p class="tit">사용 마일리지</p>
				<div class="num_box">
					<span>${used != null ? used : 0}</span>
				</div>
			</li>
			<li>
				<p class="tit">가용 마일리지</p>
				<div class="num_box">
					<span>${usable != null ? usable : 0}</span>
				</div>
			</li>
			<!-- <li class="on">
				<p class="tit">소멸예정마일리지</p>
				<div class="num_box">
					<span>0</span>
				</div>
			</li> -->
		</ul>
	</div>
</div>