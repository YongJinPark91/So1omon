package com.kh.so1omon.qna.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.so1omon.board.model.vo.Reply;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;
import com.kh.so1omon.qna.model.service.AnswerService;
import com.kh.so1omon.qna.model.service.AnswerServiceImp;
import com.kh.so1omon.qna.model.vo.Answer;
import com.kh.so1omon.qna.model.vo.Question;

@Controller
public class AnswerController {
	
	@Autowired
	private AnswerServiceImp aService;

	@ResponseBody
	@RequestMapping(value="answerlist.bo", produces = "application/json; charset=UTF-8")
	public String answerlist(int qno) {
		System.out.println("처음으로보는거"+qno);
		
		ArrayList<Answer> list = aService.selectAnswerList(qno);
		
		System.out.println("답변리스트"+list);
		return new Gson().toJson(list);
	}
	
	
	@ResponseBody
    @RequestMapping(value="answerInsert.bo")
    public String rqnaInsert(Answer an, HttpSession session) {
    	
		System.out.println("뭐가들었니"+an);
    	int result = aService.insertAnswer(an);
    	System.out.println("문자야숫자야?"+an.getQno());
    	if(result > 0) {
    		 aService.updateQnaStatus(Integer.parseInt(an.getQno()));
    		
    		return "redirect:qnaDetailView.bo";
    	}else {
    		session.setAttribute("alertMsg", "게시글 등록 실패했습니다.");
    		return "redirect:qnaDetailView.bo";
    	}
    }
	
	// qna 댓글삭제
	@ResponseBody
	@RequestMapping(value="deleteAnswer.bo")
	public String deleteAnswer(Answer a, int ano, int qno) {
		
		System.out.println("qna: 댓글 삭제확인!"+a);
		System.out.println("qna: ano 있나???!"+ano);
		System.out.println("qna: qno 있나???!"+qno);

    	int result = aService.deleteAnswerQna(a);
    	
    	if(result > 0) {
   		 
			return "redirect:qnaDetailView.bo";
		}else {
			return "redirect:qnaDetailView.bo";
		} 
	}
	
	
	

	
}
