package com.kh.so1omon.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.so1omon.board.model.service.BoardServiceImp;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Product;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImp bService;
	
	// 키워드검색 결과 controller
	@RequestMapping("search.bo")
	public ArrayList searchKeyword(String keyword) {
		ArrayList<Board> blist = bService.searchBoard(keyword);
		ArrayList<TBoard> tblist = bService.searchTboard(keyword);
		//ArrayList<Product> plist = ProductServiceImp.searchProduct(keyword);
		System.out.println(blist);
		System.out.println(tblist);
		
		return blist;
	}
}
