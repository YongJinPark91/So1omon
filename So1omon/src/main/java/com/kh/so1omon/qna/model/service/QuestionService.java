package com.kh.so1omon.qna.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.so1omon.common.model.vo.Attachment;
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
	int insertFile(Attachment a);
	
	// 4. qna상세보기
	Question selectQuestion(int qno);
	Attachment selectQuestionFile(int qno);
	
	// 5.qna수정하기
	int updateQuestion(Question q);
	int updateQuestionFile(Attachment a);
	
	// 6. qna삭제
	int qnaDelete(int qno);
	
	
}
