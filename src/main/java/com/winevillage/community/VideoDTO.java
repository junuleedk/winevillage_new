package com.winevillage.community;

import lombok.Data;

@Data
public class VideoDTO {
	private int seq;
	private String brand;
	private String title;
	private String thumbnail;
	private String content;
	private java.sql.Date register_date;
	private String related_product;
}
