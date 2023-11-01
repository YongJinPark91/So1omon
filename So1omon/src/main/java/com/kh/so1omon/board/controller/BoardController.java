package com.kh.so1omon.board.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.so1omon.board.model.service.BoardServiceImp;
import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.board.model.vo.Like;
import com.kh.so1omon.board.model.vo.Reply;
import com.kh.so1omon.board.model.vo.TBoard;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.Product;
import com.kh.so1omon.qna.model.vo.Answer;
import com.kh.so1omon.qna.model.vo.Question;
import com.kh.so1omon.common.model.service.CommonServiceImpl;
import com.kh.so1omon.common.model.vo.Alert;
import com.kh.so1omon.common.model.vo.Attachment;
import com.kh.so1omon.common.model.vo.PageInfo;
import com.kh.so1omon.common.template.Pagination;
import com.kh.so1omon.handler.EchoHandler;

@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImp bService;
	
	@Autowired
	private EchoHandler handler;
	
	@Inject
	private ProductServiceImp pService;
	@Autowired
	private CommonServiceImpl cService;
	
	private static final String key = "646441756761696b36304a5957496a";
	
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
	
	@ResponseBody
	@RequestMapping("search2.no")
    public Map<String, Object> boardSearch2(@RequestParam("condition") String condition,
                              @RequestParam("keyword") String keyword,
                              @RequestParam("cpage") int cpage,
                              @RequestParam("pageNo") int pageNo,
                              Model model) {
    	
    	
    	System.out.println("condition나오나:"+condition);
    	System.out.println("keyword나오나:"+keyword);
    	System.out.println("cpage나오나:"+cpage);
    	System.out.println("pageNo나오나:"+pageNo);
    	
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
    	
        Map<String, Object> responseData = new HashMap<String, Object>();
        responseData.put("list", list);
        responseData.put("pi", pi);
        responseData.put("condition", condition);
        responseData.put("keyword", keyword);

        System.out.println("다있어야됨:"+responseData);
        return responseData;
    	

    }
	
