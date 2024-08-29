package com.winevillage.security;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.view.RedirectView;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class AuthSuccessHandler_dummy implements AuthenticationSuccessHandler {
	
	@GetMapping("/login_proc")
	public String loginProc(HttpServletRequest request,
			HttpServletResponse response, Model model) {
	    HttpSession session = request.getSession();

	    // RequestCache 생성 후 세션으로부터 정보 얻기
	    RequestCache requestCache = new HttpSessionRequestCache();
	    SavedRequest savedRequest = requestCache.getRequest(request, response);

	    String targetUrl = "/";
	    if (savedRequest != null) {
	        targetUrl = savedRequest.getRedirectUrl();
	    }

	    // targetUrl을 세션에 설정
	    session.setAttribute("targetUrl", targetUrl);

	    // targetUrl을 모델에 추가
	    model.addAttribute("targetUrl", targetUrl);

	    return "login_proc"; // login_proc.jsp를 반환
	}

	private RequestCache requestCache = new HttpSessionRequestCache();

//	@Override
//    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
//                                        Authentication authentication) throws IOException, ServletException {
//    }

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
	        Authentication authentication) throws IOException, ServletException {
	    SavedRequest savedRequest = requestCache.getRequest(request, response);

	    if (savedRequest == null) {
	        clearAuthenticationAttributes(request);
	        return;
	    }

	    String targetUrl = savedRequest.getRedirectUrl();
	    request.getSession().setAttribute("targetUrl", targetUrl); // targetUrl 속성을 세션에 설정
	    response.sendRedirect(targetUrl);
	} 

	protected void clearAuthenticationAttributes(HttpServletRequest request) {
		HttpServletRequest cache = (HttpServletRequest) request.getSession().getAttribute("SPRING_SECURITY_SAVED_REQUEST");
		if (cache != null) {
			request.getSession().removeAttribute("SPRING_SECURITY_SAVED_REQUEST");
		}
	}
	
	//public static void main(String[] args) {
	//	// TODO Auto-generated method stub
	//
	//}
}
