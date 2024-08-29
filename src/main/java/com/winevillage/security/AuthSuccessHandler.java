package com.winevillage.security;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//public class AuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
//	@Override
//    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        if (session != null) {
//            String redirectUrl = (String) session.getAttribute("currentUrl");
//            if (redirectUrl != null) {
//                session.removeAttribute("currentUrl");
//                getRedirectStrategy().sendRedirect(request, response, redirectUrl);
//            } else {
//                super.onAuthenticationSuccess(request, response, authentication);
//            }
//        } else {
//            super.onAuthenticationSuccess(request, response, authentication);
//        }
//    }
//}
public class AuthSuccessHandler implements AuthenticationSuccessHandler {
	private ConcurrentHashMap<String, Integer> loginAttempts;

    public AuthSuccessHandler(ConcurrentHashMap<String, Integer> loginAttempts) {
        this.loginAttempts = loginAttempts;
    }
    
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
    		Authentication authentication) throws IOException {
        response.setStatus(HttpServletResponse.SC_OK);
        response.setContentType("application/json;charset=UTF-8");
        String userId = request.getParameter("login_user_id");
        // 로그인 성공 시 실패 횟수 초기화
        if (loginAttempts.containsKey(userId)) {
            loginAttempts.remove(userId);  // 실패 횟수 초기화
        }
        response.getWriter().write("{\"result\": " + authentication.isAuthenticated() + "}");
    }
}