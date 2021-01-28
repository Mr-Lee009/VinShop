package com.ABCShop.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ABCShop.dao.Part1DAO;
import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.Part1;

@Component
public class Part1DAOImpl implements Part1DAO {
	

	@Autowired
	private SessionFactory factory;
    
	@Override
	public boolean add(Part1 part1)  {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id)  {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Part1 part1)  {
		Session session = factory.openSession();
		Transaction tran = null;
		try {
			tran = session.beginTransaction();
			session.update(part1);
			tran.commit();
			return true;
		} catch (HibernateException mye) {
			tran.rollback();
			mye.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public List<Part1> getAll()  {
		String sql = "SELECT * FROM part1";
	    return null;// this.jdbcTemplate.query(sql, new Part1Mapper());
	}

	@Override
	public PaginationResult<Part1> getAllByPage(int page, int maxResult, int maxNavigationPage) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PaginationResult<Part1> searchBy(int page, int maxResult, int maxNavigationPage, String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}

}
