package com.winevillage.note;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.member.IMemberService;
import com.winevillage.parameter.ParameterDTO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CouponController {
	
	@Autowired
	ICouponService dao;
	
	@Autowired
	IMemberService member;

	@GetMapping("shop/mypage/note/coupon_lists.do")
	public String coupon_lists(Model model, HttpServletRequest request,
			Authentication authentication) {
		//마이페이지 LNB에 메뉴 인식을 위한 토글용 문자열을 model로 전달
		model.addAttribute("mypage_lnb", "coupon_lists");
		
		int pageSize = 10;
		int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
					: Integer.parseInt(request.getParameter("page"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		int total = 0;
		int used = 0;
		int usable = 0;
		
		if (authentication != null) {
			parameterDTO.setMemberId(authentication.getName());
			total = dao.totalCoupon(authentication.getName());
			used = dao.usedCoupon(authentication.getName());
			usable = total - used;
		}
		model.addAttribute("total", total);
		model.addAttribute("used", used);
		model.addAttribute("usable", usable);
		
		ArrayList<CouponDTO> lists = null;
		if (authentication != null) lists = dao.listCoupon(parameterDTO);
		model.addAttribute("lists", lists);
		
		return "shop/mypage/note/coupon_lists";
	};
	
	@PostMapping("shop/mypage/note/coupon_proc")
	public ResponseEntity<Map<String, Object>> couponProc(Authentication authentication,
			@RequestParam("coupon_number") String coupon_number) {
		Map<String, Object> response = new HashMap<>();
		if (authentication == null) {
			response.put("status", "error");
			response.put("msg", "로그인 후 이용해주세요.");
			return ResponseEntity.badRequest().body(response);
		}
		
		try {
			//CouponDTO 객체를 생성한다.
			CouponDTO couponDTO = new CouponDTO();
			//CouponDTO 객체에 coupon_number 매개변수를 입력한다.
			couponDTO.setCoupon_code(coupon_number);
			//searchCouponCode 메서드를 실행하여 CouponDTO 데이터 타입의 coupon_code라는 변수를 생성한다.
			CouponDTO coupon_code = dao.searchCouponCode(couponDTO);
			//해당 아이디로 등록되어 있는 쿠폰의 조회를 위해 memberId를 입력
			couponDTO.setMemberId(authentication.getName());
			//기등록 조회를 위한 객체 생성
			CouponDTO couponExist = dao.checkCouponExist(couponDTO);
			//couponExist가 null이 아니면 이미 등록된 쿠폰 번호이다.
			if (couponExist != null) {
				response.put("status", "error");
				response.put("msg", "이미 등록된 쿠폰번호입니다.");
				return ResponseEntity.ok(response);
			}
			
			//현재 날짜를 Date 객체로 생성한다. 현재 날짜의 시간 정보를 제거하고 java.sql.Date 객체를 이용해 비교.
			//현재 시간이 00:00:00을 지났더라도 현재 시간을 00:00:00으로 간주시켜서 동일한 날짜로 처리
			java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
			
			//쿠폰 유효기간에 따른 처리
			if (coupon_code.getDate_start() != null && coupon_code.getDate_start().after(currentDate)) {
				response.put("msg", "쿠폰 사용기간이 아닙니다.");
				return ResponseEntity.ok(response);
			}
			if (coupon_code.getDate_end() != null && coupon_code.getDate_end().before(currentDate)) {
				response.put("msg", "쿠폰 사용기간이 종료되었습니다.");
				return ResponseEntity.ok(response);
			}
			
			//coupon_code 객체에 받아온 정보를 couponDTO에 주입
			couponDTO.setCoupon_name(coupon_code.getCoupon_name());
			couponDTO.setDiscount(coupon_code.getDiscount());
			couponDTO.setMinimum(coupon_code.getMinimum());
			LocalDate dateStart = LocalDate.now();
			LocalDate dateEnd = dateStart;
			if (coupon_code.getPeriod_month() != null) dateEnd = dateStart.plusMonths(coupon_code.getPeriod_month());
			if (coupon_code.getPeriod_day() != null) dateEnd = dateStart.plusDays(coupon_code.getPeriod_day());
			couponDTO.setDate_start(java.sql.Date.valueOf(dateStart));
			couponDTO.setDate_end(java.sql.Date.valueOf(dateEnd));
			couponDTO.setUsed(false);
			
			//coupon 테이블에 기록
			dao.addCoupon(couponDTO);
			//member 테이블에 기록
			member.addCouponCount(authentication.getName());
			//status를 클라이언트 측에 전달
			response.put("status", "ok");
		} catch (Exception e) {
			response.put("status", "error");
			response.put("msg", "쿠폰 조회 시 에러가 발생하였습니다.");
			e.printStackTrace();
			//return ResponseEntity.badRequest().body(response);
		}
		return ResponseEntity.ok(response);
	}
}
