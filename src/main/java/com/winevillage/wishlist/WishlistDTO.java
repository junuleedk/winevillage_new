package com.winevillage.wishlist;

import lombok.Data;

@Data
public class WishlistDTO {
	private int no;
	private String product_code;
	private String memberId;
	private java.sql.Timestamp created_date;
}
