package com.kh.so1omon.common.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.dao.ReportDao;

@Service
public class ReportServiceImp implements ReportService {
	@Autowired
	private ReportDao rDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
