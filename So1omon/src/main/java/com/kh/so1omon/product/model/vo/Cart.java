package com.kh.so1omon.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
	private String productNo;
	private long userNo;
	private int volume;
	private String optionName;
	
	// 마이페이지 장바구니 조회를 위한 필드
	private int totalPrice;
	private int price;
	private String productName;
	private String thumbnail;
	private String totalOptions;
	private String optionPrice;
	private int normalPrice;
	private int normalTotal;
	private int salePrice;
	private int saleTotal;
	

}
