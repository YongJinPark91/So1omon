package com.kh.so1omon.product.model.vo;


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
	private int gbuyNo;
	private String productNo;
	private String gbuyStart;
	private String gbuyEnd;
	private int gbuyMin;
	private String status;
	private int sale;
	
	private String productName;
	private String thumbnail;
	private String options;
	
	
}
