package com.winevillage.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class MemberController {

	@Autowired
	IMemberService dao;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
	@PostMapping("/join_submit.do")
    @ResponseBody
    public Map<String, Object> joinSubmit(@RequestBody MemberDTO memberDTO) {
        Map<String, Object> map = new HashMap<>();
        
        try {
        	
        	//디버깅
        	 System.out.println("Received member data: " + memberDTO.toString());
        	
            // 비밀번호 암호화
            memberDTO.setMemberPassword(passwordEncoder.encode(memberDTO.getMemberPassword()));
            
            // 회원 정보 삽입
            int result = dao.insertMember(memberDTO);
            
            if (result > 0) {
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
}
