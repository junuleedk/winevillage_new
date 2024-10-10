package com.winevillage.community;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IMagazineConService {
	public ArrayList<MagazineConDTO> listMagazineCon(ParameterDTO parameterDTO);
	public MagazineConDTO viewMagazineCon(MagazineConDTO magazineConDTO);
}
