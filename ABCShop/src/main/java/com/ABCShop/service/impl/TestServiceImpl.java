package com.ABCShop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ABCShop.dao.TestDAO;
import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.Test;
import com.ABCShop.service.TestService;

@Service("testService")
public class TestServiceImpl implements TestService {

	@Autowired
	TestDAO testDao;
	@Override
	public boolean add(Test test) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Test test) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Test> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PaginationResult<Test> getAllByPage(int page, int maxResult, int maxNavigationPage) {
		return testDao.getAllByPage(page, maxResult, maxNavigationPage);
	}

	@Override
	public PaginationResult<Test> searchBy(int page, int maxResult, int maxNavigationPage, String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}

}
