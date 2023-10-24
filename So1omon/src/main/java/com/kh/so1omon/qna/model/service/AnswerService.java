package com.kh.so1omon.qna.model.service;

import java.util.ArrayList;

import com.kh.so1omon.qna.model.vo.Answer;

public interface AnswerService {
	
	
	// 1. 댓글작성
	int insertAnswer(Answer an);
	int updateQnaStatus(int qno);
	
	// 2.댓글 리스트
	ArrayList<Answer> selectAnswerList(int qno);
	

}
