package com.winevillage.event;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
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
public class EventController {

	@Autowired
	IEventService dao;
	
	@Autowired
	private IProductService product;
	
	@GetMapping("shop/event/event_lists.do")
	public String listEventNow(Model model, HttpServletRequest request,
			ParameterDTO parameterDTO) {		
		int pageSize = 6;
	    int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
	            : Integer.parseInt(request.getParameter("page"));
	    int start = (pageNum - 1) * pageSize + 1;
	    int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		model.addAttribute("maps", maps);
		
		ArrayList<EventDTO> lists = dao.listEventNow(parameterDTO);
		model.addAttribute("lists", lists);
		
		return "shop/event/event_lists";
	}
	
	@PostMapping("shop/event/event_list_ajax")
	@ResponseBody
	public Map<String, Object> listEventNowAjax(HttpServletRequest request,
			@RequestParam Map<String, String> parameter) {
	    // 페이지 번호를 params에서 가져오기
	    int pageNum = (parameter.get("page") == null || parameter.get("page").equals("")) ? 1
	            : Integer.parseInt(parameter.get("page"));

	    int pageSize = 6;
	    int start = (pageNum - 1) * pageSize + 1;
	    int end = pageNum * pageSize;

	    ParameterDTO parameterDTO = new ParameterDTO();
	    parameterDTO.setStart(start);
	    parameterDTO.setEnd(end);

	    // 이벤트 리스트 가져오기
	    List<EventDTO> lists = dao.listEventNow(parameterDTO);
	    
	    // 더 이상 불러올 데이터가 있는지 확인
	    boolean moreBtn = lists.size() == pageSize;

	    // HTML 문자열 생성
	    StringBuilder eventHtml = new StringBuilder();
	    for (EventDTO eventDTO : lists) {
	        eventHtml.append("<li>")
	                 .append("<a href=\"/shop/event/event_view.do?no=").append(eventDTO.getNo()).append("\">")
	                 .append("<div class=\"img\">")
	                 .append("<picture>")
	                 .append("<!--[if IE 9]><video style=\"display: none;\"><![endif]-->")
	                 .append("<source srcset=\"../../uploads/event/").append(eventDTO.getThumbnail()).append("\" media=\"(min-width:768px)\">")
	                 .append("<!-- pc이미지 -->")
	                 .append("<source srcset=\"../../uploads/event/").append(eventDTO.getThumbnail()).append("\" media=\"(max-width:767px)\">")
	                 .append("<!-- mb이미지 -->")
	                 .append("<!--[if IE 9]></video><![endif]-->")
	                 .append("<img src=\"../../uploads/event/").append(eventDTO.getThumbnail()).append("\" alt=\"\">")
	                 .append("<!-- pc이미지 -->")
	                 .append("</picture>")
	                 .append("</div>")
	                 .append("<div class=\"text\">")
	                 .append("<strong class=\"tit\">").append(eventDTO.getTitle()).append("</strong>")
	                 .append("<span class=\"con\"></span>")
	                 .append("<i class=\"date\">").append(eventDTO.getDate_start()).append(" ~ ").append(eventDTO.getDate_end()).append("</i>")
	                 .append("</div>")
	                 .append("</a>")
	                 .append("</li>");
	    }

	    // HTML 문자열 반환
	    //return eventHtml.toString();
	    
	    // 응답을 JSON으로 반환 (HTML + hasMore 값)
	    Map<String, Object> response = new HashMap<>();
	    response.put("html", eventHtml.toString());
	    response.put("more_btn", moreBtn);  // 더 이상 불러올 데이터가 있는지 여부

	    return response;
	}
	
	@GetMapping("shop/event/event_end.do")
	public String listEventEnd(Model model, HttpServletRequest request,
			ParameterDTO parameterDTO) {		
		int pageSize = 6;
	    int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
	            : Integer.parseInt(request.getParameter("page"));
	    int start = (pageNum - 1) * pageSize + 1;
	    int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pageSize", pageSize);
		maps.put("pageNum", pageNum);
		model.addAttribute("maps", maps);
		
		ArrayList<EventDTO> lists = dao.listEventNow(parameterDTO);
		model.addAttribute("lists", lists);
		
		return "shop/event/event_end";
	}
	
