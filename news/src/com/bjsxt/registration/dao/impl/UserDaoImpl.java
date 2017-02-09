package com.bjsxt.registration.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.bjsxt.registration.dao.UserDao;
import com.bjsxt.registration.model.User;

@Component("userDao")
public class UserDaoImpl implements UserDao {
	private HibernateTemplate hibernateTemplate;
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public boolean isexit(String username) {
		List<User> users = hibernateTemplate
				.find("from User u where u.username = '" + username + "'");
		if (users != null && users.size() > 0) {
			return true;
		} else {
			return false;
		}
		/*
		 * long count = (Long)hibernateTemplate.getSessionFactory()
		 * .getCurrentSession
		 * ().createQuery("select count(*) from User u where u.username = :username"
		 * ) .setString("username", username).uniqueResult(); if(count > 0)
		 * return true; return false;
		 */
	}

	public void save(User u) {
		hibernateTemplate.save(u);

	}

	@Override
	public void delete(User u) {
		// TODO Auto-generated method stub
		hibernateTemplate.delete(u);

	}

	@Override
	public User findById(int depId) {
		// TODO Auto-generated method stub
		User u = (User) hibernateTemplate.get(User.class, depId);
		return u;
	}

	@Override
	public List<User> findAll() {
		List<User> list = hibernateTemplate.find("from User order by id asc");
		System.out.println(list.size());
		// List<User> list = hibernateTemplate.find(queryString)
		return list;
	}

	@Override
	public void update(User u) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(u);
	}

	@Override
	public boolean login(String username, String password) {
		List<User> users = hibernateTemplate
				.find("from User u where u.username ='"+username+"' and u.password ='"+password+"'");
		if (users != null && users.size() > 0) {
			return true;
		} else {
			return false;
		}
	}
}
