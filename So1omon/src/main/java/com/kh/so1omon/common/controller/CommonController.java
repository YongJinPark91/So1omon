package com.kh.so1omon.common.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.so1omon.common.model.service.CommonServiceImpl;
import com.kh.so1omon.product.model.vo.Order;

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
	public String selectAllOrderListAD(int num, int limit) {
		ArrayList<Order> oList = cService.selectAllOrderListAD(num, limit);
		return new Gson().toJson(oList);
	}
}
