package com.winevillage.community;

import lombok.Data;

@Data
public class BrandStoryDTO {
	private int story_seq;
	private String thumbnail;
	private String title;
	private String content;
	private java.sql.Date register_date;
}
