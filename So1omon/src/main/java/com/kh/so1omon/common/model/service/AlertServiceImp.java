package com.kh.so1omon.common.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.dao.AlertDao;

@Service
public class AlertServiceImp implements AlertService {
	@Autowired
	private AlertDao alDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
