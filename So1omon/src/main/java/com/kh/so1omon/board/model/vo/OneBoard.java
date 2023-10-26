package com.kh.so1omon.board.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

	@NoArgsConstructor
	@AllArgsConstructor
	@Getter
	@Setter
	@ToString
	
public class OneBoard {
	
	private String partcptn_id; // 고유키
	// private String atrdrc_nm; // 지역
	// private String ty_nm; // 구분
	private String partcptn_sj; // 제목
	// private String se_nm; // 카테고리 
	private String rcept_de1; // 시작접수
	private String rcept_de2; // 종료접수
	private String cn; // 내용
	
	// 리스트에는 지역, 구분, 제목, 카테고리, 시작접수, 종료접수
	// 디테일에는 제목, 시작접수, 종료접수, 내용
}
