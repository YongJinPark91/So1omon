package com.kh.so1omon.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.so1omon.common.model.service.CommonServiceImpl;

@Controller
public class CommonController {
	
	@Autowired
	private static CommonServiceImpl cService;

	/**
	 * @yj(10.19)
	 * @네비바 qna 연동
	 */
	@RequestMapping("qna.yj")
	public String forwardQnA() {
		return "qna/qnaList";
	}
	
	/**
	 * @yj(10.19)
	 * @네비바 faq 연동
	 */
	@RequestMapping("faq.yj")
	public String forwardFaq() {
		return "faq/faqList";
	}
}
