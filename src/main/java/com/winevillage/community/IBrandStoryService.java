package com.winevillage.community;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IBrandStoryService {
	public ArrayList<BrandStoryDTO> listBrandStory(ParameterDTO parameterDTO);
	public BrandStoryDTO viewBrandStory(BrandStoryDTO brandstoryDTO);
}
