package com.winevillage.event;

import lombok.Data;

@Data
public class EventDTO {
	private int no;
	private String title;
	private String thumbnail;
	private String thumbnail_main_pc;
	private String thumbnail_main_mb;
	private java.sql.Date date_start;
	private java.sql.Date date_end;
	private String content;
	private String product_ul;
}
