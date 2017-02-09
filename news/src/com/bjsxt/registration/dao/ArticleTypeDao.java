package com.bjsxt.registration.dao;

import java.util.List;

import com.bjsxt.registration.model.ArticleType;

public interface ArticleTypeDao {
	public void save(ArticleType articleType);
	public void delete(ArticleType articleType);
	public ArticleType findById(int typeId);
	public List<ArticleType> findAll();
	public void update(ArticleType articleType);
	
}
