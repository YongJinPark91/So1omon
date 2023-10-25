package com.kh.so1omon.board.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private String boardNo;
	private String boardWriter;
	private String boardTitle;
	private String boardContent;
	private Date createDate;
	private int count;
	private String tag;
	private int boardType;
	private String status;
	
	// 메인페이지 인기게시글용 필드
	private int likes;
	private int reply;
	
	// 자유게시판 사진 유무 조회용 필드
	private int fileNo;
	
	// 검색결과 리스트 조회용 필드
	private String userId;
	private String filePath;

}
