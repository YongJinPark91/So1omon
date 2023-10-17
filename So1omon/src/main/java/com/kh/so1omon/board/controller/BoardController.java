package com.kh.so1omon.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.so1omon.board.model.service.BoardServiceImp;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImp bService;
	
	
	@RequestMapping("list.bo")
	public String selectList(@RequestParam(value="cpage", defaultValue ="1")int currentPage, Model model) {
		
		int listCount = bService.selectNoticeListCount();

		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<Board> list = bService.selectNoticeList(pi);
		
		
		System.out.println("여기확인"+list.get(1).getBoardWriter());
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "notice/noticeList";
	}
	
	
	
	
	
	
}
