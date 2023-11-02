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
public class GroupBuy {
	private String gbuyNo;
	private String productNo;
	private String gbuyStart;
	private String gbuyEnd;
	private int gbuyMin;
	private String status;
	private int sale;
	
	private String productName;
	private String thumbnail;
	private String options;
	
	//메인페이지 활용 필드
	private int salePrice;
	private int originPrice;
	private int reviewCount;
	private int rating;
	private String category;
	private Date gbuyStartTime;
	private Date gbuyEndTime;
	private int startTerm;
	private int endTerm;
	private int score;
	private int newterm;
	private int count;
	
	
}
