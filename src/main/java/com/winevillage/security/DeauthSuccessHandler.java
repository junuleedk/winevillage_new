package com.winevillage.security;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class DeauthSuccessHandler implements LogoutSuccessHandler {

	@Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException, ServletException {
//        HttpSession session = request.getSession(false); // false값 지정 시 세션이 존재하지 않는다고 새 세션을 생성하지 않습니다.
//        String redirectUrl = null;
//
//        if (session != null) {
//            redirectUrl = (String) session.getAttribute("currentUrl");
//            if (redirectUrl != null) {
//                session.removeAttribute("currentUrl");
//            }
//        }
//
//        if (redirectUrl == null) {
//            // 커스텀 로그아웃 후 리다이렉트 URL 설정
//            redirectUrl = request.getContextPath() + "/shop/main.do"; // 메인 페이지로 이동
//        }
//
//        response.sendRedirect(redirectUrl);
    }
}