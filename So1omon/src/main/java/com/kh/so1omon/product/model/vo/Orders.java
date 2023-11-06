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
public class Orders {
	private long orderNo;
	private long userNo;
	private long tracking;
	private Date orderDate;
	private String cashType;
	private String status;
	private long totalPrice;
	private String address;
	private String memberStatus;
	private String productNo;
	private long point;
	private String optionName;
	private String volume;
	private String userName;
	private String phone;
}
