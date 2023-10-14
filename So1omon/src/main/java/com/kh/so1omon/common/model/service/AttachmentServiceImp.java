package com.kh.so1omon.common.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.dao.AttachmentDao;

@Service
public class AttachmentServiceImp implements AttachmentService{
	@Autowired
	private AttachmentDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
