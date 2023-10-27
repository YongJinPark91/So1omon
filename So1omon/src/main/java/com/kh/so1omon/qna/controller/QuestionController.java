package com.kh.so1omon.qna.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.Reply;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;
import com.kh.so1omon.qna.model.service.QuestionService;
import com.kh.so1omon.qna.model.service.QuestionServiceImp;
import com.kh.so1omon.qna.model.vo.Question;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionServiceImp qService;
	
	
	
    @RequestMapping("qnaList.bo")
    public String selectQnaList(@RequestParam(value="cpage", defaultValue="1")int currentPage, Model model) {
    	
    	int listCount = qService.selectQnaListCount();
    	
    	PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 8);
    	ArrayList<Question> qlist = qService.selectQnaList(pi);
    	
    	model.addAttribute("pi", pi);
    	model.addAttribute("qlist", qlist);
    	
    	
    	return "qna/qnaList";
    }
    
    @RequestMapping("qnaSearch.bo")
    public String qnaSearchList(String condition, String keyword, int cpage, Model model) {
        
    	HashMap<String, String> map = new HashMap<String, String>();
        map.put("condition", condition);
        map.put("keyword", keyword);
        
        
        int searchCount = qService.selectSearchCount(map);
        int currentPage = cpage;
        
        PageInfo pi = Pagination.getPageInfo(searchCount, currentPage, 10, 8);
        ArrayList<Question> qlist = qService.selectSearchList(map, pi);
        
        
        model.addAttribute("pi", pi);
        model.addAttribute("qlist", qlist);
        model.addAttribute("condition", condition);
        model.addAttribute("keyword", keyword);
        
        return "qna/qnaList";
    }
    
    
    
    @RequestMapping("faqList.bo")
    public String faqList() {
    	
    	return "faq/faqList";
    }
    
    @RequestMapping("qnaEnrollForm.bo")
    public String qnaEnrollForm() {
    	
    	return "qna/qnaEnrollForm";
    }
    
    @RequestMapping("qnaEnroll.bo")
    public String insertQna(String qtitle,String qwriter,String qcontent,String qcategory,  Attachment a, MultipartFile qnaUpfile, HttpSession session, Model model) {
    	
    	
    	Question q = new Question();
    	q.setQtitle(qtitle);
    	q.setQwriter(qwriter);
    	q.setQcontent(qcontent);
    	q.setQcategory(qcategory);
    	
    			
    	if(!qnaUpfile.getOriginalFilename().equals("")) {
    		
    		String changeName = saveFile(qnaUpfile,session);
    		
    		
    		a.setOriginName(qnaUpfile.getOriginalFilename());
    		a.setChangeName(changeName);
    		a.setFilePath("resources/uploadFiles/" + changeName);
    	}
    	
    	
    	int result = qService.insertQna(q);
    	
    	int resultfile = qService.insertFile(a); 
    	
    	if(result > 0) {
    		session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
    		return "redirect:qnaList.bo";
    	}else {
    		session.setAttribute("alertMsg", "게시글 등록 실패했습니다.");
    		return "redirect:qnaList.bo";
    	}
    	
    	

    }
    
    public String saveFile(MultipartFile qnaUpfile, HttpSession session) {
    	
    	String originName = qnaUpfile.getOriginalFilename();
    	
    	String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
    	int random = (int)(Math.random()*90000 + 10000);
    	String ext = originName.substring(originName.lastIndexOf("."));
    	
    	String changeName = currentTime + random + ext;
    	String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
    	
    	try {
			qnaUpfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
    	
    	return changeName;
    }
    
 
    
    
    
    @RequestMapping("qnaDetailView.bo")
    public String qnaDetailViewForm(int bno, Model model) {
    	
    	Question q = qService.selectQuestion(bno);
    	Attachment a = qService.selectQuestionFile(bno);
    	model.addAttribute("q",q);
    	model.addAttribute("a",a);
    	
    	return "qna/qnaDetailView";
    }

    @RequestMapping("qnaUpdateForm.bo")
    public String qnaUpdateForm(int bno, Model model) {
    	model.addAttribute("q",qService.selectQuestion(bno));
    	model.addAttribute("a",qService.selectQuestionFile(bno));
    	
    	return "qna/qnaUpdate";
    	
    	
    }
    
    @RequestMapping("qnaUpdate.bo")
    public String updateQuestion(@ModelAttribute Question q,@ModelAttribute Attachment a,MultipartFile reupfile, HttpSession session, Model model) {
    	
		
    	if(!reupfile.getOriginalFilename().equals("")) {
    		
    		if(a.getOriginName() != null) {
    			new File(session.getServletContext().getRealPath(a.getFilePath())).delete();
    		}
    		
    		String changeName = saveFile(reupfile,session);
    		
    		
    		a.setOriginName(reupfile.getOriginalFilename());
    		a.setChangeName(changeName);
    		a.setFilePath("resources/uploadFiles/" + changeName);
    		
    		}
    		
    		int result = qService.updateQuestion(q);
    		int resultFile = qService.updateQuestionFile(a);
    		
    		if(result > 0) { // 수정성공 => 상세페이지 detail.bo?bno=해당게시글번호    url 재요청
    			session.setAttribute("alertMsg", "성공적으로 게시글 수정되었습니다");
    			return "redirect:qnaDetailView.bo?bno=" + q.getQno();
    			
    			
    		}else {
    			session.setAttribute("alertMsg", "성공적으로 게시글 수정되었습니다");
    			return "redirect:qnaDetailView.bo?bno=" + q.getQno();

    		}
    		
    }
  
    @RequestMapping("qnaDelete.bo")
    public String qnaDelete(int bno, String filePath, HttpSession session, Model model) {
    	
    	int result = qService.qnaDelete(bno);
    	
    	if(result > 0) {
    		
    		

    		if(!filePath.equals("")) {
    			new File(session.getServletContext().getRealPath(filePath)).delete();
    		}
    		int resultFile = qService.qnaFileDelete(bno);
    		
    		
    		session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다");
    		return "redirect:qnaList.bo";
    		
    	}else {
    		session.setAttribute("alertMsg", "게시글 삭제 실패했습니다");
    		return "redirect:qnaList.bo";
    	}
    	
    }
    

    
    
    
    
    
    
}









