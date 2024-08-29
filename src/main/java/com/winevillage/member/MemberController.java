package com.winevillage.member;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class MemberController {

	@Autowired
	IMemberService dao;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
	@Autowired
	public AuthenticationManager authenticationManager;
	
	//회원가입 처리
	@PostMapping("/join_submit.do")
	@ResponseBody
    public Map<String, Object> joinSubmit(@RequestBody MemberDTO memberDTO,
    		HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>();
        
        try {
        	/* 비밀번호 암호화 이전의 암호를 char형으로 저장(Spring Security에서 Authentication 객체 만들때 필요).
        	이거 안 만들면 암호화된 비밀번호를 UsernamePasswordAuthenticationToken에서 한번 더 암호화하게 된다. */
        	char[] rawPassword = memberDTO.getMemberPassword().toCharArray();
        	
        	// 비밀번호 암호화
            memberDTO.setMemberPassword(passwordEncoder.encode(memberDTO.getMemberPassword()));
            
        	//디버깅
        	System.out.println("Received member data: " + memberDTO.toString());
            
            // 회원 정보 삽입
            int result = dao.insertMember(memberDTO);
            
            //AuthenticationManager에 등록할 정보를 담은 Authentication 객체.
            Authentication authentication = new UsernamePasswordAuthenticationToken(memberDTO.getMemberId(), new String(rawPassword));
            //Authentication 객체에 정보를 담은 후, 원본 암호 와이핑
            Arrays.fill(rawPassword, '\u0000');
            //Authentication 객체를 등록하는 객체(SecurityConfig의 AuthenticationManager에 등록해주는 역할.)
            Authentication authenticated = authenticationManager.authenticate(authentication);
            
            if (result > 0) {
            	//SecurityContext에 Authentication 객체를 등록하는 객체를 등록해준다.
            	SecurityContextHolder.getContext().setAuthentication(authenticated);
            	/* HttpServletRequest request를 매개변수로 하여
            	세션에 HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY라는 키로
            	SecurityContext를 저장한다. */
            	request.getSession().setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, SecurityContextHolder.getContext());
            	map.put("result", true);
                map.put("message", "회원가입이 성공적으로 완료되었습니다.");
            } else {
                map.put("result", false);
                map.put("message", "회원가입에 실패했습니다. 다시 시도해 주세요.");
            }
        } catch (Exception e) {
            map.put("성공", false);
            map.put("message", "회원가입 처리 중 오류가 발생했습니다: " + e.getMessage());
        }
        
        // 응답 로그
        System.out.println("result: " + map);
        
        return map;
    }
	
	//회원가입 완료
	@GetMapping("shop/member/join/join_ok.do")
	public String joinOk(HttpServletRequest request) {
	    // 세션 불러오기
	    HttpSession session = request.getSession();
	    // 세션에 SPRING_SECURITY_CONTEXT_KEY로 등록된 SecurityContext를 가져온다.
	    SecurityContext securityContext = (SecurityContext) session.getAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY);
	    
	    // SecurityContext에서 인증 정보 가져오기
	    Authentication authentication = null;
	    // 세션에 SPRING_SECURITY_CONTEXT_KEY로 등록된 SecurityContext가 null이 아니면
	    if (securityContext != null) {
	    	// Authentication 객체에 SecurityContext를 가지고 인증정보를 넣는다. 
	        authentication = securityContext.getAuthentication();
	    } else {
	        System.out.println("SecurityContext is null.");
	    }

	    // 인증 정보가 null이 아니고, 인증된 상태인지 확인
	    if (authentication != null && authentication.isAuthenticated()) {
	        // 인증 정보 확인을 위한 디버깅 출력 (원할 경우 주석 처리 가능)
	        System.out.println("Authenticated user: " + authentication.getName());
	        System.out.println("Authorities: " + authentication.getAuthorities());
	    } else {
	        // 인증되지 않은 경우
	        System.out.println("User is not authenticated.");
	    }

	    return "shop/member/join/join_ok";
	}
}