//	@ResponseBody
//    @RequestMapping("search.no")
//    public String boardSearch(@RequestParam("condition") String condition,
//                              @RequestParam("keyword") String keyword,
//                              @RequestParam("cpage") int cpage,
//                              @RequestParam("pageNo") int pageNo,
//                              Model model) {
//    	
//    	
//    	System.out.println("condition나오나:"+condition);
//    	System.out.println("keyword나오나:"+keyword);
//    	System.out.println("cpage나오나:"+cpage);
//    	System.out.println("pageNo나오나:"+pageNo);
//    	
//    	
//        HashMap<String, String> map = new HashMap<String, String>();
//        map.put("condition", condition);
//        map.put("keyword", keyword);
//        
//        
//        int searchCount = bService.selectSearchCount(map);
//        int currentPage = cpage;
//
//        System.out.println("searchCount "+ searchCount);
//        System.out.println("currentPage "+currentPage);
//        
//        
//        PageInfo pi = Pagination.getPageInfo(searchCount, currentPage, 10, pageNo);
//        ArrayList<Board> list = bService.selectSearchList(map, pi);
//        System.out.println("이거나오면 반성공"+list);
//        
//        model.addAttribute("pi", pi);
//        model.addAttribute("list", list);
//        model.addAttribute("condition", condition);
//        model.addAttribute("keyword", keyword);
//
//        return "notice/noticeList";
//    }
    
    @RequestMapping("enrollForm.no")
    public String enrollForm() {
    	return "notice/noticeEnrollFrom";
    }
    
    // 공지 입력
    @RequestMapping("noticeEnroll.no") 
    public String noticeEnroll(String boardTitle, String boardWriter, String boardContent, HttpSession session) {
    	
    	System.out.println("뭐라도 나와라:"+boardContent);

    	Board b = new Board();
    	b.setBoardTitle(boardTitle);
    	b.setBoardWriter(boardWriter);
    	b.setBoardContent(boardContent);
    	
    	System.out.println(b);
    	
    	int result = bService.insertNotice(b);
    	
    	if(result > 0) {
    		session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
    		return "redirect:list.bo";
    	}else {
    		session.setAttribute("alertMsg", "게시글 등록 실패했습니다.");
    		return "redirect:list.bo";
    	}
    	
    }
    
    
    
    @RequestMapping("noticeDetailView.bo")
    public String noticeDetailView(int bno, Model model) {
    	
    	Board b = bService.selectNoticeDetail(bno);
    	int result = bService.increaseNoticeCount(bno);
    	
    	model.addAttribute("b", b);
    	return "notice/noticeDetailView";
    }
    
    
    @RequestMapping("noticeDelete.bo")
    public String noticeDelete(int bno, HttpSession session, Model model) {
    	
    	System.out.println(bno+"!#!!@###");
    	
    	int result = bService.noticeDelete(bno);
    	
    	if(result>0) {
    		session.setAttribute("alertMsg", "삭제 성공");
    		return "redirect:list.bo";
    	}else {
    		session.setAttribute("alertMsg", "삭제 실패");
    		return "redirect:list.bo";
    	}
    }
    
    @RequestMapping("noticeUpdateForm.bo")
    public String noticeUpdateForm(int bno, Model model) {
    	
    	model.addAttribute("n", bService.selectNoticeDetail(bno));
    	
    	return "notice/noticeUpdate";
    }
    
    @RequestMapping("noticeUpdate.bo")
    public String noticeUpdate(String boardNo, String boardTitle, String boardWriter, String boardContent, HttpSession session) {
    	
    	System.out.println("있어야한다!:"+boardContent);

    	Board b = new Board();
    	b.setBoardNo(boardNo);
    	b.setBoardTitle(boardTitle);
    	b.setBoardWriter(boardWriter);
    	b.setBoardContent(boardContent); //이거 안나옴
    	
    	System.out.println(b);
    	
    	int result = bService.updateNotice(b);
    	
		if(result > 0) { 
			session.setAttribute("alertMsg", "성공적으로 게시글 수정되었습니다");
			return "redirect:noticeDetailView.bo?bno=" + b.getBoardNo();
			
			
		}else {
			session.setAttribute("alertMsg", "성공적으로 게시글 수정되었습니다");
			return "redirect:noticeDetailView.bo?bno=" + b.getBoardNo();

		}
    	
    	
    }

    
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
	@RequestMapping("board.bo")
	public String forwardBoard(@RequestParam(value="cpage", defaultValue="1")int currentPage, Model model) {
		
		int listCount = bService.selectBoardListCount();
		
    	PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 8);
    	ArrayList<Board> list = bService.selectboardList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
    	
		return "board/boardList";
	}
	
	
	@RequestMapping("boardSearchList.bo")
	public String boardSearchList(String condition, String keyword, int cpage, Model model) {
    	
		System.out.println("keyword::::"+keyword);
		System.out.println("condition::::"+condition);
		
		HashMap<String, String> map = new HashMap<String, String>();
        map.put("condition", condition);
        map.put("keyword", keyword);
        System.out.println("map확인!#"+map);
        System.out.println("cpage확인!#"+cpage);
        
        int searchCount = bService.selectSearchBoardCount(map);
        int currentPage = cpage;
        
        System.out.println("searchCount확인!#"+searchCount);
        System.out.println("currentPage확인!#"+currentPage);
        
        PageInfo pi = Pagination.getPageInfo(searchCount, currentPage, 10, 8);
        
        System.out.println("pi어디가 널이야??????"+pi);
        
        ArrayList<Board> list = bService.selectSearchBoardList(map, pi);
        
        System.out.println("list어디가 널이야??????"+list);
        
        model.addAttribute("pi", pi);
        model.addAttribute("list", list);
        model.addAttribute("condition", condition);
        model.addAttribute("keyword", keyword);
        
        return "board/boardList";
        
        
        
	}
	
	@RequestMapping("boardEnrollForm.bo")
	public String boardEnrollForm() {
		return "board/boardEnrollFrom";
	}
	
	//!!!!!!
	@RequestMapping("boardEnroll.bo")
	public String insertBoard(String boardTitle, String boardWriter, String boardContent, HttpSession session) {
		
    	System.out.println("뭐라도 나와라:"+boardContent);

    	Board b = new Board();
    	b.setBoardTitle(boardTitle);
    	b.setBoardWriter(boardWriter);
    	b.setBoardContent(boardContent);
    	
    	System.out.println(b);
    	
    	int result = bService.insertBoard(b);
    	
    	if(result > 0) {
    		session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
    		return "redirect:board.bo";
    	}else {
    		session.setAttribute("alertMsg", "게시글 등록 실패했습니다.");
    		return "redirect:board.bo";
    	}
		
	}
	
	
	@RequestMapping("boardDetailView.bo")
	public String boardDetailView(int bno, Model model) {
		
		Board b = bService.boardDetailView(bno);
		int result1 = bService.increaseBoardCount(bno);
		System.out.println("여기좋아요있나?"+b);
		

		
    	model.addAttribute("b", b);
    	return "board/boardDetailView";
		
	
	}
	
	@RequestMapping("boardDelete.bo")
	public String boardDelete(int boardNo, HttpSession session, Model model) {
		System.out.println("지금확인!#!#!##"+boardNo);
    	int result = bService.boardDelete(boardNo);
    	
    	if(result>0) {
    		session.setAttribute("alertMsg", "삭제 성공");
    		return "redirect:board.bo";
    	}else {
    		session.setAttribute("alertMsg", "삭제 실패");
    		return "redirect:board.bo";
    	}
	}
	
	@RequestMapping("boardUpdateForm.bo")
	public String boardUpdateForm(int boardNo, Model model) {
		
		Board b = bService.boardDetailView(boardNo);
		System.out.println("이거확인해보자!!!!!!!!!!!!"+b);
		model.addAttribute("b",b);
		
		return "board/boardUpdate";
	}
	
	@RequestMapping("boardUpdate.bo")
	public String boardUpdate(String boardNo, String boardTitle, String boardWriter, String boardContent, HttpSession session) {
		
    	System.out.println("있어야한다!:"+boardContent);

    	Board b = new Board();
    	b.setBoardNo(boardNo);
    	b.setBoardTitle(boardTitle);
    	b.setBoardWriter(boardWriter);
    	b.setBoardContent(boardContent); //이거 안나옴
    	
    	System.out.println(b);
    	
    	int result = bService.boardUpdate(b);
    	
		if(result > 0) { 
			session.setAttribute("alertMsg", "성공적으로 게시글 수정되었습니다");
			return "redirect:boardDetailView.bo?bno=" + b.getBoardNo();
			
			
		}else {
			session.setAttribute("alertMsg", "성공적으로 게시글 수정되었습니다");
			return "redirect:boardDetailView.bo?bno=" + b.getBoardNo();

		}
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
    public String insertTboard(TBoard t, int userNo ,Attachment at, String address, MultipartFile thumbnailFile, MultipartFile[] detailFiles ,HttpSession session, Model model) {
    	
    	System.out.println("주소나옴??:"+address);
    	
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
        int result = bService.increaseTboardCount(tboardNo);
        
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
    	System.out.println("filePath어떻게"+filePath);
    	
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
				if(!m.getOriginalFilename().equals("")) { //들어온파일이 있을때
					at = new Attachment();
					at.setRefNo(tboardNo);
					at.setOriginName(m.getOriginalFilename());
					at.setChangeName(saveFile(m, session));
					at.setFilePath("resources/uploadFiles/" + at.getChangeName());
					atList.add(at);
				}else { //없을떄
					at = new Attachment();
					at.setRefNo(tboardNo);
					at.setChangeName(changeName);
					at.setOriginName(originName);
					at.setFilePath(filePath);
					atList.add(at);
					
				}
				
				
				
				
			}
    			
    		
    		
    			System.out.println("어떤식인지확인"+atList);
    				
	    			int resultat1 = bService.deleteTboardFile(tboardNo);
	    			int resultat2 = bService.insertDetailFiles2(atList);
    			
	    			String resultString = t.getTboardNo().substring(1);

	    			
    		
	    		session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다");
    			return "redirect:tBoardDetail.bo?tboardNo=" + resultString;
    		}else {
    			String resultString = t.getTboardNo().substring(1);
        		session.setAttribute("alertMsg", "게시글 수정 실패!!!");
        		return "redirect:tBoardDetail.bo?tboardNo=" + resultString;
        	}
    	}
    
    
    
	@ResponseBody
    @RequestMapping(value="insertTboardAnswer.bo")
    public String insertTboardAnswer(Reply r,String boardNo, int replyWriter , HttpSession session) {
    	

    	int result = bService.insertTboardAnswer(r);
    	
    	if(result > 0) {
   		 
			return "redirect:tBoardDetail.bo";
		}else {
			return "redirect:tBoardDetail.bo";
		}

    }
	
	// 리스트

    
	@ResponseBody
	@RequestMapping(value="TboardAnswerList.bo", produces = "application/json; charset=UTF-8")
	public String TboardAnswerList(String boardNo) {
		
		System.out.println("처음으로보는거"+boardNo);
		
		ArrayList<Reply> rList = bService.selectReplyListTB(boardNo);
		
		System.out.println("댓글 리스트!!!"+rList);
		return new Gson().toJson(rList);

	}
	
	@ResponseBody
	@RequestMapping(value="deleteMyBoard.bo")
	public int deleteMyBoard(Board b) {
		String d = "B" + b.getBoardNo();
		b.setBoardNo("컨트롤러 " + d);
		int result = bService.deleteMyBoard(b);
		
		return result;
	}
    
	
	// 자유
	@ResponseBody
    @RequestMapping(value="answerBoardInsert.bo")
    public String answerBoardInsert(Reply r,String boardNo, int replyWriter , HttpSession session) {
    	
		System.out.println("다들어가 있나???!"+r);
		System.out.println("boardNo 있나???!"+boardNo);
		System.out.println("replyWriter 있나???!"+replyWriter);
		
    	int result = bService.answerBoardInsert(r);
    	
    	if(result > 0) {
   		 
			return "redirect:boardDetailView.bo";
		}else {
			return "redirect:boardDetailView.bo";
		}

    }


	@ResponseBody
    @RequestMapping(value="boardList.admin", produces="application/json; charset=utf-8")
	public String selectBoardListAD(int num, int limit, int type) {
		ArrayList<Board> list = bService.selectBoardListAD(num, limit, type);
		return new Gson().toJson(list);
	}
    
    @ResponseBody
    @RequestMapping(value="tboardList.admin", produces="application/json; charset=utf-8")
    public String selectTBoardListAD(int num, int limit, String keyword) {
    	ArrayList<TBoard> list = bService.selectTBoardListAD(num, limit, keyword);
    	return new Gson().toJson(list);
    }
    

    
    
    

	

    
	@ResponseBody
	@RequestMapping(value="answerBoardlist.bo", produces = "application/json; charset=UTF-8")
	public String answerBoardlist(String boardNo) {
		
		System.out.println("처음으로보는거"+boardNo);
		
		ArrayList<Reply> rList = bService.answerBoardlist(boardNo);
		
		System.out.println("댓글 리스트!!!"+rList);
		return new Gson().toJson(rList);

	}
    
	// 중고 댓글삭제
	@ResponseBody
	@RequestMapping(value="deleteReply.re")
	public String deleteReply(Reply r, String boardNo, int replyWriter,String replyNo) {
		
		System.out.println("중고 댓글 삭제확인!"+r);
		System.out.println("boardNo 있나???!"+boardNo);
		System.out.println("replyWriter 있나???!"+replyWriter);
		System.out.println("replyNo 있나???!"+replyNo);

    	int result = bService.deleteReplyTboard(r);
    	
    	if(result > 0) {
   		 
			return "redirect:tBoardDetail.bo";
		}else {
			return "redirect:tBoardDetail.bo";
		} 
	}
	
	// 자유 댓글삭제
	@ResponseBody
	@RequestMapping(value="deleteReplyBoard.re")
	public String deleteReplyBoard(Reply r, String boardNo, int replyWriter,String replyNo) {
		int result = bService.deleteReplyBoard(r);
		
		if(result > 0) {
			
			return "redirect:boardDetailView.bo";
		}else {
			return "redirect:boardDetailView.bo";
		} 
	}
    
	
	// 좋아요
    @ResponseBody
    @RequestMapping("likeAdDel.li")
    public String likeAdDel(Like l,String boardNo,int userNo) {
    	
    	System.out.println("boardNo:"+boardNo);
    	System.out.println("userNo:"+userNo);
    	
    	System.out.println( "여기는 타나??"+ l);
    	int check = bService.checkLike(l);
    	int result = 0;
    	if(check > 0) {
    		result = deleteLike(l);
    		return "delete";
    	}else {
    		result = bService.insertLike(l);
    		return "insert";
    	}
    	
    }
    
    
    public int deleteLike(Like l) {
    	int result = bService.deleteLike(l);
    	return result;
    }
    
    @ResponseBody
    @RequestMapping("checkLike.li")
    public int checkLike(Like l) {
    	
    	int result = bService.checkLike(l);
    	return result;
    	
    }
    
    @ResponseBody
    @RequestMapping("likeCount.li")
    public int likeCount(@RequestParam("boardNo") int boardNo) {
        int likeCount = bService.countLike(boardNo);
        System.out.println(likeCount + "몇나오나?");
        return likeCount;
    }

    
    
    
    
    
		/**
     * @sy(10.23)
     * @네비바 1인가구 연동
     */
    @RequestMapping("oneBoardList.bo")
    public String oneBoardList() {
       return "oneBoard/oneBoardList";
    }
    
    @ResponseBody
    @RequestMapping(value="one.do", produces = "application/json; charset=utf-8")
    public String onePerson(@RequestParam String partcptnId) throws IOException {
       String url = "http://openapi.seoul.go.kr:8088";
       url += "/"+key;
       url += "/json/tbPartcptn";
       url += "/1"; // start_index
       url += "/1"; // end_index
       url += "/" + partcptnId;
      
       System.out.println(url);
      
      URL requeUrl = new URL(url);
      
      HttpURLConnection urlConnection = (HttpURLConnection)requeUrl.openConnection();
      urlConnection.setRequestMethod("GET");
      
      BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
      
      String responseText = "";
      String line;
      
      while((line=br.readLine()) != null ){
         responseText += line;
      }
      br.close();
      urlConnection.disconnect();
      return responseText;
    }
    
    /**
     * 1인가구 상세보기로 이동
     */
    @RequestMapping("oneDetail.do")
    public String test(String partcptnId) {
    	// System.out.println("PARTCPTN_ID: " + partcptnId);
    	return "oneBoard/oneBoardDetail";
    }
    
    /**
     * 1인가구 최초조회 & 무한스크롤(데이터 받기)
     */
    @ResponseBody
    @RequestMapping(value="scroll.do", produces = "application/json; charset=utf-8")
    public String scroll(@RequestParam(defaultValue="1") String start, @RequestParam(defaultValue="10") String end, @RequestParam String ATDRC_NM, @RequestParam(defaultValue="%20") String PARTCPTN_SJ) throws IOException {
       String url = "http://openapi.seoul.go.kr:8088";
       url += "/" + key;
       url += "/json/tbPartcptn";
       url += "/" + start; // start_index
       url += "/" + end; // end_index
       url += "/%20/" + PARTCPTN_SJ + "/%20/%20/" + ATDRC_NM;
      
       System.out.println(url);
      
      URL requeUrl = new URL(url);
      
      HttpURLConnection urlConnection = (HttpURLConnection)requeUrl.openConnection();
      urlConnection.setRequestMethod("GET");
      
      BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
      
      String responseText = "";
      String line;
      
      while((line=br.readLine()) != null ){
         responseText += line;
      }
      br.close();
      urlConnection.disconnect();
      return responseText;
    }
    
    
    @RequestMapping("alramReply.bo")
    public void alramReply(Board b, String replyWriter) throws Exception {
    	
    	Alert a = new Alert();
    	a.setRefNo(b.getBoardNo());
    	a.setUserId(b.getUserId());
    	a.setAlertContent("[" + b.getBoardTitle() + "]게시글 에 " + replyWriter + "님이 댓글을 달았습니다");
    	cService.insertBoardAlert(a);
    	
    	handler.alramReply(b, replyWriter); // 웹소켓 핸들러 전달 (유저 접속중이면 알림감)
    	
    }

    
    
    

    
    
    
    
	
}