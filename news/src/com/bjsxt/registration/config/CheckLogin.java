package com.bjsxt.registration.config;

import com.opensymphony.xwork2.ActionContext;

public class CheckLogin {
	public boolean IsLogin() {
		String username = (String) ActionContext.getContext().getSession()
				.get("name");
		if (username == null || username == "") {
			// Èç¹ûÎ´µÇÂ¼
			return false;
		} else {
			return true;
		}
}
}
