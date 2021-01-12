package com.ABCShop.dao;

import java.util.List;

import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.Test;;

public interface TestDAO {
	public boolean add(Test test);
	public boolean delete(int id);
	public boolean update(Test test);
	public List<Test> getAll();
	public PaginationResult<Test> getAllByPage(int page,int maxResult,int maxNavigationPage);
	public PaginationResult<Test> searchBy(int page,int maxResult,int maxNavigationPage,String key,String value);
}
