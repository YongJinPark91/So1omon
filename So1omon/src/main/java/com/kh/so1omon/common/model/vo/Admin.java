package com.kh.so1omon.common.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Admin {
	
	private long totalPrice;
	private int memberCount;
	private int orderCount;
	private int questionStatus;
	private int stock;
	private int report;
}
