package com.kh.so1omon.common.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.so1omon.common.model.service.CommonServiceImpl;
import com.kh.so1omon.product.model.vo.Category;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.common.model.vo.Alert;
import com.kh.so1omon.common.model.vo.Report;
import com.kh.so1omon.product.model.vo.Order;
import com.kh.so1omon.product.model.vo.OrderDetail;

@Controller
public class CommonController {
	
	@Autowired
	private CommonServiceImpl cService;

	/**
	 * @yj(10.19)
	 * @네비바 qna 연동
	 */
	@RequestMapping("qna.yj")
	public String forwardQnA() {
		return "qna/qnaList";
	}
	
	/**
	 * @yj(10.19)
	 * @네비바 faq 연동
	 */
	@RequestMapping("faq.yj")
	public String forwardFaq() {
		return "faq/faqList";
	}
	
	@ResponseBody
	@RequestMapping(value="allOrderList.admin", produces="application/json; charset=utf-8")
	public String selectAllOrderListAD(int num, int limit, String keyword) {
		ArrayList<Order> oList = cService.selectAllOrderListAD(num, limit, keyword);
		return new Gson().toJson(oList);
	}
	
	@RequestMapping("orderDetail.admin")
	public String selectOrderAD(long orderNo, Model model){
		
		Order o = cService.selectOrderAD(orderNo);
		ArrayList<OrderDetail> odList = cService.selectOrderDetailListAD(orderNo);
		
		model.addAttribute("o", o);
		model.addAttribute("odList", odList);
		
		return "admin/orderDetailView";
	}
	
	@ResponseBody
	@RequestMapping(value="insertAlert.admin")
	public String insertAlertAD(Alert a, HttpServletResponse response) {
		
		response.setContentType("text/html; charset=utf-8");
		int result = cService.insertAlertAD(a);
		
		return result > 0 ? "Success" : "Fail";
	}
	
	@ResponseBody
	@RequestMapping(value="reportList.admin", produces="application/json; charset=utf-8")
	public String selectReportListAD(int num, int limit, String result) {
		ArrayList<Report> rList = cService.selectReportListAD(num, limit, result);
		return new Gson().toJson(rList);
	}
	
	@RequestMapping("reportDetail.admin")
	public String selectReportAD(int reportNo, Model model) {
		Report r = cService.selectReportAD(reportNo);
		model.addAttribute("r", r);
		return "admin/reportDetailView";
	}
	
	@ResponseBody
	@RequestMapping(value="updateReport.admin")
	public String updateReportAD(int reportNo) {
		int result = cService.updateReportAD(reportNo);
		return result > 0 ? "Success" : "Fail";
	}
	
	@ResponseBody
	@RequestMapping(value="selectAlert.ajax", produces="application/json; charset=utf-8")
	public String selectAlertList(long userNo) {
		ArrayList<Alert> aList = cService.selectAlertList(userNo);
		return new Gson().toJson(aList);
	}
	
	@ResponseBody
	@RequestMapping("deleteAlert.mj")
	public String deleteAlert(int num, String condition) {
		Map<String, Object> a = new HashMap();
		
		a.put("num", num);
		a.put("condition", condition);
		
		int result = cService.deleteAlert(a);
		if(result > 0) {
			return "S";
		}else {
			return "F";
		}
	}
	
	/**
	 * @yj(11.01)
	 * @헤더 메뉴바 리스트 조회
	 */
	@ResponseBody
	@RequestMapping(value = "menuGugun.yj", produces = "application/json; charset=utf-8")
	public String selectMenu() {
		ArrayList<Category> list = cService.selectMenu();
		return new Gson().toJson(list);
	}
	
}
