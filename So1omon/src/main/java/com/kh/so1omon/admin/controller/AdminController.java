package com.kh.so1omon.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AdminController {

	
	@RequestMapping("main.admin")
	public String adminHome() {
		return "admin/mainHome";
	}
	
	@RequestMapping("productListView.admin")
	public String productListView() {
		return "admin/productList";
	}
	
	@RequestMapping("productEnrollForm.admin")
	public String productRegisterForm() {
		return "admin/productEnrollForm";
	}
	
	@RequestMapping("memberListView.admin")
	public String memberListView() {
		return "admin/memberListView";
	}

	@RequestMapping("orderListView.admin")
	public String orderListView() {
		return "admin/orderListView";
	}
	
	@RequestMapping("reportListView.admin")
	public String reportListView() {
		return "admin/reportListView";
	}

	@RequestMapping("groupbuyListView.admin")
	public String groupbuyListView() {
		return "admin/groupbuyListView";
	}
	
	@RequestMapping("groupbuyEnrollForm.admin")
	public String groupbuyEnrollForm() {
		return "admin/groupbuyEnrollForm";
	}
	
	@RequestMapping("questionListView.admin")
	public String questionListView() {
		return "admin/questionListView";
	}
	
	@RequestMapping("boardListView.admin")
	public String boardListView() {
		return "admin/boardListView";
	}
	
	@RequestMapping("tboardListView.admin")
	public String tboardListView() {
		return "admin/tboardListView";
	}
	
}
