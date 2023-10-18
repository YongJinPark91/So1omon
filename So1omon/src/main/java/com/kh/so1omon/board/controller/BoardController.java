package com.kh.so1omon.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.so1omon.board.model.service.BoardServiceImp;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImp bService;
	
	// 키워드검색 결과 controller
	@RequestMapping("search.bo")
	public String searchKeyword(String keyword, Model model) {
		//String keyword1 = keyword;
		
		if(keyword.equals("")) {
			model.addAttribute("errorMsg", "검색어를 입력한 후 검색해주세요.");
			return "common/errorPage";
		}else {
			
			ArrayList<Board> blist = bService.searchBoard(keyword);
			ArrayList<TBoard> tblist = bService.searchTboard(keyword);
			System.out.println("board keyword" + keyword);
			// ArrayList<Product> plist = ProductServiceImp.searchProduct(keyword);
			if(blist.isEmpty() && tblist.isEmpty()) {
				model.addAttribute("errorMsg", keyword + " 에 대한 검색 결과가 없습니다.");
				return "common/errorPage";
			}else {
				model.addAttribute("keyword", keyword);
				model.addAttribute("blist", blist);
				model.addAttribute("tblist", tblist);
				
				return "board/searchView";
			}
			
			
		}
		
		/*
		ArrayList<Board> blist = bService.searchBoard(keyword);
		//ArrayList<TBoard> tblist = bService.searchTboard(keyword);
		System.out.println("컨트롤러 키워드" + keyword);
		System.out.println("컨트롤러 비리스트" + blist);
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("blist", blist);
		
		return "board/searchView";
		*/
	}
	
	
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
