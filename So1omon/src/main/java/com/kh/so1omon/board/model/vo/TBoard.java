package com.kh.so1omon.board.model.vo;

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
public class TBoard {
	private String tboardNo;
	private long userNo;
	private String thumbnail;
	private String tboardTitle;
	private String tboardContent;
	private String price;
	private Date createDate; 
	private int count;
	private String tag;
	private String status;
	
	// 중고상세페이지 아이디
	private String userId;
	
	// 지도 주소
	private String address;
}
