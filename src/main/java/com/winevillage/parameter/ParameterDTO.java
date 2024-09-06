package com.winevillage.parameter;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ParameterDTO {
	private int start;
	private int end;
	
	private String searchField;
	private String searchKeyword;
	
	/* Product */
	private String classified;
	private String sort;
	private String category;
    private String category_type;
    private String category_country;
}
