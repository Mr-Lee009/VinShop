package com.ABCShop.dao;

import java.util.List;

import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.Part1;

public interface Part1DAO {
	public boolean add(Part1 part1) ;
	public boolean delete(int id) ;
	public boolean update(Part1 part1) ;
	public List<Part1> getAll() ;
	public PaginationResult<Part1> getAllByPage(int page,int maxResult,int maxNavigationPage);
	public PaginationResult<Part1> searchBy(int page,int maxResult,int maxNavigationPage,String key,String value);

}
