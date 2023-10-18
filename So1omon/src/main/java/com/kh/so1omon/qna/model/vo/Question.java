package com.kh.so1omon.qna.model.vo;

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
public class Question {
	private int qno;
	private String qwriter;
	private String refNO;
	private String qtitle;
	private String qcontent;
	private String qcategory;
	private Date qdate;
	private String qstatus;
}
