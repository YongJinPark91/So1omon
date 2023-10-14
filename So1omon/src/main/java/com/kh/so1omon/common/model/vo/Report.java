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
public class Report {
	private int reportNo;
	private int reporter;
	private int suspect;
	private String guilty;
	private String reportContent;
	private Date reportDate;
	private String refNo;
	private String result;
}
