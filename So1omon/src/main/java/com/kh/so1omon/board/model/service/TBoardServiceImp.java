package com.kh.so1omon.board.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.board.model.dao.TBoardDao;

@Service
public class TBoardServiceImp implements TBoardService {

	@Autowired
	private TBoardDao tDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
