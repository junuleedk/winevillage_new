package com.winevillage.parameter;

import java.util.List;

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
	private List<Integer> category_type;
    private List<Integer> category_country;
    private List<Integer> label_state;
    private List<String> label_grapevariety;
    private String price_range;
}
