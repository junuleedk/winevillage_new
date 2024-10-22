package com.winevillage.community;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.winevillage.parameter.ParameterDTO;
import com.winevillage.product.IProductService;
import com.winevillage.product.ProductDTO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class PressController {

	@Autowired
	IPressService dao;
	
	@Autowired
	private IProductService product;
	
	@GetMapping("shop/community/press_lists.do")
	public String listVideo(Model model, HttpServletRequest request,
			PressDTO pressDTO, ProductDTO productDTO, ParameterDTO parameterDTO) {
		int pageSize = 5;
		int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
					: Integer.parseInt(request.getParameter("page"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		ArrayList<PressDTO> lists = dao.listPress(parameterDTO);
		
		for (PressDTO press : lists) {
	        if (press.getDescription() != null) {
	            press.setDescription(press.getDescription().replace("<p>&nbsp;</p>", ""));
	        }
	    }
		
		model.addAttribute("lists", lists);
		
		return "shop/community/press_lists";
	}
	
	@PostMapping("shop/community/press_list_ajax")
	@ResponseBody
	public String listPressAjax(HttpServletRequest request,
			@RequestParam Map<String, String> parameter) {
		// 페이지 번호를 params에서 가져오기
		int pageNum = (parameter.get("page") == null || parameter.get("page").equals("")) ? 1
					: Integer.parseInt(parameter.get("page"));
		
		int pageSize = 5;
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		// 이벤트 리스트 가져오기
		ArrayList<PressDTO> lists = dao.listPress(parameterDTO);
		
		// 검색어 가져오기
		String keyword = parameter.get("keyword");
		if (keyword != null && !keyword.trim().isEmpty()) {
			// 키워드를 공백으로 분할하여 리스트로 변환
			List<String> keywords = Arrays.asList(keyword.trim().split("\\s+"));
			parameterDTO.setKeywords(keywords);
		}
	    
	    if (parameterDTO.getKeywords() != null && !parameterDTO.getKeywords().isEmpty()) {
	        // 검색어가 있을 경우 검색 메서드 호출
	        lists = dao.searchPress(parameterDTO);
	    }
		
		for (PressDTO press : lists) {
			if (press.getDescription() != null) {
				press.setDescription(press.getDescription().replace("<p>&nbsp;</p>", ""));
				press.setDescription(press.getDescription().replace("<p><span style=\"font-size: 10pt;\">&nbsp;</span></p>", ""));
				press.setDescription(press.getDescription().replace("<p><span style=\"font-family: 나눔바른고딕, NanumBarunGothic, NanumBarunGothicOTF;\">&nbsp;</span></p>", ""));
				press.setDescription(press.getDescription().replace("<font color=\"#303038\" face=\"돋움, dotum\"><span style=\"letter-spacing: -0.3px; background-color: rgb(255, 255, 255);\"><br></span></font>", ""));
				press.setDescription(press.getDescription().replace("<div id=\"copy_text\"><br></div>", ""));
				press.setDescription(press.getDescription().replace("<span style=\"color: rgb(30, 30, 30);\"><br></span>", ""));
				press.setDescription(press.getDescription().replace("<br><br>", "<br>"));
				press.setDescription(press.getDescription().replace("<br style=\"box-sizing: inherit; color: rgb(30, 30, 30); font-family: \">", ""));
			}
		}
		
		// HTML 문자열 생성
		StringBuilder resultHtml = new StringBuilder();
		for (PressDTO pressDTO : lists) {
			resultHtml.append("<li>");
			resultHtml.append("<div class=\"img\">");
			resultHtml.append("<img src=\"/uploads/press/").append(pressDTO.getImg()).append("\" alt=\"\">");
			resultHtml.append("</div>");
			resultHtml.append("<div class=\"con\">");
			resultHtml.append("<a href=\"/shop/community/press_view.do?seq=").append(pressDTO.getSeq()).append("\">");
			resultHtml.append("<p class=\"tit\">").append(pressDTO.getTitle()).append("</p>");
			resultHtml.append("</a>");
			resultHtml.append("<span>").append(pressDTO.getDescription()).append("</span>");
			resultHtml.append("<i class=\"date\">").append(pressDTO.getRegister_date()).append("</i>");
			resultHtml.append("</div>");
			resultHtml.append("</li>");
		}

		return resultHtml.toString();
	}
	
	@GetMapping("shop/community/press_view.do")
	public String pressView(Model model, ProductDTO productDTO, PressDTO pressDTO,
			@RequestParam(value = "seq", required = false) Integer seq,
			@RequestParam(name = "keyword", required = false) String searchKeyword) {
		
		// pressDTO에서 해당 이벤트를 가져옴
		pressDTO = dao.viewPress(pressDTO);
		
		if (pressDTO == null) {
			// pressDTO가 null일 경우 기본 동작
			pressDTO = new PressDTO(); // pressDTO에 기본 객체 할당
		}
		
		model.addAttribute("press", pressDTO);
		
		List<ProductDTO> productsList = new ArrayList<>();
		// related_product 값을 가져옴
		String productsListStr = pressDTO.getRelated_product();

		if (productsListStr != null && !productsListStr.trim().isEmpty()) {
			// '/' 구분자로 문자열을 분할하여 배열로 변환
			String[] product_codes = productsListStr.split("/");
			for (String product_code : product_codes) {
				productDTO.setProduct_code(product_code.trim());
				/* 여기서 related_product를 출력하기 위해 productDTO의 product_code를 변경하기 때문에 기존의
				product_code값을 사용하려면 해당 for문 위에서 별도로 저장해두어야 함. */
				ProductDTO viewProduct = product.viewProduct(productDTO);
				// 이제 relatedProduct에 관련 상품 정보가 담겨있습니다.
				// 이를 모델에 추가하거나 원하는 대로 사용할 수 있습니다.
				productsList.add(viewProduct);
			}
		}
		//Related Product를 model에 전달
		model.addAttribute("related_product", productsList);
		
		return "shop/community/press_view";
	}
}
