package com.kh.so1omon.qna.model.service;

import java.util.ArrayList;

import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.qna.model.vo.Question;

public interface QuestionService {
	
	// 1. qna리스트 및 페이징바
	int selectQnaListCount();
	ArrayList<Question> selectQnaList(PageInfo pi);

}
