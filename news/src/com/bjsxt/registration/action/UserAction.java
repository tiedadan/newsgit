package com.bjsxt.registration.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import com.bjsxt.registration.dao.UserDao;
import com.bjsxt.registration.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class UserAction extends ActionSupport {

	private String username;
	private String password;
	// private String password2;
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	@Resource
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	private List<User> userlist;

	public String regist() throws Exception {

		// 判断用户名是否存在？
		if (userDao.isexit(username)) {
			// 存在 返回注册页面
			return "registui";
		} else {// 不存在
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			userDao.save(user);
			return "regist";
		}
	}

	public String login() throws Exception {
		System.out.println("---------->登录"+username);
//		User user = new User();
//		user.setUsername(username);
//		user.setPassword(password);
		// 登录成功 写入session 否则返回登录页面
		if (userDao.login(username, password)) {
			System.out.println("---------->登录成功！");
			ActionContext.getContext().getSession()
					.put("name", username);
			return "login";
		} else {
			System.out.println("---------->登录失败！");
			return "loginui";
		}
		
	}

	public String findAll() throws Exception {
		userlist = userDao.findAll();
		System.out.println("-----》用户查找 所有" + userlist.size());
		ActionContext.getContext().put("userlist", userlist);
		return "success";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
