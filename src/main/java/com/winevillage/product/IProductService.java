package com.winevillage.product;

import org.apache.ibatis.annotations.Mapper;
import java.util.ArrayList;
import com.winevillage.parameter.ParameterDTO;

@Mapper
public interface IProductService {
	public ArrayList<ProductDTO> listProduct(ParameterDTO parameterDTO);
	public ArrayList<ProductDTO> listProductMain(ParameterDTO parameterDTO);
	public ArrayList<ProductDTO> listGroupProduct(ParameterDTO parameterDTO);
	public ArrayList<ProductDTO> searchProduct(ParameterDTO parameterDTO);
	public ProductDTO viewProduct(ProductDTO productDTO);
	public String selectRelatedProductCodes(ProductDTO productDTO);
	public int countListProduct(ParameterDTO parameterDTO);
	public int countGroupProduct(ParameterDTO parameterDTO);
	public int countSearchProduct(ParameterDTO parameterDTO);
}
