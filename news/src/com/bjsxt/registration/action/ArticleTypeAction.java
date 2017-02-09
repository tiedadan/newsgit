package com.bjsxt.registration.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import com.bjsxt.registration.config.CheckLogin;
import com.bjsxt.registration.dao.ArticleTypeDao;
import com.bjsxt.registration.model.ArticleType;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class ArticleTypeAction extends CheckLogin {
	private int id;
	private ArticleType articleType;
	private List<ArticleType> articleTypelist;
	private ArticleTypeDao articleTypeDao;

	public ArticleTypeDao getArticleTypeDao() {
		return articleTypeDao;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Resource
	public void setArticleTypeDao(ArticleTypeDao articleTypeDao) {
		this.articleTypeDao = articleTypeDao;
	}

	public ArticleType getArticleType() {
		return articleType;
	}

	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}

	public List<ArticleType> getArticleTypelist() {
		return articleTypelist;
	}

	public void setArticleTypelist(List<ArticleType> articleTypelist) {
		this.articleTypelist = articleTypelist;
	}

	public String save() throws Exception {
		if (this.IsLogin()) {
			articleTypeDao.save(articleType);
			return "save";
		} else {
			return "loginUI";
		}
	}

	public String findAll() throws Exception {
		if (this.IsLogin()) {
			articleTypelist = articleTypeDao.findAll();
			System.out.println("------------>后台栏目查询所有:"
					+ articleTypelist.size());
			return "findAll";
		} else {
			return "loginUI";
		}

	}

	public String delete() throws Exception {
		if (this.IsLogin()) {
//			String id = ServletActionContext.getRequest().getParameter("id");
//			int id1 = Integer.parseInt(id);
			System.out.println("------------>后台栏目删除ID:" + id);
			articleTypeDao.delete(articleTypeDao.findById(id));
			return "delete";
		} else {
			return "loginUI";
		}
	}

	public String update() throws Exception {
		if (this.IsLogin()) {
			articleTypeDao.update(articleType);
			return "update";
		} else {
			return "loginUI";
		}
	}

	public String updateui() throws Exception {
		if (this.IsLogin()) {
			System.out.println("------------>后台栏目修改 ID:" + id);
			articleType = articleTypeDao.findById(id);
			return "updateui";
		} else {
			return "loginUI";
		}
	}

}
