package com.kh.so1omon.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.so1omon.common.model.service.SearchServiceImp;

@Controller
public class SearchController {
	@Autowired
	private SearchServiceImp sService;
}
