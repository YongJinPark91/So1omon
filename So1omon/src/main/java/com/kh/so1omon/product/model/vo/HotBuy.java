package com.kh.so1omon.product.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class HotBuy {
	private String hotNo;
	private String productNo;
	private String productName;
	private String categoryS;
	private Date hbuyStart;
	private Date hbuyEnd;
	private int endTerm;
	private int startTerm;
	private String status;
	private String thumbnail;
	private int rating;
	private int reviewCount;
	private int originPrice;
	private int salePrice;
	private double countScore;
	private double reviewScore;
	private Date enrolldate;
	private int sale;
	private double score;
	private int newTerm;
	private int price;
	private double avgReview;
	private int count;
	private String categoryL;
	
	

}
