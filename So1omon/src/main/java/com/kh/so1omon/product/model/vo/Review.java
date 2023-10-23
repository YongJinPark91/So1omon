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
public class Review {
	private String reviewNo;
	private int orderNo;
	private String productNo;
	private String optionName;
	private String reviewContent;
	private int rating;
	private Date createDate;
	private String status;
	
	// 마이페이지 리뷰 조회를 위한 필드
	private String productName;
}
