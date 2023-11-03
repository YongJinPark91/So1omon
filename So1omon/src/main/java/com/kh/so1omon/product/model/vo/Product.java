package com.kh.so1omon.product.model.vo;

import java.sql.Date;

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
	
	// 메인페이지 장바구니용 필드
	private int volume;
	
	// 마이페이지-주문내역 조회를 위한 orderDetail 테이블 컬럼 추가
	private int orderNo;
	private long userNo;
	private int tracking;
	private Date orderDate;
	private String cashType;
	private String address;
	private String memberStatus;
	private String optionName;
	private int newterm;
}
