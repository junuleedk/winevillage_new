package com.winevillage.product;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IProductService {
	public ArrayList<ProductDTO> listProduct(ParameterDTO parameterDTO);
	public ArrayList<ProductDTO> searchProduct(ParameterDTO parameterDTO);
	public ProductDTO viewProduct(ProductDTO productDTO);
	public String selectRelatedProductCodes(ProductDTO productDTO);
	public int countListProduct(ParameterDTO parameterDTO);
	public int countSearchProduct(ParameterDTO parameterDTO);
}
