package com.bjsxt.registration.dao;

import java.util.List;

import com.bjsxt.registration.model.User;

public interface UserDao {
	public void save(User u);
	public void delete(User u);
	public User findById(int depId);
	public List<User> findAll();
	public void update(User u);
	public boolean isexit(String username);
	public boolean login(String username, String password);
	
}
