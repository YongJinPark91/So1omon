package com.kh.so1omon.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.so1omon.qna.model.service.QuestionService;
import com.kh.so1omon.qna.model.service.QuestionServiceImp;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionServiceImp qService;
}
