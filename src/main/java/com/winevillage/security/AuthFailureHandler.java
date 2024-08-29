package com.winevillage.security;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

public class AuthFailureHandler implements AuthenticationFailureHandler {
	
    private static ConcurrentHashMap<String, Integer> loginAttempts;
    
    public AuthFailureHandler(ConcurrentHashMap<String, Integer> loginAttempts) {
        this.loginAttempts = loginAttempts;
    }

	@Override
	public void onAuthenticationFailure(HttpServletRequest request,
			HttpServletResponse response, AuthenticationException exception) throws IOException {
	    response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
	    response.setContentType("application/json;charset=UTF-8");
	    
	    String userId = request.getParameter("login_user_id");
        int failedAttempts = loginAttempts.getOrDefault(userId, 0);
        failedAttempts++;
        
        if (failedAttempts >= 1) {
            loginAttempts.put(userId, failedAttempts);  // 계정 잠금 상태 유지
        }

	    String status = exception.getMessage();
	    String message = null;
	    
	    if (exception instanceof BadCredentialsException) {
	        status = "AUTH_DENIED";
	        message = "로그인 정보를 확인해주세요.";
	    } else if (exception instanceof CredentialsExpiredException) {
	        status = "CREDENTIALS_EXPIRED";
	        message = "자격 증명이 만료되었습니다.";
	    } else if(exception instanceof DisabledException) {
	        status = "ACCOUNT_DISABLED";
	        message = "회원님의 계정은 현재 휴면 상태입니다. 휴면 상태 해제 페이지로 이동하시겠습니까?";
	    } else if (exception instanceof LockedException) {
	        status = "ACCOUNT_LOCKED";
	        message = "계정이 잠겼습니다.";
	    }
	    
	    response.getWriter().write("{\"result\": false, \"status\": \"" + status + "\", \"message\": \"" + message + "\", \"pass_error_count\": " + failedAttempts + "}");
	}
}