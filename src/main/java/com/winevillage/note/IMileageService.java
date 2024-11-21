package com.winevillage.note;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IMileageService {
	public ArrayList<MileageDTO> listMileage(ParameterDTO paramterDTO);
	public int totalPlusPoints(MileageDTO mileageDTO);
	public int totalMinusPoints(MileageDTO mileageDTO);
	public int plusMileage(MileageDTO mileageDTO);
	public int minusMileage(MileageDTO mileageDTO);
}
