package com.kh.so1omon.handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.so1omon.member.model.vo.Member;
import com.kh.so1omon.product.model.service.ProductServiceImp;
import com.kh.so1omon.product.model.vo.GroupBuy;

public class EchoHandler extends TextWebSocketHandler{

	private static final Logger logger = LoggerFactory.getLogger(WebSocketHandler.class);

	// 로그인한 인원 전체
	private ArrayList<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	// 1:1로 할 경우
	private Map<String, WebSocketSession> userSessionMap = new HashMap<String, WebSocketSession>();
	
	@Autowired
	private ProductServiceImp pService;
	
	
	
	@Override /* 소켓 연결된 후 처리 메소드 */
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		super.afterConnectionEstablished(session);
		System.out.println("@@@@@@@@@연결");
		sessions.add(session);
		String userId = getSessionUerId(session);
		//System.out.println("고냥 session" + session);
		//System.out.println("현재 세션 : " + session.getId() + " , 아이디 : " + userId);
		userSessionMap.put(userId, session);
		System.out.println("connection : " + userSessionMap.toString());
		
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
	
	// 세션 받으면 로그인멤버 아이디 반환하는 메소드
	public String getSessionUerId(WebSocketSession ws) {
		return ((Member)ws.getAttributes().get("loginMember")).getUserId();
	}
	
	@Override
	public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
		super.handleMessage(session, message);
	}
	
	public void checkGroupbuyList(ArrayList<GroupBuy> gList) throws Exception {
		System.out.println("해당 메소드 탐");
		System.out.println(gList);
		if(gList.size() == 1 && sessions.size() != 0) {
			
			TextMessage msg = new TextMessage(gList.get(0).getProductName() + "상품이 오픈되었습니다!!");
			for(WebSocketSession ws : sessions) {
				ws.sendMessage(msg);
			}
		}
		
	}
	
}
