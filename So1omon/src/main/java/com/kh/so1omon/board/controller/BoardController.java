package com.kh.so1omon.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.so1omon.board.model.service.BoardServiceImp;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImp bService;
}
