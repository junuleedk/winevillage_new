package com.winevillage.community;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.winevillage.parameter.ParameterDTO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BrandStoryController {
	
	@Autowired
	IBrandStoryService dao;

	@GetMapping("shop/community/brandstory_lists.do")
	public String listBrandStory(Model model, HttpServletRequest request,
			ParameterDTO parameterDTO) {
		int pageSize = 4;
		int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
					: Integer.parseInt(request.getParameter("page"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		ArrayList<BrandStoryDTO> lists = dao.listBrandStory(parameterDTO);
		model.addAttribute("lists", lists);
		
		return "shop/community/brandstory_lists";
	}
	
	@PostMapping("shop/community/brandstory_lists_ajax")
	@ResponseBody
	public String listBrandStoryAjax(HttpServletRequest request,
			@RequestParam Map<String, String> parameter) {
		// 페이지 번호를 params에서 가져오기
	    int pageNum = (parameter.get("page") == null || parameter.get("page").equals("")) ? 1
	            : Integer.parseInt(parameter.get("page"));
	    
	    int pageSize = 4;
	    int start = (pageNum - 1) * pageSize + 1;
	    int end = pageNum * pageSize;
	    
	    ParameterDTO parameterDTO = new ParameterDTO();
	    parameterDTO.setStart(start);
	    parameterDTO.setEnd(end);
	    
	    // 이벤트 리스트 가져오기
	    ArrayList<BrandStoryDTO> lists = dao.listBrandStory(parameterDTO);
	    
	 // HTML 문자열 생성
	    StringBuilder resultHtml = new StringBuilder();
	    for (BrandStoryDTO brandStoryDTO : lists) {
	    	resultHtml.append("<li>");
	    	resultHtml.append("<a href=\"/shop/community/brandstory_view.do?story_seq=").append(brandStoryDTO.getStory_seq()).append("\">");
	    	resultHtml.append("<div class=\"img\">");
	    	resultHtml.append("<picture>");
	    	resultHtml.append("<!--[if IE 9]><video style=\"display: none;\"><![endif]-->");
	    	resultHtml.append("<source srcset=\"/../../uploads/story/").append(brandStoryDTO.getThumbnail()).append("\" media=\"(min-width:768px)\">");
	    	resultHtml.append("<!-- pc이미지 -->");
	    	resultHtml.append("<source srcset=\"/../../uploads/story/").append(brandStoryDTO.getThumbnail()).append("\" media=\"(max-width:767px)\">");
	    	resultHtml.append("<!-- mb이미지 -->");
	    	resultHtml.append("<!--[if IE 9]></video><![endif]-->");
	    	resultHtml.append("<img src=\"/../../uploads/story/").append(brandStoryDTO.getThumbnail()).append("\" alt=\"").append(brandStoryDTO.getTitle()).append(" \">");
	    	resultHtml.append("<!-- pc이미지 -->");
	    	resultHtml.append("</picture>");
	    	resultHtml.append("</div>");
	    	resultHtml.append("</a>");
	    	resultHtml.append("</li>");
	    }

	    return resultHtml.toString();
	}
	
	@GetMapping("shop/community/brandstory_view.do")
	public String brandstoryView(Model model,
			@RequestParam(value = "story_seq", required = false) Integer storySeq,
			BrandStoryDTO brandstoryDTO) {
		
		brandstoryDTO = dao.viewBrandStory(brandstoryDTO);
		
		if (brandstoryDTO == null) {
			// eventDTO가 null일 경우 기본 동작
			brandstoryDTO = new BrandStoryDTO(); // eventDTO에 기본 객체 할당
		}
		
		model.addAttribute("brandstory", brandstoryDTO);
		
		return "shop/community/brandstory_view";
	}
}
