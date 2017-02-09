package com.bjsxt.registration.config;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class CheckPrivilegeInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO 自动生成的方法存根
		String username = (String) ActionContext.getContext().getSession()
				.get("name");
		if (username == null || username == "") {
			// 如果未登录
			return "loginUI";
		} else {
			return invocation.invoke();
		}
	}

}
