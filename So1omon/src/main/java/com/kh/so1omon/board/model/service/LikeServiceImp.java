package com.kh.so1omon.board.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.board.model.dao.LikeDao;

@Service
public class LikeServiceImp implements LikeService{
	@Autowired
	private LikeDao lDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
