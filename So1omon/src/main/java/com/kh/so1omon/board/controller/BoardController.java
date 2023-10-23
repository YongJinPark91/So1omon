package com.kh.so1omon.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kh.so1omon.board.model.service.BoardServiceImp;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.qna.model.vo.Question;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImp bService;
	
	@Inject
	private ProductServiceImp pService;
	
	/**
	 * @jw(10.18)
	 * @header -> 검색어 'keyword'를 가지고 검색하여 값을 가지고 searchView.jsp로 이동
	 */
	@RequestMapping("search.bo")
	public String searchBoard(String keyword, Model model) {
		//String keyword1 = keyword;
		
		if(keyword.equals("")) {
			model.addAttribute("errorMsg", "검색어를 입력한 후 검색해주세요.");
			return "common/errorPage";
		}else {
			
			ArrayList<Board> blist = bService.searchBoard(keyword);
			ArrayList<TBoard> tblist = bService.searchTboard(keyword);
			ArrayList<Product> plist = pService.searchProduct(keyword);
			
			if(blist.isEmpty() && tblist.isEmpty() && plist.isEmpty()) {
				model.addAttribute("errorMsg", keyword + " 에 대한 검색 결과가 없습니다.");
				return "common/errorPage";
			}else {
				model.addAttribute("keyword", keyword);
				model.addAttribute("blist", blist);
				model.addAttribute("tblist", tblist);
				model.addAttribute("plist", plist);
				
				return "board/searchView";
			}
		}
	}
	
	
	@RequestMapping("list.bo")
	public String selectList(@RequestParam(value="cpage", defaultValue ="1")int currentPage, Model model) {
		
		int listCount = bService.selectNoticeListCount();
		
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<Board> list = bService.selectNoticeList(pi);
		
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "notice/noticeList";
	}
	

    @RequestMapping("search.no")
    public String boardSearch(@RequestParam("condition") String condition,
                              @RequestParam("keyword") String keyword,
                              @RequestParam("cpage") int cpage,
                              @RequestParam("pageNo") int pageNo,
                              Model model) {
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("condition", condition);
        map.put("keyword", keyword);
        
        
        int searchCount = bService.selectSearchCount(map);
        int currentPage = cpage;

        System.out.println("searchCount "+ searchCount);
        System.out.println("currentPage "+currentPage);
        
        
        PageInfo pi = Pagination.getPageInfo(searchCount, currentPage, 10, pageNo);
        ArrayList<Board> list = bService.selectSearchList(map, pi);
        System.out.println("이거나오면 반성공"+list);
        
        model.addAttribute("pi", pi);
        model.addAttribute("list", list);
        model.addAttribute("condition", condition);
        model.addAttribute("keyword", keyword);

        return "notice/noticeList";
    }
    
    @RequestMapping("enrollForm.no")
    public String enrollForm() {
    	return "notice/noticeEnrollFrom";
    }
    

