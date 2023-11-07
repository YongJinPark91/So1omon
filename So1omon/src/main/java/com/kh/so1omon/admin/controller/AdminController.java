package com.kh.so1omon.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.so1omon.common.model.service.CommonServiceImpl;
import com.kh.so1omon.common.model.vo.Admin;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.qna.model.service.QuestionServiceImp;
import com.kh.so1omon.qna.model.vo.Question;


@Controller
public class AdminController {

	@Autowired
	private CommonServiceImpl cService;
	@Autowired
	private ProductServiceImp pService;
	@Autowired
	private QuestionServiceImp qService;
	
	@RequestMapping("main.admin")
	public String adminHome(Model model) {
		Admin a = cService.selectAdminHome();
		ArrayList<Order> oList = pService.selectOrderAdMain();
		ArrayList<Question> qList = qService.selectQuestionAdMain();
		
		model.addAttribute("a", a);
		model.addAttribute("oList", oList);
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
	
	@RequestMapping("advertisementView.ad")
	public String advertisementView() {
		return "admin/advertisement";
	}
	
}
