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
public class Advertisement {
	private int adNo;
	private int adType;
	private Date adStart;
	private Date adEnd;
	private String adStatus;
}
