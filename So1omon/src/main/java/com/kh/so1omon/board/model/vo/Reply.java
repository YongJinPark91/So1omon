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
public class Reply {
	private int replyNo;
	private String boardNo;
	private int replyWriter;
	private String replyContent;
	private Date createDate;
	private String status;
	
	// 마이페이지 내가 쓴 댓글 조회용 필드
	private String boardTitle;
	private String userId;
}
