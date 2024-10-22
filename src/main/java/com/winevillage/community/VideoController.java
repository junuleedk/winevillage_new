package com.winevillage.community;

import java.text.DecimalFormat;
import java.util.ArrayList;
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
public class VideoController {

	@Autowired
	IVideoService dao;
	
	@Autowired
	private IProductService product;
	
	@GetMapping("shop/community/video_lists.do")
	public String listVideo(Model model, HttpServletRequest request,
			VideoDTO videoDTO, ProductDTO productDTO, ParameterDTO parameterDTO) {
		int pageSize = 4;
		int pageNum = (request.getParameter("page") == null || request.getParameter("page").equals("")) ? 1
					: Integer.parseInt(request.getParameter("page"));
		int start = (pageNum - 1) * pageSize + 1;
		int end = pageNum * pageSize;
		
		parameterDTO.setStart(start);
		parameterDTO.setEnd(end);
		
		ArrayList<VideoDTO> lists = dao.listVideo(parameterDTO);
		model.addAttribute("lists", lists);
		
		return "shop/community/video_lists";
	}
	
	@PostMapping("shop/community/video_lists_ajax")
	@ResponseBody
	public String listVideoAjax(HttpServletRequest request,
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
		ArrayList<VideoDTO> lists = dao.listVideo(parameterDTO);
		
		// HTML 문자열 생성
		StringBuilder resultHtml = new StringBuilder();
		for (VideoDTO videoDTO : lists) {
			resultHtml.append("<li>");
			resultHtml.append("<a href=\"/shop/community/video_view.do?seq=").append(videoDTO.getSeq()).append("\">");
			resultHtml.append("<div class=\"img\">");
			resultHtml.append("<picture>");
			resultHtml.append("<!--[if IE 9]><video style=\"display: none;\"><![endif]-->");
			resultHtml.append("<source srcset=\"../../uploads/video/").append(videoDTO.getThumbnail()).append("\" media=\"(min-width:768px)\">");
			resultHtml.append("<!-- pc이미지 -->");
			resultHtml.append("<source srcset=\"../../uploads/video/").append(videoDTO.getThumbnail()).append("\" media=\"(max-width:767px)\">");
			resultHtml.append("<!-- mb이미지 -->");
			resultHtml.append("<!--[if IE 9]></video><![endif]-->");
			resultHtml.append("<img src=\"../../uploads/video/").append(videoDTO.getThumbnail()).append("\" alt=\"magazine1\">");
			resultHtml.append("<!-- pc이미지 -->");
			resultHtml.append("</picture>");
			resultHtml.append("</div>");
			resultHtml.append("<div class=\"text\">");
			resultHtml.append("<!-- <span class=\"sub_tit\">[").append(videoDTO.getBrand()).append("] ").append(videoDTO.getTitle()).append("</span> -->");
			resultHtml.append("<strong class=\"tit\">[").append(videoDTO.getBrand()).append("]");
			if(videoDTO.getTitle() != null) resultHtml.append(" ").append(videoDTO.getTitle());
			resultHtml.append("</strong>");
			resultHtml.append("<!-- <span class=\"txt\"><div style=\"text-align: center;\" align=\"center\">&lt;iframe width=\"560\" height...</span> -->");
			resultHtml.append("</div>");
			resultHtml.append("</a>");
			resultHtml.append("</li>");
		}

		return resultHtml.toString();
	}
	
	@GetMapping("shop/community/video_view.do")
	public String videoView(Model model,
			VideoDTO videoDTO,
			@RequestParam(value = "seq", required = false) Integer seq) {
		
		// videoDTO에서 해당 이벤트를 가져옴
		videoDTO = dao.viewVideo(videoDTO);
		
		if (videoDTO == null) {
			// videoDTO가 null일 경우 기본 동작
			videoDTO = new VideoDTO(); // videoDTO에 기본 객체 할당
		}
		
		model.addAttribute("video", videoDTO);
		
		// related_product 값을 가져옴
	    String productsListStr = videoDTO.getRelated_product();
	    boolean moreBtn = false; // 기본값 설정

	    if (productsListStr != null && !productsListStr.trim().isEmpty()) {
	        // '/' 구분자로 문자열을 분할하여 배열로 변환
	        String[] product_codes = productsListStr.split("/");
	        // 요소의 개수가 5개를 넘는지 확인
	        if (product_codes.length > 5) {
	            moreBtn = true;
	        }
	    }

	    // boolean 값을 모델에 추가
	    model.addAttribute("moreBtn", moreBtn);
		
		return "shop/community/video_view";
	}
	
