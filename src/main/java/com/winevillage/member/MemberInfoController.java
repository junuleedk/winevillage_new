package com.winevillage.member;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@ControllerAdvice
public class MemberInfoController {
	
	@Autowired
    private JdbcTemplate jdbcTemplate;
	
	private boolean sessionNotChanged(HttpServletRequest request) {
	    HttpSession session = request.getSession(false); // 세션이 없으면 null 반환
	    if (session != null) {
	        String currentSessionId = session.getId();
	        String lastCheckedSessionId = (String) session.getAttribute("lastCheckedSessionId");
	        // 세션 ID가 이전에 확인된 것과 다른 경우에만 콘솔 출력
	        if (lastCheckedSessionId == null || !lastCheckedSessionId.equals(currentSessionId)) {
	            // 콘솔에 세션 정보 출력
	            System.out.println("Session ID: " + currentSessionId);
	            System.out.println("Session Creation Time: " + 
	            	(new SimpleDateFormat("yyyy.MM.dd HH:mm:ss").format(new Date(session.getCreationTime()))));
	            session.setAttribute("lastCheckedSessionId", currentSessionId);
	            return true; // 세션 ID가 변경되었음을 나타냄
	        }
	    } else {
	        // 콘솔에 세션이 없음을 알림
	        System.out.println("No session found.");
	    }
	    return false; // 세션 ID가 변경되지 않음
	}
	
	@ModelAttribute("memberId")
	public String getLoggedInUserId(HttpServletRequest request) {
		boolean sessionNotChanged = sessionNotChanged(request);
		HttpSession session = request.getSession(false); // 세션이 없으면 null 반환
	    if (session != null) {
	        // 세션에서 SecurityContext 가져오기
	        SecurityContext securityContext = (SecurityContext) session.getAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY);
	        if (securityContext != null) {
	        	if (sessionNotChanged) {
	                System.out.println("SecurityContext found in session.");
	            }
	            Authentication authentication = securityContext.getAuthentication();
	            if (authentication != null && authentication.isAuthenticated()) {
	                return authentication.getName(); // Authentication의 아이디를 반환
	            }
	        } else if (sessionNotChanged) {
	            // 콘솔에 SecurityContext가 없음을 알림
	            System.out.println("SecurityContext not found in session.");
	        }
	    }
	    return null;
	}

	@ModelAttribute("memberName")
	public String getLoggedInUserName(HttpServletRequest request) {
		boolean sessionNotChanged = sessionNotChanged(request);
		HttpSession session = request.getSession(); // 세션이 없으면 null 반환
		
	    if (session != null) {
	        // 세션에서 SecurityContext 가져오기
	        SecurityContext securityContext = (SecurityContext) session.getAttribute("cachedSecurityContext");
	        if (securityContext == null) {
	            // 세션에서 SecurityContext 가져오기
	            securityContext = (SecurityContext) session.getAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY);
	            if (securityContext != null) {
	                // SecurityContext를 세션에 저장
	                session.setAttribute("cachedSecurityContext", securityContext);
	            }
	        }
	        if (securityContext != null) {
	            Authentication authentication = securityContext.getAuthentication();
	            if (authentication != null && authentication.isAuthenticated()) {
	                String memberId = authentication.getName(); // username 가져오기
	                if (sessionNotChanged) {
	                    System.out.println("Authenticated User ID: " + memberId);
	                }
	                // 데이터베이스에서 memberName 가져오기
	                String query = "SELECT membername FROM member WHERE memberid = ?";
	                return jdbcTemplate.queryForObject(query, new Object[]{memberId}, String.class);
	            }
	        }
	    }
	    return null;
	}
	
	@ModelAttribute("memberPoints")
	public int getMemberPoints(HttpServletRequest request) {
		boolean sessionNotChanged = sessionNotChanged(request);
		HttpSession session = request.getSession(); // 세션이 없으면 null 반환
		
		if (session != null) {
			// 세션에서 SecurityContext 가져오기
			SecurityContext securityContext = (SecurityContext) session.getAttribute("cachedSecurityContext");
			if (securityContext == null) {
				// 세션에서 SecurityContext 가져오기
				securityContext = (SecurityContext) session.getAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY);
				if (securityContext != null) {
					// SecurityContext를 세션에 저장
					session.setAttribute("cachedSecurityContext", securityContext);
				}
			}
			if (securityContext != null) {
				Authentication authentication = securityContext.getAuthentication();
				if (authentication != null && authentication.isAuthenticated()) {
					String memberId = authentication.getName(); // username 가져오기
					if (sessionNotChanged) {
						System.out.println("Authenticated User ID: " + memberId);
					}
					// 데이터베이스에서 memberName 가져오기
					String query = "SELECT memberpoints FROM member WHERE memberid = ?";
					return jdbcTemplate.queryForObject(query, new Object[]{memberId}, Integer.class);
				}
			}
		}
		return 0;
	}
}