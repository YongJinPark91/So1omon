package com.kh.so1omon.board.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.board.model.dao.ReplyDao;

@Service
public class ReplyServiceImp implements ReplyService {
	@Autowired
	private ReplyDao rDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
