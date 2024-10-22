package com.winevillage.review;

import lombok.Data;

@Data
public class ReviewDTO {
	private int no;
	private String product_code;
	private String title;
	private String image;
	private String star;
	private java.sql.Date register_date;
	private String content;
}