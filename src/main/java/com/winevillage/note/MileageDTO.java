package com.winevillage.note;

import lombok.Data;

@Data
public class MileageDTO {
	private int mileage_no;
	private String memberId;
	private String mileage_name;
	private int points;
	private java.sql.Date created_date;
	
	private int plus_points;
	private int minus_points;
}
