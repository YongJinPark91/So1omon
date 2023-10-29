package com.kh.so1omon.common.model.vo;

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
public class Alert {
	private int alertNo;
	private int userNo;
	private String alertContent;
	private Date alertTime;
	private String alertStatus;
	private String refNo;
	
	private String userId;
}