//    @RequestMapping("noticeEnroll.no") 다른거먼저
//    public String noticeEnroll(String title, String writer, String content) {
//    	
//    }


    
    /**
     * @yj(10.18)
     * @인기게시글조회(메인페이지)
     */
    @ResponseBody
    @RequestMapping(value = "topBoardList.yj", produces = "application/json; charset=utf-8")
    public String ajaxTopBoardList() {
    	ArrayList<Board> list = bService.selectTopBoardList();
    	
    	return new Gson().toJson(list);
    }
    
    /**
     * @yj(10.19)
     * @네비바 notice 연동
     */
    @RequestMapping("notice.yj")
    public String forwardNotice() {
    	return "notice/noticeList";
    }
    
    /**
     * @yj(10.19)
     * @네비바 tboard 연동 중고게시글 리스트
     */
    @RequestMapping("tboardList.bo")
    public String forwardTboard(@RequestParam(value="cpage", defaultValue="1")int currentPage, Model model) {
    	
    	int listCount = bService.selectTboardListCount();
    	
    	PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 8);
    	ArrayList<TBoard> tlist = bService.selectTboardList(pi);
    	
    	model.addAttribute("pi", pi);
    	model.addAttribute("tlist", tlist);
    	
    	System.out.println("없나?"+tlist);
    	return "tBoard/tBoardList";
    }

	/**
	 * @yj(10.19)
	 * @네비바 board 연동
	 */
	@RequestMapping("board.yj")
	public String forwardBoard() {
		return "board/boardList";
	}
	
	/**
	 * @sy(10.19)
	 * @중고거래글 최신순 조회(메인)
	 */
	@ResponseBody
    @RequestMapping(value = "topTBoardList.sy", produces = "application/json; charset=utf-8")
    public String ajaxTopTBoardList() {
    	ArrayList<TBoard> list = bService.selectTopTBoardList();
    	return new Gson().toJson(list);
    }
	

    @RequestMapping("tboardEnrollForm.bo")
    public String tboardEnrollForm() {
    	
    	return "tBoard/tBoardEnrollFrom";
    }
    
    @RequestMapping("tboardEnroll.bo")
    public String insertTboard(TBoard t, int userNo ,Attachment at, MultipartFile thumbnailFile, MultipartFile[] detailFiles ,HttpSession session, Model model) {
    	
    	
    	
		ArrayList<Attachment> atList = new ArrayList<Attachment>();
		
    	t.setUserNo(userNo);
    	t.setThumbnail("resources/uploadFiles/" + saveFile(thumbnailFile, session));
    	
    	System.out.println("다넣고 확인하는거"+t);
    	int result = bService.insertTboard(t);
    	
    	
    	if(result>0) {
    		for(MultipartFile m : detailFiles) {
    			if(!m.getOriginalFilename().equals("")) {
    				at = new Attachment();
    				at.setOriginName(m.getOriginalFilename());
    				at.setChangeName(saveFile(m, session));
    				at.setFilePath("resources/uploadFiles/" + at.getChangeName());
    				atList.add(at);
    			}
    		}
    		
    		
    		System.out.println("어떤식인지확인"+atList);
    		int resultat = bService.insertDetailFiles(atList);
    		
        	
        	
        	
    		session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
    		return "redirect:tboardList.bo";
    		
    	}else {
    		session.setAttribute("alertMsg", "게시글 등록 실패했습니다.");
    		return "redirect:tboardList.bo";
    	}
    	
    	
    	
    	
    }
    
    
    
    public String saveFile(MultipartFile detailFiles, HttpSession session) {
    	
    	String originName = detailFiles.getOriginalFilename();
    	
    	String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
    	int random = (int)(Math.random()*90000 + 10000);
    	String ext = originName.substring(originName.lastIndexOf("."));
    	
    	String changeName = currentTime + random + ext;
    	String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
    	
    	try {
    		detailFiles.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
    	
    	return changeName;
    }
    
    
    @RequestMapping("tBoardDetail.bo")
    public String tBoardDetail(int tboardNo, Model model) {
        System.out.println(tboardNo);
        
        TBoard t = bService.selectTboardDetail(tboardNo);
        ArrayList<Attachment> atList = bService.selectTboardFile(tboardNo);
        
        model.addAttribute("t", t);
        model.addAttribute("atList", atList);
        System.out.println("나오나?!!!"+t);
        System.out.println("atList?!!!"+atList);
        
        
        return "tBoard/tBoardDetail";
    }


    @RequestMapping("tboardDelete.bo")
    public String tboardDelete(String tboardNo, HttpSession session, Model model) {
    	
    	int result = bService.tboardDelete(tboardNo);
    	
    	if(result >0) {
    		int result1= bService.tboardFileDelete(tboardNo);
    		
    		session.setAttribute("alertMsg", "게시글이 삭제되었습니다.");
    		return "redirect:tboardList.bo";
    	}else {
    		session.setAttribute("alertMsg", "게시글 삭제 실패했습니다.");
    		return "redirect:tboardList.bo";
    	}
    }
    
    @RequestMapping("tboardUpdateForm.bo")
    public  String tboardUpdateForm(String tboardNo, Model model) {
    	
    	TBoard t = bService.selectTboard(tboardNo);
    	ArrayList<Attachment> atList = bService.selectTboardFileList(tboardNo);
    	model.addAttribute("t", t);
    	model.addAttribute("atList", atList);
    	
    	System.out.println("나오나!@#!a"+t);
    	System.out.println("at@@@@@@"+atList);
    	
    	
    	return "tBoard/tBoardUpdate";
    }
    
    @RequestMapping("tboardUpdate.bo")
    public String tboardUpdate(String originName,String changeName,String filePath, String tboardTitle, String tboardNo,String price, String userId,String tag,
    						 String thumbnail,String tboardContent , Attachment at, MultipartFile thumbnailFile, 
    						 MultipartFile[] detailFiles ,HttpSession session, Model model ) {
    	
    	ArrayList<Attachment> atList = new ArrayList<Attachment>();
    	
    	System.out.println("changeName어떻게"+changeName);
    	System.out.println("originName어떻게"+originName);
    	
    	TBoard t = new TBoard();
    	t.setTboardTitle(tboardTitle);
    	t.setTboardNo(tboardNo);
    	t.setUserId(userId);
    	t.setPrice(price);
    	t.setTag(tag);
    	t.setTboardContent(tboardContent);
    	
    	if(!thumbnailFile.isEmpty()) {
    		t.setThumbnail("resources/uploadFiles/" + saveFile(thumbnailFile, session));
    	}else {
    		t.setThumbnail(thumbnail);
    	}
    	
    	
    	System.out.println("t확인"+t);
    	System.out.println("at확인"+at);
    	int result = bService.updateTboard(t);
    	System.out.println("되나??"+result);
    	
    	
    	if(result>0) {
    		
    	
			
			for(MultipartFile m : detailFiles) {
				if(!m.getOriginalFilename().equals("")) 
				at = new Attachment();
				at.setRefNo(tboardNo);
				at.setOriginName(m.getOriginalFilename());
				at.setChangeName(saveFile(m, session));
				at.setFilePath("resources/uploadFiles/" + at.getChangeName());
				atList.add(at);
			}
    			
    		
    		
    			System.out.println("어떤식인지확인"+atList);
    			
    			
    				
	    			int resultat1 = bService.deleteTboardFile(tboardNo);
	    			int resultat2 = bService.insertDetailFiles2(atList);
    			
    			
    		
    			
    		
    		
    		session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다");
    		return "redirect:tboardList.bo";
    		}else {
        		session.setAttribute("alertMsg", "게시글 수정 실패!!!");
        		return "redirect:tboardList.bo";
        	}
	    		
    		

    		
    	}

    
    
    
    
	
}