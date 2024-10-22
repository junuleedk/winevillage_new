package com.winevillage.community;

import lombok.Data;

@Data
public class PressDTO {
	private int seq;
	private String title;
	private String img;
	private String description;
	private java.sql.Date register_date;
	private String related_product;
}