	@PostMapping("shop/event/event_list_end_ajax")
	@ResponseBody
	public Map<String, Object> listEventEndAjax(HttpServletRequest request,
			@RequestParam Map<String, String> parameter) {
		// 페이지 번호를 params에서 가져오기
		int pageNum = (parameter.get("page") == null || parameter.get("page").equals("")) ? 1
				: Integer.parseInt(parameter.get("page"));
		
		int pageSize = 6;
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		ParameterDTO parameterDTO = new ParameterDTO();
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		// 이벤트 리스트 가져오기
		List<EventDTO> lists = dao.listEventEnd(parameterDTO);
		
		// 더 이상 불러올 데이터가 있는지 확인
		boolean moreBtn = lists.size() == pageSize;
		
		// HTML 문자열 생성
		StringBuilder eventHtml = new StringBuilder();
		for (EventDTO eventDTO : lists) {
			eventHtml.append("<li class=\"end_event\">")
			.append("<a href=\"/shop/event/event_view.do?no=").append(eventDTO.getNo()).append("\">")
			.append("<div class=\"img\">")
			.append("<picture>")
			.append("<!--[if IE 9]><video style=\"display: none;\"><![endif]-->")
			.append("<source srcset=\"../../uploads/event/").append(eventDTO.getThumbnail()).append("\" media=\"(min-width:768px)\">")
			.append("<!-- pc이미지 -->")
			.append("<source srcset=\"../../uploads/event/").append(eventDTO.getThumbnail()).append("\" media=\"(max-width:767px)\">")
			.append("<!-- mb이미지 -->")
			.append("<!--[if IE 9]></video><![endif]-->")
			.append("<img src=\"../../uploads/event/").append(eventDTO.getThumbnail()).append("\" alt=\"\">")
			.append("<!-- pc이미지 -->")
			.append("</picture>")
			.append("</div>")
			.append("<div class=\"text\">")
			.append("<strong class=\"tit\">").append(eventDTO.getTitle()).append("</strong>")
			.append("<span class=\"con\"></span>")
			.append("<i class=\"date\">").append(eventDTO.getDate_start()).append(" ~ ").append(eventDTO.getDate_end()).append("</i>")
			.append("</div>")
			.append("</a>")
			.append("</li>");
		}
		
		// HTML 문자열 반환
		//return eventHtml.toString();
		
		// 응답을 JSON으로 반환 (HTML + hasMore 값)
		Map<String, Object> response = new HashMap<>();
		response.put("html", eventHtml.toString());
		response.put("more_btn", moreBtn);  // 더 이상 불러올 데이터가 있는지 여부
		
		return response;
	}
	
	@GetMapping("shop/event/event_view.do")
	public String eventView(Model model, @RequestParam(value = "no", required = false) int no,
			EventDTO eventDTO, ProductDTO productDTO) {
		
		// eventDTO에서 해당 이벤트를 가져옴
		eventDTO = dao.viewEvent(eventDTO);
		
		if (eventDTO == null) {
			// eventDTO가 null일 경우 기본 동작
			eventDTO = new EventDTO(); // eventDTO에 기본 객체 할당
		}
		
		model.addAttribute("event", eventDTO);
		
		// boolean 생성
		boolean isOngoing = false;
		// 이벤트 종료 날짜가 null인지 확인
		if (eventDTO.getDate_end() != null) {
			// 이벤트 종료 날짜를 가져옴 (date_end 칼럼)
			LocalDate eventDateEnd = eventDTO.getDate_end().toLocalDate();
			LocalDate currentDate = LocalDate.now();
			
			// 이벤트 종료 날짜가 현재 날짜보다 이전인지 확인, 비교하여 boolean 값 설정
			isOngoing = eventDateEnd.isAfter(currentDate) || eventDateEnd.isEqual(currentDate);
		}

		// JSP로 boolean 값 전달
		model.addAttribute("isOngoing", isOngoing);
		
		List<ProductDTO> productsList = new ArrayList<>();
		String productsListStr = eventDTO.getProduct_ul();
		if (productsListStr != null) {
			//related_product 값에 있는 상품번호를 String[]로 저장.
	        String[] product_codes = productsListStr.split("/");
	        for (String product_code : product_codes) {
	            productDTO.setProduct_code(product_code.trim());
	            ProductDTO relatedProduct = product.viewProduct(productDTO);
	            // 이제 relatedProduct에 관련 상품 정보가 담겨있습니다.
	            // 이를 모델에 추가하거나 원하는 대로 사용할 수 있습니다.
	            productsList.add(relatedProduct);
	        }
		}
		model.addAttribute("product_ul", productsList);
		return "shop/event/event_view";
	}
}
