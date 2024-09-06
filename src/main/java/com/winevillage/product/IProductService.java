package com.winevillage.product;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IProductService {
	public ArrayList<ProductDTO> listProduct(ParameterDTO parameterDTO);
	public int getTotalCount(ParameterDTO parameterDTO);
}
