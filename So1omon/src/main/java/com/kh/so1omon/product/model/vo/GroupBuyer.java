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
public class GroupBuyer {
	private int enrollNo;
	private String userId;
	
	
	private long userNo;
	private String productNo; // 
	private String productName;
	private String gbuyNo;
	private String optionName;
	
}
