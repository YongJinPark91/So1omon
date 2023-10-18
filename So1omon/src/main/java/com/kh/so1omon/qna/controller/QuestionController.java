package com.kh.so1omon.qna.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;
import com.kh.so1omon.qna.model.service.QuestionService;
import com.kh.so1omon.qna.model.service.QuestionServiceImp;
import com.kh.so1omon.qna.model.vo.Question;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionServiceImp qService;
	
    @RequestMapping("qnaList.bo")
    public String selectQnaList(@RequestParam(value="cpage", defaultValue="1")int currentPage, Model model) {
    	
    	int listCount = qService.selectQnaListCount();
    	
    	PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
    	ArrayList<Question> qlist = qService.selectQnaList(pi);
    	
    	model.addAttribute("pi", pi);
    	model.addAttribute("qlist", qlist);
    	
    	System.out.println("뭐있지"+pi);
    	System.out.println("여기여기"+qlist);
    	
    	return "qna/qnaList";
    }
}
