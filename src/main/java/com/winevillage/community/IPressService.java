package com.winevillage.community;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IPressService {
	public ArrayList<PressDTO> listPress(ParameterDTO parameterDTO);
	public ArrayList<PressDTO> searchPress(ParameterDTO parameterDTO);
	public PressDTO viewPress(PressDTO pressDTO);
}
