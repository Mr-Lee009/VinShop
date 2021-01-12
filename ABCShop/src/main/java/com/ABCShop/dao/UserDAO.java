package com.ABCShop.dao;

import java.util.List;
import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.User;;

public interface UserDAO {
	public boolean add(User user);
	public boolean delete(int id);
	public boolean update(User user);
	public List<User> getAll();
	public PaginationResult<User> getAllByPage(int page,int maxResult,int maxNavigationPage);
	public PaginationResult<User> searchBy(int page,int maxResult,int maxNavigationPage,String key,String value);
}
