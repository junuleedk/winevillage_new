package com.winevillage.community;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IVideoService {
	public ArrayList<VideoDTO> listVideo(ParameterDTO parameterDTO);
	public VideoDTO viewVideo(VideoDTO magazineConDTO);
}
