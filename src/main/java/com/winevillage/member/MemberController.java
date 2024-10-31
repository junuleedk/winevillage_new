package com.winevillage.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
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
	private AuthenticationManager authenticationManager;
	
	@PostMapping("/join_submit.do")
    @ResponseBody
    public Map<String, Object> joinSubmit(@RequestBody MemberDTO memberDTO, HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>();
        
        try {
        	
        	 // 원본 비밀번호 저장
            String rawPassword = memberDTO.getMemberPassword();
            
        	// 비밀번호 암호화
             memberDTO.setMemberPassword(passwordEncoder.encode(rawPassword));

             //디버깅
             System.out.println("Received member data: " + memberDTO.toString());
             
            // 회원 정보 삽입
            int result = dao.insertMember(memberDTO);
            
            if (result > 0) {
                map.put("result", true);
                map.put("message", "회원가입이 성공적으로 완료되었습니다.");
                
                // 세션에 로그인 정보 저장
                HttpSession session = request.getSession();
                session.setAttribute("pendingLoginId", memberDTO.getMemberId());
                session.setAttribute("pendingLoginPassword", rawPassword);
                
                System.out.println("Saved to session - ID: " + memberDTO.getMemberId());
                System.out.println("Session ID: " + session.getId());
                
                // 자동 로그인 처리
                try {
                    UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(
                            memberDTO.getMemberId(), rawPassword);
                    Authentication auth = authenticationManager.authenticate(token);
                    SecurityContextHolder.getContext().setAuthentication(auth);

                    map.put("로그인", true);
                } catch (Exception e) {
                    map.put("로그인", false);
                    map.put("loginMessage", "자동 로그인에 실패했습니다: " + e.getMessage());
                }
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
	
	@PostMapping("/performLogin.do")
    @ResponseBody
    public Map<String, Object> performLogin(HttpServletRequest request) {
        Map<String, Object> response = new HashMap<>();
        HttpSession session = request.getSession();
        
        String username = (String) session.getAttribute("pendingLoginId");
        String password = (String) session.getAttribute("pendingLoginPassword");
        
        System.out.println("Saved to session - ID: " + username);
        System.out.println("Session ID: " + session.getId());
        
        if (username != null && password != null) {
            try {
                UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(username, password);
                Authentication auth = authenticationManager.authenticate(token);
                SecurityContextHolder.getContext().setAuthentication(auth);
                
                session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY, 
                                     SecurityContextHolder.getContext());
                
                session.removeAttribute("pendingLoginId");
                session.removeAttribute("pendingLoginPassword");
                
                // 사용자 정보 가져오기
                MemberDTO member = dao.findMemberId(username);
                if (member != null) {
                    response.put("memberName", member.getMemberName());
                }
                response.put("success", true);
                response.put("message", "로그인 성공");
            } catch (Exception e) {
                response.put("success", false);
                response.put("message", "로그인 실패: " + e.getMessage());
            }
        } else {
            response.put("success", false);
            response.put("message", "로그인 정보가 없습니다.");
        }
        
        return response;
    }
}
