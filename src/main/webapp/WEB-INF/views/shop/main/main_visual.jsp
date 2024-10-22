<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="main_visual">
	<c:if test="${not empty event}">
	<%@ include file="main_visual/m_slide.jsp" %>
	<%@ include file="main_visual/control_box.jsp" %>
	</c:if>
</div>