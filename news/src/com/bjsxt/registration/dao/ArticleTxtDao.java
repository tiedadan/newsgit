package com.bjsxt.registration.dao;

import java.util.List;

import com.bjsxt.registration.model.ArticleTxt;

public interface ArticleTxtDao {
	public void save(ArticleTxt articleTxt);
	public void delete(ArticleTxt articleTxt);
	public ArticleTxt findById(int articleId);//根据文章Id
	public ArticleTxt findByName(String name);
	public List<ArticleTxt> findAll();
	public List<ArticleTxt> findAllByCount(int count );
	public List<ArticleTxt> findAllByTypeName(String typeName);//根据栏目
	public void update(ArticleTxt articleTxt);
	public List<ArticleTxt> find_pic();
	public List<ArticleTxt> find_typename_count(String string, int count);
	public ArticleTxt find_byid_pre(int id);
	public ArticleTxt find_byid_las(int id);
	
}
