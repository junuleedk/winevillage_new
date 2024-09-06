package com.winevillage.product;

import lombok.Data;

@Data
public class ProductDTO {
	private int product_no;
	private String bg_color;
	private String classified;
	private String product_code;
	private int category;
	private int category_type;
	private int category_country;
	private String product_name;
	private String product_en_name;
	private String product_info;
	private String thumbnail;
	private String label_thumbnail;
	private String label_type;
	private String label_country;
	private int label_state;
	private String label_grapevariety;
	private int price_discount_rate;
	private int price_discount;
	private int price_original;
	private int price_deal;
	private int price_deal_rate;
	private int price_deal_price;
	private int price_deal_amount;
	private String exclude;
	private String vivino_link;
	private String vivino_score;
	private String vivino_ratings;
	private String related_product;
	private int sweetness;
	private int body;
	private int acidity;
	private int tannins;
	private int alcohol;
	private int info_btn;
	private String sale_txt;
	private String etc;
	private String content;
	private int stock;
	private java.sql.Date register_date;
	
	/* JSP 페이지 내에서 사용 */
	private String label_thumbnail_1;
	private String label_thumbnail_2;
}
