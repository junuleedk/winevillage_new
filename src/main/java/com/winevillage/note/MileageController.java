package com.winevillage.note;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.winevillage.parameter.ParameterDTO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MileageController {
	
	@Autowired
	IMileageService dao;

	@GetMapping("shop/mypage/note/mileage_lists.do")
	public String mileage_lists(Model model, MileageDTO mileageDTO, Authentication authentication) {
		if (authentication != null) mileageDTO.setMemberId(authentication.getName());
		int plus = dao.totalPlusPoints(mileageDTO);
		int minus = dao.totalMinusPoints(mileageDTO);
		//해당 if문 없으면 전체 고객들의 마일리지 포인트가 출력되기 때문에 꼭 필요한 if문임
		if (authentication != null) {
			model.addAttribute("saved", plus);
			model.addAttribute("used", minus);
			model.addAttribute("usable", (plus-minus));
		}
		
		return "shop/mypage/note/mileage_lists";
	};
	
	@PostMapping("shop/mypage/note/mileage_erp_lists_ajax")
	public String mileageErpListsAjax(Model model, HttpServletRequest request,
			Authentication authentication) {
		// 클라이언트에서 전달된 파라미터 처리
	    String list_gb = request.getParameter("list_gb"); // minus 또는 plus 등
	    String sh_s_date = request.getParameter("sh_s_date"); // 검색 시작 날짜 (YYYY-MM-DD)
	    String sh_e_date = request.getParameter("sh_e_date"); // 검색 종료 날짜 (YYYY-MM-DD)
	    
		int pageSize = 4;
		int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
					: Integer.parseInt(request.getParameter("page"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		parameterDTO.setList_gb(list_gb);
		parameterDTO.setSh_s_date(sh_s_date);
		parameterDTO.setSh_e_date(sh_e_date);
		if (authentication != null) parameterDTO.setMemberId(authentication.getName());
		
		ArrayList<MileageDTO> lists = dao.listMileage(parameterDTO);
		//해당 if문 없으면 고객들 마일리지 리스트 전체 다 출력되기 때문에 꼭 필요한 if문임
		if (authentication != null) {
			model.addAttribute("lists", lists);
		}
		
		return "shop/mypage/note/mileage_erp_lists_ajax";
	}
}
