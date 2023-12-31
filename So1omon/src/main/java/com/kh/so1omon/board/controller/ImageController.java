package com.kh.so1omon.board.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@RestController
public class ImageController implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		registry
			// 이미지 파일의 요청 경로를 지정한다.
			.addResourceHandler("C:/So1omon/So1omon/src/main/webapp/resources/uploadFiles/**")
			// 이미지 파일을 불러올 로컬 저장소의 위치를 지정한다.
			.addResourceLocations("C:/So1omon/So1omon/src/main/webapp/resources/uploadFiles");
	}
}
