package com.kh.so1omon.board.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class WriteEditorTestController {

	
private String path = "C:/So1omon/So1omon/src/main/webapp/resources/uploadFiles/";


	// 자유등록
	@RequestMapping(value = "writeImage.do", method = RequestMethod.GET)
	public ModelAndView writeTestGet(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardEnrollFrom");
		 System.out.println("확인해보자");
		return mv;
	}
	
	
	@RequestMapping(value = "writeImage.do", method = RequestMethod.POST)
	public ModelAndView writeTestPost(@RequestParam("image") MultipartFile multi, HttpServletRequest request, HttpServletResponse response) {
		String url = null;
		ModelAndView mv = new ModelAndView();
		
		 try {
		        String uploadPath = path;
		        String originFilename = multi.getOriginalFilename();
		        String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
		        long size = multi.getSize();
		        FileNameModel fileNameModel = new FileNameModel();
		        String saveFileName = fileNameModel.GenSaveFileName(extName);
		        
		        if (!multi.isEmpty()) {
		            File file = new File(uploadPath, saveFileName);
		            multi.transferTo(file);
		            
		            mv.addObject("filename", saveFileName);
		            mv.addObject("uploadPath", file.getAbsolutePath());
		            mv.addObject("url", uploadPath + saveFileName);
		            System.out.println("url : " + uploadPath + saveFileName);
		            
		            mv.setViewName("board/image URL json");
		            
		            
		            System.out.println("mv확인:"+mv);
		        } else {
		            mv.setViewName("board/boardEnrollFrom");
		            System.out.println("mv확인2:"+mv);
		        }
		    } catch (Exception e) {
		        System.out.println("[Error] " + e.getMessage());
		    }
		 	System.out.println("return전에"+mv);
		    return mv; // ModelAndView 객체 반환
	}
	
	
	// 자유업데이트
	@RequestMapping(value = "updateImage.do", method = RequestMethod.GET)
	public ModelAndView writeTestGet2(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/boardUpdate");
		 System.out.println("확인해보자");
		return mv;
	}
	
	
	@RequestMapping(value = "updateImage.do", method = RequestMethod.POST)
	public ModelAndView writeTestPost2(@RequestParam("image") MultipartFile multi, HttpServletRequest request, HttpServletResponse response) {
		String url = null;
		ModelAndView mv = new ModelAndView();
		
		 try {
		        String uploadPath = path;
		        String originFilename = multi.getOriginalFilename();
		        String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
		        long size = multi.getSize();
		        FileNameModel fileNameModel = new FileNameModel();
		        String saveFileName = fileNameModel.GenSaveFileName(extName);
		        
		        if (!multi.isEmpty()) {
		            File file = new File(uploadPath, saveFileName);
		            multi.transferTo(file);
		            
		            mv.addObject("filename", saveFileName);
		            mv.addObject("uploadPath", file.getAbsolutePath());
		            mv.addObject("url", uploadPath + saveFileName);
		            System.out.println("url : " + uploadPath + saveFileName);
		            
		            mv.setViewName("board/image URL json");
		            
		            
		            System.out.println("mv확인:"+mv);
		        } else {
		            mv.setViewName("board/boardUpdate");
		            System.out.println("mv확인2:"+mv);
		        }
		    } catch (Exception e) {
		        System.out.println("[Error] " + e.getMessage());
		    }
		 	System.out.println("return전에"+mv);
		    return mv; // ModelAndView 객체 반환
	}
	
	
	// 공지 입력
	@RequestMapping(value = "noticeImage.do", method = RequestMethod.GET)
	public ModelAndView writeTestGet3(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("notice/noticeEnrollFrom");
		System.out.println("확인해보자");
		return mv;
	}
	
	
	@RequestMapping(value = "noticeImage.do", method = RequestMethod.POST)
	public ModelAndView writeTestPost3(@RequestParam("image") MultipartFile multi, HttpServletRequest request, HttpServletResponse response) {
		String url = null;
		ModelAndView mv = new ModelAndView();
		
		try {
			String uploadPath = path;
			String originFilename = multi.getOriginalFilename();
			String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			long size = multi.getSize();
			FileNameModel fileNameModel = new FileNameModel();
			String saveFileName = fileNameModel.GenSaveFileName(extName);
			
			if (!multi.isEmpty()) {
				File file = new File(uploadPath, saveFileName);
				multi.transferTo(file);
				
				mv.addObject("filename", saveFileName);
				mv.addObject("uploadPath", file.getAbsolutePath());
				mv.addObject("url", uploadPath + saveFileName);
				System.out.println("url : " + uploadPath + saveFileName);
				
				mv.setViewName("board/image URL json");
				
				
				System.out.println("mv확인:"+mv);
			} else {
				mv.setViewName("notice/noticeEnrollFrom");
				System.out.println("mv확인2:"+mv);
			}
		} catch (Exception e) {
			System.out.println("[Error] " + e.getMessage());
		}
		System.out.println("return전에"+mv);
		return mv; // ModelAndView 객체 반환
	}
	
	// 공지 수정
	@RequestMapping(value = "noticeImageUpdate.do", method = RequestMethod.GET)
	public ModelAndView writeTestGet4(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("notice/noticeEnrollFrom");
		System.out.println("확인해보자");
		return mv;
	}
	
	
	@RequestMapping(value = "noticeImageUpdate.do", method = RequestMethod.POST)
	public ModelAndView writeTestPost4(@RequestParam("image") MultipartFile multi, HttpServletRequest request, HttpServletResponse response) {
		String url = null;
		ModelAndView mv = new ModelAndView();
		
		try {
			String uploadPath = path;
			String originFilename = multi.getOriginalFilename();
			String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			long size = multi.getSize();
			FileNameModel fileNameModel = new FileNameModel();
			String saveFileName = fileNameModel.GenSaveFileName(extName);
			
			if (!multi.isEmpty()) {
				File file = new File(uploadPath, saveFileName);
				multi.transferTo(file);
				
				mv.addObject("filename", saveFileName);
				mv.addObject("uploadPath", file.getAbsolutePath());
				mv.addObject("url", uploadPath + saveFileName);
				System.out.println("url : " + uploadPath + saveFileName);
				
				mv.setViewName("board/image URL json");
				
				
				System.out.println("mv확인:"+mv);
			} else {
				mv.setViewName("notice/noticeEnrollFrom");
				System.out.println("mv확인2:"+mv);
			}
		} catch (Exception e) {
			System.out.println("[Error] " + e.getMessage());
		}
		System.out.println("return전에"+mv);
		return mv; // ModelAndView 객체 반환
	}
	
	
}
