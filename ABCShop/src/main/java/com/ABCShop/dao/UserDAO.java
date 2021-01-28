package com.ABCShop.dao;

import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.User;;

public interface UserDAO {
	public boolean add(User user);
	public boolean delete(int id);
	public boolean update(User user);
	public User getById(int id);
	public PaginationResult<User> getAllByPage(int page,int maxResult,int maxNavigationPage);
	public PaginationResult<User> searchBy(int page,int maxResult,int maxNavigationPage,String key,String value);
}
