package com.winevillage.review;

import org.apache.ibatis.annotations.Mapper;
import java.util.ArrayList;
import java.util.Map;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IReviewService {
	public ArrayList<ReviewDTO> listReview(ParameterDTO parameterDTO);
	public ReviewDTO viewReview(ReviewDTO reviewDTO);
	public Map<String, Object> getReviewStatus(String product_code);
}
