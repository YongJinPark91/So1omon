package com.kh.so1omon.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.so1omon.qna.model.service.AnswerService;
import com.kh.so1omon.qna.model.service.AnswerServiceImp;

@Controller
public class AnswerController {
	
	@Autowired
	private AnswerServiceImp aService;

}
