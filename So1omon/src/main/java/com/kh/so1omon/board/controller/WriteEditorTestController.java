package com.kh.so1omon.board.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class WriteEditorTestController {

	
private String path = "c:/so1omon/";


	@RequestMapping(value = "/writeImage.do", method = RequestMethod.GET)
	public ModelAndView writeTestGet(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("boardEnrollFrom");
		 System.out.println(mv+"확인해보자");
		return mv;
	}
	
	
	@RequestMapping(value = "/writeImage.do", method = RequestMethod.POST)
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
		            
		            mv.setViewName("image_Url_Json");
		            
		            System.out.println("mv확인:"+mv);
		        } else {
		            mv.setViewName("boardEnrollFrom");
		            System.out.println("mv확인2:"+mv);
		        }
		    } catch (Exception e) {
		        System.out.println("[Error] " + e.getMessage());
		    }
		    return mv; // ModelAndView 객체 반환
	}
}
