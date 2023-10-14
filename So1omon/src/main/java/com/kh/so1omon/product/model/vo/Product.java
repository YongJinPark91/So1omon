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
public class Product {
	private String productNo;
	private int categoryNo;
	private String productName;
	private int sale;
	private int delivery;
	private int count;
	private String productOption;
	private String status;
}
