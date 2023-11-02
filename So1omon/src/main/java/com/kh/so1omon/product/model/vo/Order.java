package com.kh.so1omon.product.model.vo;

import java.sql.Date;

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
public class Order {
	private long orderNo;
	private String userId;
	private long userNo;
	private int tracking;
	private Date orderDate;
	private String cashType;
	private String status;
	private String address;
	private int totalPrice;
	private String memberStatus;
	
	// 마이페이지-주문내역 조회를 위한 orderDetail 테이블 컬럼 추가

	private String optionName;
	private int price;
	private int volume;
	private String productNo;
	private String productName;
	private Date roderDate;
	private String filePath;
	private String originName; 
	private String thumbnail;

	

	

}
