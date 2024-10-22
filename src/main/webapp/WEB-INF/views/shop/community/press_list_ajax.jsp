<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:forEach items="${lists}" var="item">
<li>
    <div class="img" onclick='location.href="/shop/community/press_view?press_seq=${item.seq}"' style="cursor: pointer;">
        <img src="/uploads/press/${item.img}" alt="">
    </div>
    <div class="con">
        <a href="/shop/community/press_view.do?seq=${item.seq}"><p class="tit">${item.title}</p></a>
        <span>${item.description}</span>
        <i class="date"><fmt:formatDate value="${item.register_date}" pattern="yyyy-MM-dd"/></i>
    </div>
</li>
</c:forEach>