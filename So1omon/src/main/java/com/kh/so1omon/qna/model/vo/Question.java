package com.kh.so1omon.qna.model.vo;

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
public class Question {
	private int qNO;
	private int qWriter;
	private String refNO;
	private String qTitle;
	private String qContent;
	private String qCategory;
	private Date qDate;
	private String qStatus;
}
