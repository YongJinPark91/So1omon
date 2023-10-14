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
	private int gbuyNo;
	private String productNo;
	private Date gbuyStart;
	private Date gbuyEnd;
	private int gbuyMin;
	private String status;
}
