package com.kh.so1omon.admin.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.kh.so1omon.product.model.service.ProductServiceImp;

@Component
public class timeController {
	@Autowired
	private ProductServiceImp pService;
	
	@Scheduled(cron = "0 0 * * * *") // 매시각 정각마다 실행 (매초 실행하고 싶으면 0 => *로 변경)
	 public void statusController() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd-HH:mm:ss");
        String formattedNow = now.format(formatter);
        
        System.out.println(formattedNow);
        
        pService.startTimeCheck(formattedNow);
        pService.endTimeCheck(formattedNow);
	 }
}
