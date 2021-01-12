package com.ABCShop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ABCShop.dao.UserDAO;
import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.User;
import com.ABCShop.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;
	
	@Override
	public boolean add(User user) {
		userDAO.add(user);
		return false;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<User> getAll() {
		return userDAO.getAll();
	}

	@Override
	public PaginationResult<User> getAllByPage(int page, int maxResult, int maxNavigationPage) {
	
		return userDAO.getAllByPage(page, maxResult, maxNavigationPage);
	}

	@Override
	public PaginationResult<User> searchBy(int page, int maxResult, int maxNavigationPage, String key, String value) {		
		return userDAO.searchBy(page, maxResult, maxNavigationPage, key, value);
	}

}
