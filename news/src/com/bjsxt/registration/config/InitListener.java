package com.bjsxt.registration.config;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.opensymphony.xwork2.ActionContext;

public class InitListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO �Զ����ɵķ������

	}

	@Override
	public void contextInitialized(ServletContextEvent sec) {
		// TODO �Զ����ɵķ������
//		sec.getServletContext().gets
//		getSession().put("name", "admin");
	}
}
