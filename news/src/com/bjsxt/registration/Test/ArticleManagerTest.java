package com.bjsxt.registration.Test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.bjsxt.registration.dao.ArticleTxtDao;
import com.bjsxt.registration.model.ArticleTxt;
public class ArticleManagerTest {

//	@Test
//	public void testAdd() throws Exception {
//		ArticleManager um = new ArticleManagerImpl();
//		ArticleTxt u = new ArticleTxt();
//		u.setArticleTitle("山西省人民医院");
//		um.add(u);
//	}
	@Test 
	public void testAdd1()throws Exception{
		try {
			ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
			ArticleTxtDao dao = (ArticleTxtDao) ctx.getBean("articleTxtDao");
			ArticleTxt u = new ArticleTxt();
			u.setArticleTitle("中国");
			dao.save(u);
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
	@Test 
	public void find()throws Exception{
		try {
			ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("beans.xml");
			ArticleTxtDao dao = (ArticleTxtDao) ctx.getBean("articleTxtDao");
//			ArticleTxt u = new ArticleTxt();
//			u.setArticleTitle("山西省人民医院");
			int count = dao.findAll().size();
			System.out.println(count);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
