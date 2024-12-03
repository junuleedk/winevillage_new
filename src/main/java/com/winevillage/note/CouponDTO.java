package com.winevillage.note;

import lombok.Data;

@Data
public class CouponDTO {
	/*coupon*/
	private int coupon_no;
	private String memberId;
	private String thumbnail;
	private String coupon_name;
	private int discount;
	private int minimum;
	private java.sql.Date date_start;
	private java.sql.Date date_end;
	private boolean used;
	private java.sql.Timestamp created_date;
	
	/*coupon_code*/
	private int no;
	private String coupon_code;
	private Integer period_month;
	private Integer period_day;
	private java.sql.Date register_date;
}
