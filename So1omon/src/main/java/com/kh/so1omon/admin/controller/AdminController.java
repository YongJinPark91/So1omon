package com.kh.so1omon.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	
	@RequestMapping("main.admin")
	public String adminHome() {
		System.out.println("컨트롤러");
		return "admin/mainHome";
	}
	
}
