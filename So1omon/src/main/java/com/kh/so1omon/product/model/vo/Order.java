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
	private int userNo;
	private int tracking;
	private Date orderDate;
	private String cashType;
	private String status;
	private String address;
	private int totalPrice;
	private String memberStatus;
	
	private String userId;
}
