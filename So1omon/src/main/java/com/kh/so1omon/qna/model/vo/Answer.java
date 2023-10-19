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
public class Answer {
	private int ano;
	private String qno;
	private String acontent;
	private Date adate;
	private String astatus;
}
