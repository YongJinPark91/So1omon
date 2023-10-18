package com.kh.so1omon.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@Inject
	private ProductServiceImp pService;
	
	// 키워드검색 결과 controller
	@RequestMapping("search.bo")
	public String searchBoard(String keyword, Model model) {
		//String keyword1 = keyword;
		
		if(keyword.equals("")) {
			model.addAttribute("errorMsg", "검색어를 입력한 후 검색해주세요.");
			return "common/errorPage";
		}else {
			
			ArrayList<Board> blist = bService.searchBoard(keyword);
			ArrayList<TBoard> tblist = bService.searchTboard(keyword);
			ArrayList<Product> plist = pService.searchProduct(keyword);
			
			if(blist.isEmpty() && tblist.isEmpty() && plist.isEmpty()) {
				model.addAttribute("errorMsg", keyword + " 에 대한 검색 결과가 없습니다.");
				return "common/errorPage";
			}else {
				model.addAttribute("keyword", keyword);
				model.addAttribute("blist", blist);
				model.addAttribute("tblist", tblist);
				model.addAttribute("plist", plist);
				
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
		
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "notice/noticeList";
	}
	

    @RequestMapping("search.no")
    public String boardSearch(@RequestParam("condition") String condition,
                              @RequestParam("keyword") String keyword,
                              @RequestParam("cpage") int cpage,
                              @RequestParam("pageNo") int pageNo,
                              Model model) {
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("condition", condition);
        map.put("keyword", keyword);
        
        
        int searchCount = bService.selectSearchCount(map);
        int currentPage = cpage;

        System.out.println("searchCount "+ searchCount);
        System.out.println("currentPage "+currentPage);
        
        
        PageInfo pi = Pagination.getPageInfo(searchCount, currentPage, 10, pageNo);
        ArrayList<Board> list = bService.selectSearchList(map, pi);
        System.out.println("이거나오면 반성공"+list);
        
        model.addAttribute("pi", pi);
        model.addAttribute("list", list);
        model.addAttribute("condition", condition);
        model.addAttribute("keyword", keyword);

        return "notice/noticeList";
    }
    
    @RequestMapping("enrollForm.no")
    public String enrollForm() {
    	return "notice/noticeEnrollFrom";
    }
    

//    @RequestMapping("noticeEnroll.no") 다른거먼저
//    public String noticeEnroll(String title, String writer, String content) {
//    	
//    }

    @RequestMapping("noticeEnroll.no")
    public void noticeEnroll(String title, String writer, String content) {
    	
    }
    
    /**
     * @yj(10.18)
     * @인기게시글조회(메인페이지)
     */
    @ResponseBody
    @RequestMapping(value = "topBoardList.yj", produces = "application/json; charset=utf-8")
    public String ajaxTopBoardList() {
    	ArrayList<Board> list = bService.selectTopBoardList();
    	
    	return new Gson().toJson(list);
    }
    
    /**
     * @yj(10.19)
     * @네비바 notice 연동
     */
    @RequestMapping("notice.yj")
    public String forwardNotice() {
    	return "notice/noticeList";
    }
    
    /**
     * @yj(10.19)
     * @네비바 tboard 연동
     */
    @RequestMapping("tboard.yj")
    public String forwardTboard() {
    	return "tBoard/tBoardList";
    }

	/**
	 * @yj(10.19)
	 * @네비바 board 연동
	 */
	@RequestMapping("board.yj")
	public String forwardBoard() {
		return "board/boardList";
	}

	
	
	
	
}
