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
public class OrderDetail {
	private long orderNo;
	private String productNo;
	private String optionName;
	private long volume;
	private String productName;
	private int price;
	private int totalPrice;
	private String thumbnail;
}
