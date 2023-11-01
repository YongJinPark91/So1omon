package com.kh.so1omon.handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.so1omon.board.model.vo.Board;
import com.kh.so1omon.member.model.vo.Member;
import com.kh.so1omon.product.model.vo.GroupBuy;

public class EchoHandler extends TextWebSocketHandler{

	private static final Logger logger = LoggerFactory.getLogger(WebSocketHandler.class);

	// 로그인한 인원 전체
	private ArrayList<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	
	// userId=session Map
	private Map<String, WebSocketSession> userSessionMap = new HashMap<String, WebSocketSession>();
	
	
	@Override /* 소켓 연결된 후 처리 메소드 */
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		super.afterConnectionEstablished(session);
		sessions.add(session);
		//System.out.println("고냥 session" + session);
		//System.out.println("현재 세션 : " + session.getId() + " , 아이디 : " + userId);
		userSessionMap.put(getSessionUerId(session), session);
		
		/*
		for(WebSocketSession` ws : sessions) {
			System.out.println(ws.toString());
			System.out.println("이거 : " + ws.getAttributes());
			Member sm = (Member)ws.getAttributes().get("loginMember");
			System.out.println("그래서 아이디 : " + sm.getUserId());
			String id = ws.getAttributes().get("HTTP.SESSION.ID").toString();
			System.out.println("그래서 세션 아이디 : " + id);
		}
		*/

	}
	
	
	
	@Override /* 메시지 수신발신 메소드 */
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		super.handleTextMessage(session, message);
//		System.out.println("메시지 : " + message.getPayload());
		
		if(userSessionMap.get("test01") != null) {
			System.out.println("메소드 탐");
			TextMessage msg = new TextMessage("누군가가 : " + message.getPayload());
			userSessionMap.get("test01").sendMessage(msg);
		}
		
	}
	
	
	@Override /* 세션 연결 끊겼을 때 처리 메소드 */
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		super.afterConnectionClosed(session, status);
		System.out.println("연결끊김");
		sessions.remove(session);
		userSessionMap.remove(getSessionUerId(session), session);
		System.out.println("끊은후 : " + userSessionMap.toString());
		
	}
	
	/* 세션 받으면 로그인멤버 아이디 반환하는 메소드 */
	public String getSessionUerId(WebSocketSession ws) {
		return ((Member)ws.getAttributes().get("loginMember")).getUserId();
	}
	
	

	
	/**
	 * @param gList (정각마다 예약상품 있는지 체크하는 스케줄러에서 예약상품 있을시 던져주는 ArrayList<GroupBuy>
	 */
	public void checkGroupbuyList(ArrayList<GroupBuy> gList) throws Exception {
		
		if(gList.size() == 1 && sessions.size() != 0) {
			
			TextMessage msg = new TextMessage("<b>" + gList.get(0).getProductName() + "</b> 상품이 오픈되었습니다 서두르세요!!");
			
			for(WebSocketSession ws : sessions) {
				ws.sendMessage(msg);
			}
		}
	}
	
	public void alramReply(Board b, String replyWriter) throws Exception {
		
		WebSocketSession bwSession = userSessionMap.get(b.getUserId());
		
		if(bwSession != null) { // 게시글 작성자가 세션에 존재할때
			TextMessage msg = new TextMessage("<b>[" + b.getBoardTitle() + "]</b>글에 " + replyWriter + "님이 댓글을 남겼습니다.");			
			bwSession.sendMessage(msg);
		}
		
	}
	
	
}
