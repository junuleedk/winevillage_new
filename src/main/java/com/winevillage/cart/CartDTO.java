package com.winevillage.cart;

import lombok.Data;

@Data
public class CartDTO {
	private Integer cart_no;
	private String memberId;
	private String product_code;
	private int quantity;
	private java.sql.Timestamp created_date;
	
	/* Product */
	private String product_name;
	private String product_en_name;
	private String thumbnail;
	private String label_type;
	private String label_country;
	private String label_grapevariety;
	private int price_discount;
	private int price_original;
	private int price_deal;
	private int price_deal_price;
	private int price_deal_amount;
}
