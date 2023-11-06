package com.kh.so1omon.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PDetailToPayment {
	
	// 상품 디테일 창에서 바로 구매 시 넘어갈 때 사용하는 Vo
	private String productName;
	private int price;
	private String optionName;
	private int optionPrice;
	private int volume;

}
