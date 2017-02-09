package com.bjsxt.registration.dao.impl;

import java.sql.SQLException;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import com.bjsxt.registration.dao.ArticleTxtDao;
import com.bjsxt.registration.model.ArticleTxt;
import com.bjsxt.registration.model.User;

@Component("articleTxtDao")
public class ArticleTxtDaoImpl implements ArticleTxtDao {
	private HibernateTemplate hibernateTemplate;
//	ArticleTxtDaoImpl(){
//		hibernateTemplate.setMaxResults(12);
//	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void save(ArticleTxt articleTxt) {
		hibernateTemplate.save(articleTxt);
	}

	@Override
	public void delete(ArticleTxt articleTxt) {
		hibernateTemplate.delete(articleTxt);
	}

	@Override
	public ArticleTxt findById(int articleId) {
		ArticleTxt articleTxt = (ArticleTxt) hibernateTemplate.get(
				ArticleTxt.class, articleId);
		return articleTxt;
	}

	@Override
	public List<ArticleTxt> findAll() {
		// List<ArticleTxt> list = hibernateTemplate
		// .find("from ArticleTxt order by articleId asc");
		// return list;
		final String hql = "from ArticleTxt order by articleId asc";
		try {
			List list = hibernateTemplate.executeFind(new HibernateCallback() {
				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					List list2 = session.createQuery(hql).setFirstResult(0)
							.setMaxResults(40).list();
					return list2;
				}
			});
			return list;
		} catch (RuntimeException re) {
			throw re;
		}
	}

	@Override
	public void update(ArticleTxt articleTxt) {
		hibernateTemplate.update(articleTxt);
	}

	@Override
	public ArticleTxt findByName(String name) {
		// hibernateTemplate.find("from ArticleTxt Where articleTitle =?",name);
		ArticleTxt articleTxt = (ArticleTxt) hibernateTemplate.find(
				"from ArticleTxt Where articleTitle = " + name).get(0);
		return articleTxt;
	}

	@Override
	public List<ArticleTxt> findAllByTypeName(String typeName) {
		hibernateTemplate.setMaxResults(12);
		List<ArticleTxt> list = hibernateTemplate.find(
				"from ArticleTxt Where typeName =? order by articleId desc",
				typeName);
		return list;
	}

	@Override
	public List<ArticleTxt> findAllByCount(int count) {
		List<ArticleTxt> list = hibernateTemplate
				.find("from ArticleTxt order by articleId desc");
		return list;
	}

	@Override
	public List<ArticleTxt> find_pic() {
		List<ArticleTxt> list = hibernateTemplate.find(
				"from ArticleTxt where isPic=? order by articleId desc", 1);
		return list;
	}

	@Override
	public List<ArticleTxt> find_typename_count(String typename, int count) {
		List<ArticleTxt> list = hibernateTemplate.find(
				"from ArticleTxt Where typeName =? order by articleId desc",
				typename);
		return list;
	}

	@Override
	public ArticleTxt find_byid_pre(int id) {
		List<ArticleTxt> list = hibernateTemplate.find(
				"from ArticleTxt Where articleId > ? order by articleId asc",
				id);
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public ArticleTxt find_byid_las(int id) {
		List<ArticleTxt> list = hibernateTemplate.find(
				"from ArticleTxt Where articleId < ? order by articleId desc",
				id);
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
}
