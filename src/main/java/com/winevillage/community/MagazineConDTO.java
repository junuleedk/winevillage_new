package com.winevillage.community;

import lombok.Data;

@Data
public class MagazineConDTO {
	private int seq;
	private String series;
	private String title;
	private String thumbnail;
	private java.sql.Date register_date;
	private String content;
	private String related_product;
}
