package com.winevillage.iptrack;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class IPTracker implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) {
		HttpSession session = request.getSession();
		if(session.getAttribute("hasVisited") == null) {
			String ipAddress = request.getRemoteAddr();
			System.out.println("최초 접속. IP: " + ipAddress);
			session.setAttribute("hasVisited", true);
		}
		return true;
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex) {
		if(request.getSession(false) != null && request.getSession().getAttribute("hasVisited") != null) {
			System.out.println("접속 해제"); request.getSession().invalidate();
		}
	}
}