	@PostMapping("shop/community/video_view_ajax")
	@ResponseBody
	public String videoViewAjax(@RequestParam Map<String, Object> params,
	        VideoDTO videoDTO, ProductDTO productDTO, Model model) {
	    
	    int page = params.get("page") == null ? 1 : Integer.parseInt(params.get("page").toString());
	    int seq = params.get("seq") == null ? 0 : Integer.parseInt(params.get("seq").toString());

	    videoDTO.setSeq(seq);
	    videoDTO = dao.viewVideo(videoDTO);

	    if (videoDTO == null) {
	        videoDTO = new VideoDTO();
	        return "none";
	    }

	    List<ProductDTO> productsList = new ArrayList<>();
	    String productsListStr = videoDTO.getRelated_product();
	    
	    if (productsListStr == null) {
	        return "none";
	    }
	    
	    // HTML 문자열 생성
	    StringBuilder resultHtml = new StringBuilder();
	    
	    if (productsListStr != null) {
	        String[] product_codes = productsListStr.split("/");
	        int pageSize = 5; // 페이지당 출력할 상품 수
	        int totalSize = product_codes.length;
	        int start = (page - 1) * pageSize;
	        int end = Math.min(start + pageSize, totalSize);

	        if (start >= totalSize) {
	            return ""; // 더 이상 로드할 상품이 없을 경우
	        }

	        for (int i = start; i < end; i++) {
	            String product_code = product_codes[i].trim();
	            productDTO.setProduct_code(product_code);
	            ProductDTO relatedProduct = product.viewProduct(productDTO);
	            productsList.add(relatedProduct);

	            // 각 상품에 대한 HTML 생성
	            resultHtml.append("<li>");
	            resultHtml.append("<div class=\"item\">");
	            resultHtml.append("<div class=\"main_img\" style=\"background:").append(relatedProduct.getBg_color()).append("\">");
	            resultHtml.append("<a href=\"/shop/product/product_view?product_cd=").append(relatedProduct.getProduct_code()).append("\" class=\"prd_img table_box\">");
	            resultHtml.append("<picture>");
	            resultHtml.append("<!--[if IE 9]><video style=\"display: none;\"><![endif]-->");
	            resultHtml.append("<source srcset=\"/uploads/product/200/").append(relatedProduct.getThumbnail()).append("\" media=\"(min-width:1024px)\">");
	            resultHtml.append("<!-- pc이미지 -->");
	            resultHtml.append("<source srcset=\"/uploads/product/200/").append(relatedProduct.getThumbnail()).append("\" media=\"(max-width:1023px)\">");
	            resultHtml.append("<!-- mb이미지 -->");
	            resultHtml.append("<!--[if IE 9]></video><![endif]-->");
	            resultHtml.append("<img src=\"/uploads/product/200/").append(relatedProduct.getThumbnail()).append("\" loading=\"lazy\" alt=\"\">");
	            resultHtml.append("<!-- pc이미지 -->");
	            resultHtml.append("</picture>");
	            resultHtml.append("</a>");
	            resultHtml.append("<div class=\"btn\">");
	            resultHtml.append("<button type=\"button\" class=\"wish wish_").append(relatedProduct.getProduct_code()).append(" \" id=\"wish_").append(relatedProduct.getProduct_code()).append("\" onclick=\"product.likeProduct('").append(relatedProduct.getProduct_code()).append("');\">");
	            resultHtml.append("<span>찜하기</span>");
	            resultHtml.append("</button>");
	            resultHtml.append("</div>");
	            if(relatedProduct.getVivino_score() != null) {
	            	resultHtml.append("<p class=\"vivino\">VIVINO<em>").append(relatedProduct.getVivino_score()).append("</em></p>");
	            }
	            resultHtml.append("<div class=\"label_wrap\">");
		    	if((relatedProduct.getLabel_thumbnail_1() != null || relatedProduct.getLabel_thumbnail_2() != null) &&
		    		(relatedProduct.getLabel_thumbnail_1().compareTo("icon new") == 0 || relatedProduct.getLabel_thumbnail_2().compareTo("icon new") == 0)) {
		    		resultHtml.append("<span class=\"icon new\">NEW</span>");
		    	}
		    	if((relatedProduct.getLabel_thumbnail_1() != null || relatedProduct.getLabel_thumbnail_2() != null) &&
		    		(relatedProduct.getLabel_thumbnail_1().compareTo("icon sale") == 0 || relatedProduct.getLabel_thumbnail_2().compareTo("icon sale") == 0)) {
		    		resultHtml.append("<span class=\"icon sale\">SALE</span>");
		    	}
		    	if((relatedProduct.getLabel_thumbnail_1() != null || relatedProduct.getLabel_thumbnail_2() != null) &&
		    		(relatedProduct.getLabel_thumbnail_1().compareTo("icon best") == 0 || relatedProduct.getLabel_thumbnail_2().compareTo("icon best") == 0)) {
		    		resultHtml.append("<span class=\"icon best\">BEST</span>");
		    	}
		    	if(relatedProduct.getLabel_thumbnail_2() != null && 
		    			relatedProduct.getLabel_thumbnail_2().compareTo("icon new") == 0 && 
		    			relatedProduct.getLabel_thumbnail_2().compareTo("icon sale") == 0 && 
		    			relatedProduct.getLabel_thumbnail_2().compareTo("icon best") == 0) {
		    		resultHtml.append(relatedProduct.getLabel_thumbnail_2());
		    	}
		    	resultHtml.append("</div>");
	            resultHtml.append("</div>");
	            resultHtml.append("<div class=\"info\">");
	            resultHtml.append("<div class=\"more_info\">");
	            resultHtml.append("<p class=\"prd_name\">");
	            resultHtml.append("<a href=\"/shop/product/product_view.do?product_code="+ relatedProduct.getProduct_code() +"\">");
		    	if(relatedProduct.getProduct_name() != null) resultHtml.append("<span>"+ relatedProduct.getProduct_name() +"</span>");
		    	if(relatedProduct.getProduct_en_name() != null) resultHtml.append("<span class=\"en\">"+ relatedProduct.getProduct_en_name() +"</span>");
		    	resultHtml.append("</a>");
	            resultHtml.append("</p>");
	            resultHtml.append("<p class=\"prd_info\">");
	            if(relatedProduct.getProduct_info() != null) resultHtml.append(relatedProduct.getProduct_info());
	            resultHtml.append("</p>");
	            resultHtml.append("</div>");
	            resultHtml.append("<div class=\"cate_label\">");
	            if(relatedProduct.getLabel_type() != null) {
		    		resultHtml.append("<span style=\"background:"+ relatedProduct.getBg_color() +"\">"+ relatedProduct.getLabel_type() +"</span>");
		    	}
		    	if(relatedProduct.getLabel_country() != null) {
		    		resultHtml.append("<span style=\"background:"+ relatedProduct.getBg_color() +"\">"+ relatedProduct.getLabel_country() +"</span>");
		    	}
		    	if(relatedProduct.getLabel_grapevariety() != null) {
		    		resultHtml.append("<span style=\"background:"+ relatedProduct.getBg_color() +"\">"+ relatedProduct.getLabel_grapevariety() +"</span>");
		    	}
	            resultHtml.append("</div>");
	            resultHtml.append("<div class=\"price_area\">");
	            if(relatedProduct.getPrice_deal() == 1) {
		    		resultHtml.append("<p class=\"price set\">");
		    		resultHtml.append("<span class=\"regular_price price\">");
		    		resultHtml.append("<em class=\"discount\">"+ relatedProduct.getPrice_discount_rate() +"%</em>");
		    		resultHtml.append("<del>"+ new DecimalFormat("#,###").format(relatedProduct.getPrice_original()) +"원</del>");
		    		resultHtml.append("<ins>"+ new DecimalFormat("#,###").format(relatedProduct.getPrice_discount()) +"원</ins>");
		    		resultHtml.append("</span>");
		    		resultHtml.append("<em class=\"discount\">"+ relatedProduct.getPrice_deal_rate() +"%</em>");
		    		resultHtml.append("<i>"+ relatedProduct.getPrice_deal_amount() +"병 이상 구매시</i>");
		    		resultHtml.append("<ins>"+ new DecimalFormat("#,###").format(relatedProduct.getPrice_deal_price()) +"원</ins>");
		    		resultHtml.append("</p>");
		    	} else if(relatedProduct.getPrice_deal() == 0) {
		    		resultHtml.append("<p class=\"price\">");
		    		if (relatedProduct.getPrice_discount_rate() != null) {
		    			resultHtml.append("<em class=\"discount\">"+ relatedProduct.getPrice_discount_rate() +"%</em>");
		    			resultHtml.append("<del>"+ new DecimalFormat("#,###").format(relatedProduct.getPrice_original()) +"원</del>");
		    			resultHtml.append("<ins>"+ new DecimalFormat("#,###").format(relatedProduct.getPrice_discount()) +"원</ins>");
		    		} else if (relatedProduct.getStock() == 0) {
		    			resultHtml.append("<ins class=\"out\">매장문의</ins>");
		    			resultHtml.append("<ins class=\"out out_price\">"+ new DecimalFormat("#,###").format(relatedProduct.getPrice_original()) +"원</ins>");
		    		} else {
		    			resultHtml.append("<ins>"+ new DecimalFormat("#,###").format(relatedProduct.getPrice_original()) +"원</ins>");
		    		}
		    		resultHtml.append("</p>");
		    	}
	            resultHtml.append("</div>");
	            resultHtml.append("</div>");
	            resultHtml.append("</div>");
	            resultHtml.append("</li>");
	        }
	    }

	    // 결과 HTML 반환
	    return resultHtml.toString();
	}
}
