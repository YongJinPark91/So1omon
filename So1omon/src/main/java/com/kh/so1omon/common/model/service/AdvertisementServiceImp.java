package com.kh.so1omon.common.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.so1omon.common.model.dao.AdvertisementDao;

@Service
public class AdvertisementServiceImp implements AdvertisementService {
	@Autowired
	private AdvertisementDao adDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
