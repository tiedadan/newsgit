package com.bjsxt.registration.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.bjsxt.registration.dao.ArticleTypeDao;
import com.bjsxt.registration.model.ArticleType;

@Component("articleTypeDao")
public class ArticleTypeDaoImpl implements ArticleTypeDao {
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void save(ArticleType articleType) {
		// TODO Auto-generated method stub
		hibernateTemplate.save(articleType);
	}

	@Override
	public void delete(ArticleType articleType) {
		// TODO Auto-generated method stub
		hibernateTemplate.delete(articleType);

	}

	@Override
	public ArticleType findById(int typeId) {
		// TODO Auto-generated method stub
		ArticleType articleType = (ArticleType) hibernateTemplate.get(
				ArticleType.class, typeId);
		return articleType;
	}

	@Override
	public List<ArticleType> findAll() {
		// TODO Auto-generated method stub
		List<ArticleType> list = hibernateTemplate.find("from ArticleType order by typeId asc");
		return list;
	}

	@Override
	public void update(ArticleType articleType) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(articleType);

	}

}
