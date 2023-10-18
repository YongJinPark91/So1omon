package com.kh.so1omon.qna.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;
import com.kh.so1omon.qna.model.service.AnswerService;
import com.kh.so1omon.qna.model.service.AnswerServiceImp;
import com.kh.so1omon.qna.model.vo.Question;

@Controller
public class AnswerController {
	
	@Autowired
	private AnswerServiceImp aService;

	

	
}
