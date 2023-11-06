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
	
	/**
	 * 공구 타이머(기본 매시각 정각)
	 */
	@Scheduled(cron = " 0 * * * * *") // 매시각 정각마다 실행 (매초 실행하고 싶으면 0 => *로 변경)(정각마다 실행 0 0 * * * * )
	 public void statusController() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd-HH:mm:ss");
        String formattedNow = now.format(formatter);
        
        System.out.println(formattedNow);
		System.out.println("1");

		
        
        pService.startTimeCheck(formattedNow);
        pService.endTimeCheck(formattedNow);
	 }
	
	/**
	 * 매시각 정각마다 실행되는 스케줄러
	 * 해당 시각에 열린 예약상품이 있을 시 핸들러에 메세지 보내는 메소드
	 */
	@Scheduled(cron = "0 * * * * *") // 매시각 정각마다 실행
	public void checkGroupbuyList() throws Exception {
		
		Date date = new Date();
		SimpleDateFormat sdate = new SimpleDateFormat("yy/MM/dd HH");
		String checkDate = sdate.format(date);
		
		ArrayList<GroupBuy> gList = pService.checkGroupbuyList(checkDate);
		
		if(gList != null) { // 정각에 시작할 예약상품이 있을 때
			handler.checkGroupbuyList(gList);			
		}
		
	}
	
	/**
	 * 핫딜은 30분단위를 기본으로
	 */
	@Scheduled(cron = "0 * * * * *") // 매 30분 마다 실행 (매초 실행하고 싶으면 0 => *로 변경)(정각마다 실행 0 0/30 * * * * )
	 public void hotController() {
       LocalDateTime now = LocalDateTime.now();
       DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd-HH:mm:ss");
       String formattedNow = now.format(formatter);
       
       System.out.println("핫딜 타이머 : " + formattedNow);
       
       pService.hotStartTimeCheck(formattedNow);
       pService.hotEndTimeCheck(formattedNow);
       
	 }
}
