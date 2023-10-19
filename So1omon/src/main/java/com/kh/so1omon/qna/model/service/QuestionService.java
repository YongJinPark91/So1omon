package com.kh.so1omon.qna.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.qna.model.vo.Question;

public interface QuestionService {
	
	// 1. qna리스트 및 페이징바
	int selectQnaListCount();
	ArrayList<Question> selectQnaList(PageInfo pi);
	
	// 2. qna리스트 제목 내용검색
	int selectSearchCount(HashMap<String, String> map);
	ArrayList<Question> selectSearchList(HashMap<String, String> map, PageInfo pi);
	
	// 3. qna 등록하기
	int insertQna(Question q);

}
