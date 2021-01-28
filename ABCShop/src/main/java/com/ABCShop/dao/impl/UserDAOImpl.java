package com.ABCShop.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ABCShop.dao.UserDAO;
import com.ABCShop.entities.PaginationResult;
import com.ABCShop.entities.User;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory factory;

	@Override
	public boolean add(User user) {
		Session session = factory.openSession();
		Transaction tran = null;
		try {
			tran = session.beginTransaction();
			session.save(user);
			tran.commit();
			return true;
		} catch (HibernateException mye) {
			System.out.println(mye.getMessage());
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean delete(int id) {
		Session session = factory.openSession();
		Transaction tran = null;
		try {
			tran = session.beginTransaction();
			User user = getById(id);
			session.delete(user);
			tran.commit();
			return true;
		} catch (HibernateException mye) {
			tran.rollback();
			mye.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean update(User user) {
		Session session = factory.openSession();
		Transaction tran = null;
		try {
			tran = session.beginTransaction();
			session.update(user);
			tran.commit();
			return true;
		} catch (HibernateException mye) {
			System.out.println(mye.getMessage());
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public PaginationResult<User> getAllByPage(int page, int maxResult, int maxNavigationPage) {
		Session session = factory.openSession();
		;
		Transaction tran = null;
		try {
			tran = session.beginTransaction();

			String sql = "FROM user u ORDER BY u.id DESC";
			Query query = session.createQuery(sql);
			PaginationResult<User> result = new PaginationResult<User>(query, page, maxResult, maxNavigationPage);
			List<User> lst = result.getList();
			tran.commit();
			return result;
		} catch (HibernateException mye) {
			System.out.println(mye.getMessage());
			return null;
		} finally {
			session.close();
		}

	}

	@Override
	public PaginationResult<User> searchBy(int page, int maxResult, int maxNavigationPage, String key, String value) {
		Session session = factory.openSession();
		;
		Transaction tran = null;
		try {
			tran = session.beginTransaction();
			String KEY = "",VALUE ="";
			switch (key) {
			case "username":
				KEY = "username";
				break;
			case "phonenumber":
				KEY = "phonenumber";
				break;
			case "email":
				KEY = "email";
				break;
			case "rule":
				KEY = "rule";
				break;
			default:
				break;
			}

			String hql = "FROM user u WHERE u." + KEY + " like " + ":value" ;
			System.out.println(hql);
			Query query = session.createQuery(hql);
			query.setParameter("value", value);
			PaginationResult<User> result = new PaginationResult<User>(query, page, maxResult, maxNavigationPage);
			
			tran.commit();
			return result;
		} catch (HibernateException mye) {
			System.out.println(mye.getMessage());
			return null;
		} finally {
			session.close();
		}

	}

	@Override
	public User getById(int id) {
		Session session = factory.openSession();
		Transaction tran = null;
		try {
			tran = session.beginTransaction();
			User user = (User) session.get(User.class, id);
			tran.commit();
			return user;
		} catch (HibernateException mye) {
			tran.rollback();
			mye.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

}
