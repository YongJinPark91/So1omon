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
	private int price;
	private String thumbnail;
	private int sale;
	private int delivery;
	private int count;
	private String productOption;
	private String status;
	
	// 메인페이지 인기게시글용 필드
	private String category;
	private int salePrice;
	private int avgReview;
	private int reviewCount;
	private int score;
	private int sales;
	private String options;
}
