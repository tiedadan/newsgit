package com.bjsxt.registration.config;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.opensymphony.xwork2.ActionContext;

public class InitListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO 自动生成的方法存根

	}

	@Override
	public void contextInitialized(ServletContextEvent sec) {
		// TODO 自动生成的方法存根
//		sec.getServletContext().gets
//		getSession().put("name", "admin");
	}
}
