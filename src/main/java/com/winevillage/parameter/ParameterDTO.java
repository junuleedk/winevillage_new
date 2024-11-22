package com.winevillage.parameter;

import java.util.ArrayList;
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
	
	private String keyword;
	private List<String> keywords;
	
	/* Product */
	private String classified;
	private String product_code;
	private String sort;
	private String category;
	private List<Integer> category_type;
    private List<Integer> category_country;
    private List<String> label_country;
    private List<Integer> label_state;
    private List<String> label_grapevariety;
    private String price_range;
    
    /* Mileage */
    private String list_gb;
    private String sh_s_date;
    private String sh_e_date;
    
    /* Member */
    private String memberId;
    
    /* Group Product 뷰 */
    private int group_code;
}
