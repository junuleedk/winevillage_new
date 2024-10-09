package com.winevillage.product;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.winevillage.pagination.Pagination;
import com.winevillage.parameter.ParameterDTO;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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
			@RequestParam(name = "category_type", required = false) String categoryTypeParam,
	        @RequestParam(name = "category_country", required = false) String categoryCountryParam,
	        @RequestParam(name = "label_state", required = false) String labelStateParam,
	        @RequestParam(name = "label_grapevariety", required = false) String labelGrapevarietyParam,
	        @RequestParam(name = "price_range", required = false) String priceRange,
			ParameterDTO parameterDTO) {
		
		// 카테고리 필터 파라미터 처리
	    String category = request.getParameter("category");
	    //String categoryType = request.getParameter("category_type");
	    //String categoryCountry = request.getParameter("category_country");
		
		parameterDTO.setClassified(classified);
	    parameterDTO.setCategory(category);
	    
	    // category_type 및 category_country 값을 ','와 '%2C'를 기준으로 분리
	    List<Integer> categoryType = new ArrayList<>();
	    List<Integer> categoryCountry = new ArrayList<>();
	    List<Integer> labelState = new ArrayList<>();
	    List<String> labelGrapevariety = new ArrayList<>();

	    // category_type 다중값 처리
	    if (categoryTypeParam != null && !categoryTypeParam.isEmpty()) {
	        categoryTypeParam = categoryTypeParam.replaceAll("%2C", ","); // %2C를 ,로 변경
	        categoryType = Arrays.stream(categoryTypeParam.split(","))
	                             .map(Integer::parseInt)
	                             .collect(Collectors.toList());
	    }

	    // category_country 다중값 처리
	    if (categoryCountryParam != null && !categoryCountryParam.isEmpty()) {
	        categoryCountryParam = categoryCountryParam.replaceAll("%2C", ","); // %2C를 ,로 변경
	        categoryCountry = Arrays.stream(categoryCountryParam.split(","))
	                                .map(Integer::parseInt)
	                                .collect(Collectors.toList());
	    }
	    
	    // label_state 다중값 처리
	    if (labelStateParam != null && !labelStateParam.isEmpty()) {
	    	labelStateParam = labelStateParam.replaceAll("%2C", ","); // %2C를 ,로 변경
	    	labelState = Arrays.stream(labelStateParam.split(","))
	    			.map(Integer::parseInt)
	    			.collect(Collectors.toList());
	    }
	    
	    // label_grapevariety 다중값 처리
	    if (labelGrapevarietyParam != null && !labelGrapevarietyParam.isEmpty()) {
	        labelGrapevarietyParam = labelGrapevarietyParam.replaceAll("%2C", ","); // %2C를 ,로 변경
	        labelGrapevariety = Arrays.asList(labelGrapevarietyParam.split(","));
	    }
	    
	    parameterDTO.setCategory_type(categoryType);
	    parameterDTO.setCategory_country(categoryCountry);
	    parameterDTO.setLabel_state(labelState);
	    parameterDTO.setLabel_grapevariety(labelGrapevariety);
		
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
	    
		int count = dao.countListProduct(parameterDTO);
        
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
		// 현재 price_range 값을 모델에 추가
		model.addAttribute("price_range", priceRange);
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
        // 현재 label_state 값을 모델에 추가
        model.addAttribute("label_state", labelState);
        // 현재 label_grapevariety 값을 모델에 추가
        model.addAttribute("label_grapevariety", labelGrapevariety);
        
        String baseUrl = request.getContextPath() + "/shop/product/product_lists.do?";
		if (classified != null && !classified.isEmpty()) {
			baseUrl += "classified=" + classified + "&";
		}
		if (category != null && !category.isEmpty()) {
		    baseUrl += "category=" + category + "&";
		}
		if (categoryType != null && !categoryType.isEmpty()) {
			String categoryTypeStr = categoryType.toString().replaceAll("[\\[\\]]", "").replaceAll("\\s", "");
		    baseUrl += "category_type=" + categoryTypeStr + "&";
		}
		if (categoryCountry != null && !categoryCountry.isEmpty()) {
			String categoryCountryStr = categoryCountry.toString().replaceAll("[\\[\\]]", "").replaceAll("\\s", "");
			baseUrl += "category_country=" + categoryCountryStr + "&";
		}
		if (labelState != null && !labelState.isEmpty()) {
			String labelStateStr = labelState.toString().replaceAll("[\\[\\]]", "").replaceAll("\\s", "");
			baseUrl += "label_state=" + labelStateStr + "&";
		}
		if (labelGrapevariety != null && !labelGrapevariety.isEmpty()) {
			String labelGrapevarietyStr = labelGrapevariety.toString().replaceAll("[\\[\\]]", "").replaceAll("\\s", "");
			baseUrl += "label_grapevariety=" + labelGrapevarietyStr + "&";
		}
		if (priceRange != null && !priceRange.isEmpty()) {
		    baseUrl += "price_range=" + priceRange + "&";
		}
		
		String pagination = Pagination.product(count, pageSize, blockPage, pageNum, baseUrl);
		
		model.addAttribute("pagination", pagination);
		
		return "shop/product/product_lists";
	}
	
	@GetMapping("shop/product/product_view.do")
	public String viewProduct(Model model, ProductDTO productDTO) {
		productDTO = dao.viewProduct(productDTO);
		
		//Related Product를 저장하기 위한 ArrayList 생성
		List<ProductDTO> relatedProductsList = new ArrayList<>();
		//related_product 칼럼은 String으로 되어 있다. DAO에서 String으로 된 값 받아옴.
		String relatedProducts = dao.selectRelatedProductCodes(productDTO);
		//relatedProducts가 null이 아니면
	    if (relatedProducts != null) {
	    	//related_product 값에 있는 상품번호를 String[]로 저장.
	        String[] product_codes = relatedProducts.split("/");
	        for (String product_code : product_codes) {
	            productDTO.setProduct_code(product_code.trim());
	            ProductDTO relatedProduct = dao.viewProduct(productDTO);
	            // 이제 relatedProduct에 관련 상품 정보가 담겨있습니다.
	            // 이를 모델에 추가하거나 원하는 대로 사용할 수 있습니다.
	            relatedProductsList.add(relatedProduct);
	        }
	    }
	    //Related Product를 model에 전달
	    model.addAttribute("relatedProducts", relatedProductsList);
		
		String labelThumbnail = productDTO.getLabel_thumbnail(); // 실제로 label_thumbnail 값을 가져옴

		// label_thumbnail 값 처리
		if (labelThumbnail != null && !labelThumbnail.isEmpty()) {
			// '//'을 기준으로 나눕니다.
			String[] parts = labelThumbnail.split("\\/\\/", 2);
			String part1 = parts.length > 0 ? parts[0].trim() : "";
			String part2 = parts.length > 1 ? parts[1].trim() : "";

			// 상품 객체에 iconPart와 htmlPart 값을 추가
			productDTO.setLabel_thumbnail_1(part1);
			productDTO.setLabel_thumbnail_2(part2);
		}
		
		model.addAttribute("product", productDTO);
		return "shop/product/product_view";
	}
	
	@GetMapping("shop/product/search_product_lists.do")
	public String searchProductLists(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response,
	        @RequestParam(name = "keyword", required = false) String searchKeyword,
	        @RequestParam(name = "sort", required = false) String sort) {

	    ParameterDTO parameterDTO = new ParameterDTO();
	    parameterDTO.setKeyword(searchKeyword);

	    // 쿠키에서 검색 기록 가져오기
	    String searchHistory = "";
	    Cookie searchCookie = getCookie(request, "search_recently_cookie");
	    if (searchCookie != null) {
	    	 searchHistory = searchCookie.getValue().replace("&nbsp", " ");
	        // '/'로 시작하는 경우 제거
	        if (searchHistory.startsWith("/")) {
	            searchHistory = searchHistory.substring(1);
	        }
	    }

	    // 검색어가 존재할 경우 검색 기록 업데이트
	    if (searchKeyword != null && !searchKeyword.isEmpty()) {
	    	// Replace spaces in the search keyword with underscore
	        //searchKeyword = searchKeyword.replace(" ", "&nbsp");
	        
	    	List<String> keywordList = new ArrayList<>();
	    	if(!(searchHistory.isEmpty() || searchHistory.equals("/"))) {
	    	   keywordList = new ArrayList<>(Arrays.asList(searchHistory.split("/")));
	    	}
	        
	        // 중복된 키워드가 없으면 추가
	        if (!keywordList.contains(searchKeyword)) {
	            if (keywordList.size() >= 10) {
	                keywordList.remove(0);  // 가장 오래된 검색어 삭제
	            }
	            keywordList.add(0, searchKeyword);  // 새로운 검색어 추가
	        }
	        
	     // 리스트 첫번째 값이 "/"인지 확인하고 제거
	        if (keywordList.get(0) != null && keywordList.get(0).equals("/")) {
	            keywordList.remove(0);
	        }

	        // 리스트를 다시 문자열로 변환하여 저장
	        searchHistory = String.join("/", keywordList);
	        
	     // 띄어쓰기를 &nbsp;로 변환하여 쿠키에 저장
	        String cookieValue = searchHistory.replace(" ", "&nbsp");
	        
	        // 검색 기록을 쿠키에 저장 (쿠키 만료 기간 30일 설정)
	        Cookie updatedSearchCookie = new Cookie("search_recently_cookie", cookieValue);
	        updatedSearchCookie.setMaxAge(30 * 24 * 60 * 60);  // 30일
	        updatedSearchCookie.setPath("/");
	        response.addCookie(updatedSearchCookie);
	    }

	    // 모델에 검색어 및 기록 추가
	    model.addAttribute("keyword", searchKeyword);
	    model.addAttribute("searchHistory", searchHistory);

	    // 정렬 값 쿠키에서 가져오기
	    if (sort == null || sort.isEmpty()) {
	        Cookie sortCookie = getCookie(request, "list_order_cookie");
	        if (sortCookie != null) {
	            sort = sortCookie.getValue();
	        } else {
	            sort = "price_desc";  // 기본 정렬값
	        }
	    }
	    
	    parameterDTO.setSort(sort);

	    // 추가 코드 삽입 위치
	    List<String> keywords = parameterDTO.getKeywords();
	    if (keywords == null) {
	        keywords = new ArrayList<>();
	    }
	    if (searchKeyword != null && !searchKeyword.isEmpty()) {
	        keywords.add(searchKeyword);
	    }
	    parameterDTO.setKeywords(keywords);
	    
	    // 나머지 로직 그대로 유지 (검색 쿼리 처리, 페이징 등)
	    int count = dao.countSearchProduct(parameterDTO);
	    int pageSize = 25;
	    int blockPage = 10;
	    int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
	            : Integer.parseInt(request.getParameter("page"));
	    int start = (pageNum - 1) * pageSize + 1;
	    int end = pageNum * pageSize;
	    
	    parameterDTO.setStart(start);
	    parameterDTO.setEnd(end);
	    
	    Map<String, Object> maps = new HashMap<>();
	    maps.put("pageSize", pageSize);
	    maps.put("page", pageNum);
	    maps.put("count", count);
	    model.addAttribute("maps", maps);
	    
	    ArrayList<ProductDTO> lists = dao.searchProduct(parameterDTO);
	    model.addAttribute("lists", lists);
	    
	    String baseUrl = request.getContextPath() + "/shop/product/search_product_lists.do?";
	    if (searchKeyword != null && !searchKeyword.isEmpty()) {
	        baseUrl += "keyword=" + searchKeyword + "&";
	    }
	    String pagination = Pagination.product(count, pageSize, blockPage, pageNum, baseUrl);
	    
	    model.addAttribute("pagination", pagination);
	    
	    return "shop/product/search_product_lists";
	}
	
	@PostMapping("shop/product/get_keyword_list_ajax.do")
	@ResponseBody
	public Map<String, Object> getKeywordListAjax(HttpServletRequest request) {
	    List<String> keywordsList = new ArrayList<>();
	    Map<String, Object> response = new HashMap<>();

	    // 쿠키에서 'search_recently_cookie' 값을 가져옴
	    Cookie searchCookie = getCookie(request, "search_recently_cookie");
	    if (searchCookie != null) {
	    	String searchHistory = searchCookie.getValue().replace("&nbsp", " ");
	        // 검색 기록을 '/'로 구분된 문자열로 받아서 JSON 객체로 변환
	        keywordsList = Arrays.asList(searchHistory.split("/"));
	    }

	    if (!keywordsList.isEmpty()) {
	        response.put("status", "ok");
	        response.put("keyword_list", keywordsList);
	    } else {
	        response.put("status", "empty");
	        response.put("keyword_list", keywordsList);
	    }

	    return response;
	}
	
	@PostMapping("shop/product/update_keyword_ajax.do")
	@ResponseBody
	public Map<String, Object> updateKeywordAjax(HttpServletRequest request, HttpServletResponse response, @RequestParam("mode") String mode, @RequestParam(value = "keyword", required = false) String keyword) {
	    Map<String, Object> result = new HashMap<>();
	    List<String> keywordsList = new ArrayList<>();

	    try {
	        // 쿠키에서 키워드 목록 가져오기
	        Cookie searchCookie = getCookie(request, "search_recently_cookie");
	        if (searchCookie != null) {
	        	String searchHistory = searchCookie.getValue().replace("&nbsp", " ");
	            // '/'로 구분된 문자열을 리스트로 변환
	            keywordsList = new ArrayList<>(Arrays.asList(searchHistory.split("/")));

	            if (mode.equals("single")) {
	                if (keyword != null && !keyword.isEmpty()) {
	                    // 특정 키워드 삭제
	                    keywordsList.remove(keyword);
	                } else {
	                    result.put("status", "error");
	                    result.put("message", "Keyword to remove is missing.");
	                    return result;
	                }
	            } else if (mode.equals("all")) {
	                // 모든 키워드 삭제
	                keywordsList.clear();
	            } else {
	                result.put("status", "error");
	                result.put("message", "Invalid mode.");
	                return result;
	            }

	            // 리스트가 비어있으면 쿠키 삭제
	            if (keywordsList.isEmpty()) {
	                Cookie expiredCookie = new Cookie("search_recently_cookie", "");
	                expiredCookie.setMaxAge(0);  // 쿠키 만료 시간 설정
	                expiredCookie.setPath("/");
	                response.addCookie(expiredCookie);  // 쿠키 삭제
	            } else {
	                // 리스트를 문자열로 변환하여 쿠키에 저장
	            	String updatedSearchHistory = String.join("/", keywordsList).replace(" ", "&nbsp");
	                Cookie updatedSearchCookie = new Cookie("search_recently_cookie", updatedSearchHistory);
	                updatedSearchCookie.setMaxAge(30 * 24 * 60 * 60);  // 30일
	                updatedSearchCookie.setPath("/");
	                response.addCookie(updatedSearchCookie);  // HttpServletResponse를 통해 쿠키를 추가
	            }

	            result.put("keyword_list", keywordsList);
	            result.put("status", "ok");
	        } else {
	            result.put("status", "error");
	            result.put("message", "No keywords found in cookie.");
	        }
	    } catch (Exception e) {
	        result.put("status", "error");
	        result.put("message", "An error occurred while processing the request: " + e.getMessage());
	        e.printStackTrace();
	    }

	    return result;
	}
	
	@GetMapping("shop/product/group_product_lists.do")
	public String listGroupProduct(Model model, HttpServletRequest request,
			@RequestParam(value = "group_code", required = false) Integer group_code,
	        @RequestParam(name = "sort", required = false) String sort) {

		// 파라미터 값을 받아오고 읽어오기 위해 ParameterDTO가 필요함.
	    ParameterDTO parameterDTO = new ParameterDTO();
	    
	    // group_code 값을 DTO에 설정
	    if (group_code != null) {
	        parameterDTO.setGroup_code(group_code);  // DTO에 group_code 설정
	    }
	    
	    model.addAttribute("group_code", group_code);

	    // 정렬 값 쿠키에서 가져오기
	    if (sort == null || sort.isEmpty()) {
	        Cookie sortCookie = getCookie(request, "list_order_cookie");
	        if (sortCookie != null) {
	            sort = sortCookie.getValue();
	        } else {
	            sort = "price_desc";  // 기본 정렬값
	        }
	    }
	    
	    parameterDTO.setSort(sort);
	    
	    // 나머지 로직 그대로 유지 (검색 쿼리 처리, 페이징 등)
	    int count = dao.countGroupProduct(parameterDTO);
	    int pageSize = 25;
	    int blockPage = 10;
	    int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
	            : Integer.parseInt(request.getParameter("page"));
	    int start = (pageNum - 1) * pageSize + 1;
	    int end = pageNum * pageSize;
	    
	    parameterDTO.setStart(start);
	    parameterDTO.setEnd(end);
	    
	    Map<String, Object> maps = new HashMap<>();
	    maps.put("pageSize", pageSize);
	    maps.put("page", pageNum);
	    maps.put("count", count);
	    model.addAttribute("maps", maps);
	    
	    ArrayList<ProductDTO> lists = dao.listGroupProduct(parameterDTO);
	    model.addAttribute("lists", lists);
	    
	    for (ProductDTO product : lists) {
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
	    }
	    
	    // 더 이상 불러올 데이터가 있는지 확인
	    boolean moreBtn = lists.size() == pageSize;
	    model.addAttribute("more_btn", moreBtn);  // JSP에 전달
	    
	    String baseUrl = request.getContextPath() + "/shop/product/group_product_lists.do?";
	    String pagination = Pagination.product(count, pageSize, blockPage, pageNum, baseUrl);
	    
	    model.addAttribute("pagination", pagination);
	    
	    return "shop/product/group_product_lists";
	}
	
	@PostMapping("/shop/product/group_product_lists_ajax.do")
	@ResponseBody  // AJAX 요청이므로 데이터를 반환할 때 View가 아닌 데이터를 직접 반환
	public Map<String, Object> listGroupProductAjax(Model model, HttpServletRequest request,
	        @RequestParam(value = "group_code", required = false) Integer group_code,
	        @RequestParam(name = "sort", required = false) String sort,
	        @RequestParam(value = "page", required = false) Integer pageNum) {

	    // 파라미터 값을 받아오고 읽어오기 위해 ParameterDTO가 필요함.
	    ParameterDTO parameterDTO = new ParameterDTO();
	    
	    // group_code 값을 DTO에 설정
	    if (group_code != null) {
	        parameterDTO.setGroup_code(group_code);  // DTO에 group_code 설정
	    }

	    // 정렬 값 쿠키에서 가져오기
	    if (sort == null || sort.isEmpty()) {
	        Cookie sortCookie = getCookie(request, "list_order_cookie");
	        if (sortCookie != null) {
	            sort = sortCookie.getValue();
	        } else {
	            sort = "price_desc";  // 기본 정렬값
	        }
	    }
	    
	    parameterDTO.setSort(sort);

	    // 페이지 처리
	    int pageSize = 25;
	    int page = (pageNum == null || pageNum <= 0) ? 1 : pageNum;
	    int start = (page - 1) * pageSize + 1;
	    int end = page * pageSize;
	    
	    parameterDTO.setStart(start);
	    parameterDTO.setEnd(end);

	    // 상품 리스트 조회
	    ArrayList<ProductDTO> lists = dao.listGroupProduct(parameterDTO);
	    
	    for (ProductDTO product : lists) {
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
	    }
	    
	    // boolean 값 설정: pageSize와 같은 경우, 더 많은 데이터가 있을 가능성이 있음
	    boolean moreBtn = lists.size() == pageSize;

	    // 결과 HTML 및 moreBtn 상태를 JSON으로 반환
	    Map<String, Object> response = new HashMap<>();
	    
	    StringBuilder resultHtml = new StringBuilder();
	    
	    listGroupProductAppend(resultHtml, lists);

	    response.put("html", resultHtml.toString());  // 리스트 HTML
	    response.put("more_btn", moreBtn);  // 더보기 버튼 상태

	    return response;
	}
	
	private void listGroupProductAppend(StringBuilder resultHtml, ArrayList<ProductDTO> lists) {
		for (ProductDTO product : lists) {
	    	//resultHtml.append("<li>").append(product.getProduct_code()).append("</li>");
	    	resultHtml.append("<li>");
	    	resultHtml.append("<div class=\"item\">");
	    	resultHtml.append("<div class=\"main_img\" style=\"background:"+ product.getBg_color() +"\">");
	    	resultHtml.append("<a href=\"../../shop/product/product_view.do?product_code="+ product.getProduct_code() +"\" class=\"prd_img table_box\">");
	    	resultHtml.append("<picture>");
	    	resultHtml.append("<source srcset=\"../../uploads/product/200/"+ product.getThumbnail() +"\" media=\"(min-width:1024px)\">");
	    	resultHtml.append("<source srcset=\"../../uploads/product/200/"+ product.getThumbnail() +"\" media=\"(max-width:1023px)\">");
	    	resultHtml.append("<img src=\"../../uploads/product/200/"+ product.getThumbnail() +"\" loading=\"lazy\" alt=\"\">");
	    	resultHtml.append("</picture>");
	    	resultHtml.append("</a>");
	    	resultHtml.append("<div class=\"btn\">");
	    	resultHtml.append("<button type=\"button\" class=\"wish wish_"+ product.getProduct_code() +" \" id=\"wish_"+ product.getProduct_code() +"\" onclick=\"product.likeProduct('"+ product.getProduct_code() +"');\"><span>찜하기</span></button>");
	    	resultHtml.append("</div>");
	    	if(product.getVivino_score() != null) {
	    		resultHtml.append("<p class=\"vivino\">VIVINO<em>"+ product.getVivino_score() +"</em></p>");
	    	}
	    	resultHtml.append("<div class=\"label_wrap\">");
	    	if((product.getLabel_thumbnail_1() != null || product.getLabel_thumbnail_2() != null) &&
	    		(product.getLabel_thumbnail_1().compareTo("icon new") == 0 || product.getLabel_thumbnail_2().compareTo("icon new") == 0)) {
	    		resultHtml.append("<span class=\"icon new\">NEW</span>");
	    	}
	    	if((product.getLabel_thumbnail_1() != null || product.getLabel_thumbnail_2() != null) &&
	    		(product.getLabel_thumbnail_1().compareTo("icon sale") == 0 || product.getLabel_thumbnail_2().compareTo("icon sale") == 0)) {
	    		resultHtml.append("<span class=\"icon sale\">SALE</span>");
	    	}
	    	if((product.getLabel_thumbnail_1() != null || product.getLabel_thumbnail_2() != null) &&
	    		(product.getLabel_thumbnail_1().compareTo("icon best") == 0 || product.getLabel_thumbnail_2().compareTo("icon best") == 0)) {
	    		resultHtml.append("<span class=\"icon best\">BEST</span>");
	    	}
	    	if(product.getLabel_thumbnail_2() != null && 
	    			product.getLabel_thumbnail_2().compareTo("icon new") == 0 && 
	    			product.getLabel_thumbnail_2().compareTo("icon sale") == 0 && 
	    			product.getLabel_thumbnail_2().compareTo("icon best") == 0) {
	    		resultHtml.append(product.getLabel_thumbnail_2());
	    	}
	    	resultHtml.append("</div>");
	    	resultHtml.append("</div>");
	    	resultHtml.append("<div class=\"info\">");
	    	resultHtml.append("<div class=\"more_info\">");
	    	resultHtml.append("<p class=\"prd_name\">");
	    	resultHtml.append("<a href=\"/shop/product/product_view.do?product_code="+ product.getProduct_code() +"\">");
	    	if(product.getProduct_name() != null) resultHtml.append("<span>"+ product.getProduct_name() +"</span>");
	    	if(product.getProduct_en_name() != null) resultHtml.append("<span class=\"en\">"+ product.getProduct_en_name() +"</span>");
	    	resultHtml.append("</a>");
	    	resultHtml.append("</p>");
	    	if(product.getProduct_info() != null) resultHtml.append("<p class=\"prd_info\">"+ product.getProduct_info() +"</p>");
	    	resultHtml.append("</div>");
	    	resultHtml.append("<div class=\"cate_label\">");
	    	if(product.getLabel_type() != null) {
	    		resultHtml.append("<span style=\"background:"+ product.getBg_color() +"\">"+ product.getLabel_type() +"</span>");
	    	}
	    	if(product.getLabel_country() != null) {
	    		resultHtml.append("<span style=\"background:"+ product.getBg_color() +"\">"+ product.getLabel_country() +"</span>");
	    	}
	    	if(product.getLabel_grapevariety() != null) {
	    		resultHtml.append("<span style=\"background:"+ product.getBg_color() +"\">"+ product.getLabel_grapevariety() +"</span>");
	    	}
	    	resultHtml.append("</div>");
	    	resultHtml.append("<div class=\"price_area\">");
	    	if(product.getPrice_deal() == 1) {
	    		resultHtml.append("<p class=\"price set\">");
	    		resultHtml.append("<span class=\"regular_price price\">");
	    		resultHtml.append("<em class=\"discount\">"+ product.getPrice_discount_rate() +"%</em>");
	    		resultHtml.append("<del>"+ new DecimalFormat("#,###").format(product.getPrice_original()) +"원</del>");
	    		resultHtml.append("<ins>"+ new DecimalFormat("#,###").format(product.getPrice_discount()) +"원</ins>");
	    		resultHtml.append("</span>");
	    		resultHtml.append("<em class=\"discount\">"+ product.getPrice_deal_rate() +"%</em>");
	    		resultHtml.append("<i>"+ product.getPrice_deal_amount() +"병 이상 구매시</i>");
	    		resultHtml.append("<ins>"+ new DecimalFormat("#,###").format(product.getPrice_deal_price()) +"원</ins>");
	    		resultHtml.append("</p>");
	    	} else if(product.getPrice_deal() == 0) {
	    		resultHtml.append("<p class=\"price\">");
	    		if (product.getPrice_discount_rate() != null) {
	    			resultHtml.append("<em class=\"discount\">"+ product.getPrice_discount_rate() +"%</em>");
	    			resultHtml.append("<del>"+ new DecimalFormat("#,###").format(product.getPrice_original()) +"원</del>");
	    			resultHtml.append("<ins>"+ new DecimalFormat("#,###").format(product.getPrice_discount()) +"원</ins>");
	    		} else if (product.getStock() == 0) {
	    			resultHtml.append("<ins class=\"out\">매장문의</ins>");
	    			resultHtml.append("<ins class=\"out out_price\">"+ new DecimalFormat("#,###").format(product.getPrice_original()) +"원</ins>");
	    		} else {
	    			resultHtml.append("<ins>"+ new DecimalFormat("#,###").format(product.getPrice_original()) +"원</ins>");
	    		}
	    		resultHtml.append("</p>");
	    	}
	    	resultHtml.append("</div>");
	    	resultHtml.append("</div>");
	    	resultHtml.append("</div>");
	    }
	}
}
