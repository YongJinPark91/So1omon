package com.kh.so1omon.admin.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;

import com.kh.so1omon.handler.EchoHandler;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.GroupBuy;

@Component
public class timeController {
	
	@Autowired
	private ProductServiceImp pService;
	
	@Autowired
	private EchoHandler handler;
	
	@Scheduled(cron = "0 0 * * * *") // 매시각 정각마다 실행 (매초 실행하고 싶으면 0 => *로 변경)
	 public void statusController() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd-HH:mm:ss");
        String formattedNow = now.format(formatter);
        
        System.out.println(formattedNow);
        
        pService.startTimeCheck(formattedNow);
        pService.endTimeCheck(formattedNow);
	 }
	
	@Scheduled(cron = "10 * * * * *")
	public void checkGroupbuyList() throws Exception {
		
		Date date = new Date();
		SimpleDateFormat sdate = new SimpleDateFormat("yy/MM/dd HH");
		String checkDate = sdate.format(date);
//		System.out.println("포맷 date : " + sdate.format(date));
		
		ArrayList<GroupBuy> gList = pService.checkGroupbuyList(checkDate);
//		System.out.println("gList 사이즈 : " + gList.size());
		
		if(gList != null) {
			handler.checkGroupbuyList(gList);			
		}
	}
}
