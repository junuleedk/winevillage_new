package com.winevillage.product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.winevillage.pagination.Pagination;
import com.winevillage.parameter.ParameterDTO;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProductController {

//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//	}

	@Autowired
	IProductService dao;
	
	private Cookie getCookie(HttpServletRequest request, String name) {
		if (request.getCookies() != null) {
			for (Cookie cookie : request.getCookies()) {
				if (name.equals(cookie.getName())) {
					return cookie;
				}
			}
		}
		return null;
	}
	
	@GetMapping("shop/product/product_lists.do")
	public String listProduct(Model model, HttpServletRequest request, HttpSession session,
			@RequestParam(name = "classified", required = false) String classified,
			@RequestParam(name = "sort", required = false) String sort,
			@RequestParam(name = "list_count", required = false) String list_count,
			ParameterDTO parameterDTO) {
		
		// 카테고리 필터 파라미터 처리
	    String category = request.getParameter("category");
	    String categoryType = request.getParameter("category_type");
	    String categoryCountry = request.getParameter("category_country");
		
		parameterDTO.setClassified(classified);
	    parameterDTO.setCategory(category);
	    parameterDTO.setCategory_type(categoryType);
	    parameterDTO.setCategory_country(categoryCountry);
		
		// list_count 파라미터를 pageSize로 바로 처리
	    String listCountParam = request.getParameter("list_count");
	    Integer pageSize = null;

		// pageSize가 null이 아니면 세션에 저장하고, null이면 세션에서 불러오기
	    if (pageSize != null) {
	        session.setAttribute("pageSize", pageSize);  // pageSize가 있으면 세션에 저장
	    } else {
	        pageSize = (Integer) session.getAttribute("pageSize");  // 세션에서 pageSize 가져오기
	        if (pageSize == null) {
	            pageSize = 25;  // 기본값
	        }
	    }
	    
	    // 쿠키에서 sort 값을 가져오기
	    if (sort == null || sort.isEmpty()) {
	        Cookie listOrderCookie = getCookie(request, "list_order_cookie");
	        if (listOrderCookie != null) {
	            sort = listOrderCookie.getValue();
	        } else {
	            sort = "recent";  // 기본 정렬값
	        }
	    }
	    
	    // 쿠키에서 list_count 값을 가져오기
	    if (listCountParam != null && !listCountParam.isEmpty()) {
	        pageSize = Integer.parseInt(listCountParam);
	    } else {
	        // 쿠키에서 row_count_cookie 값을 가져옴
	        Cookie rowCountCookie = getCookie(request, "row_count_cookie");
	        if (rowCountCookie != null) {
	            pageSize = Integer.parseInt(rowCountCookie.getValue());
	        }
	    }
	    
		int count = dao.getTotalCount(parameterDTO);
        
		int blockPage = 10;
		int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
				: Integer.parseInt(request.getParameter("page"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		parameterDTO.setSort(sort);
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		Map<String, Object> maps = new HashMap<String, Object>();
		maps.put("pageSize", pageSize);
		maps.put("page", pageNum);
		maps.put("count", count);
		model.addAttribute("maps", maps);
		
		ArrayList<ProductDTO> lists = dao.listProduct(parameterDTO);
		
	    for (ProductDTO product : dao.listProduct(parameterDTO)) {
	        String labelThumbnail = product.getLabel_thumbnail(); // 실제로 label_thumbnail 값을 가져옴
	        
	        // label_thumbnail 값 처리
	        if (labelThumbnail != null && !labelThumbnail.isEmpty()) {
	            // '//'을 기준으로 나눕니다.
	            String[] parts = labelThumbnail.split("\\/\\/", 2);
	            String part1 = parts.length > 0 ? parts[0].trim() : "";
	            String part2 = parts.length > 1 ? parts[1].trim() : "";
	            
	            // 상품 객체에 iconPart와 htmlPart 값을 추가
	            product.setLabel_thumbnail_1(part1);
	            product.setLabel_thumbnail_2(part2);
	        }
	        
	        // 기타 상품 정보 추가
	        lists.add(product);
	    }
	    
		// 중복 제거를 위한 Map(category, category_type, category_country 중복 방지)
	    Map<String, ProductDTO> distinctMap = new LinkedHashMap<>();
	    
	    for (ProductDTO product : lists) {
	        String productCode = product.getProduct_code();
	        
	        // product_code가 중복되면, 첫 번째 항목만 유지
	        if (!distinctMap.containsKey(productCode)) {
	            distinctMap.put(productCode, product);
	        }
	    }
	    
	    // 중복 제거된 리스트
	    ArrayList<ProductDTO> distinctLists = new ArrayList<>(distinctMap.values());
		
	    // 중복 제거된 리스트를 모델에 추가
		model.addAttribute("lists", distinctLists);
		
        // 현재 pageSize 값을 모델에 추가
        model.addAttribute("currentPageSize", pageSize);
        // 현재 pageNum 값을 모델에 추가
        model.addAttribute("currentPageNum", pageNum);
		// 현재 classified 값을 모델에 추가
		model.addAttribute("classified", classified);
        // 현재 sort 값을 모델에 추가
        model.addAttribute("sort", sort);
        // 현재 list_count 값을 모델에 추가
        model.addAttribute("list_count", listCountParam);
        
        // 현재 category 값을 모델에 추가
        model.addAttribute("category", category);
        // 현재 category_type 값을 모델에 추가
        model.addAttribute("category_type", categoryType);
        // 현재 category_country 값을 모델에 추가
        model.addAttribute("category_country", categoryCountry);

		String baseUrl = request.getContextPath() + "/shop/product/product_lists.do?";
		if (classified != null && !classified.isEmpty()) {
			baseUrl += "classified=" + classified + "&";
		}
		if (category != null && !category.isEmpty()) {
		    baseUrl += "category=" + category + "&";
		}
		if (categoryType != null && !categoryType.isEmpty()) {
			baseUrl += "category_type=" + categoryType + "&";
		}
		if (categoryCountry != null && !categoryCountry.isEmpty()) {
			baseUrl += "category_country=" + categoryCountry + "&";
		}
		String pagination = Pagination.product(count, pageSize, blockPage, pageNum, baseUrl);
		
		model.addAttribute("pagination", pagination);
		
		return "shop/product/product_lists";
	}
}
