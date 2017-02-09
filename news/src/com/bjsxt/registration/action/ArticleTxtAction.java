package com.bjsxt.registration.action;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.bjsxt.registration.config.CheckLogin;
import com.bjsxt.registration.dao.ArticleTxtDao;
import com.bjsxt.registration.dao.ArticleTypeDao;
import com.bjsxt.registration.model.ArticleTxt;
import com.bjsxt.registration.model.ArticleType;

@Controller
@Scope("prototype")
public class ArticleTxtAction extends CheckLogin {
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private int id;
	private ArticleTxt articleTxt; // 文章
	private ArticleTxt pre_articleTxt; // 文章
	private ArticleTxt las_articleTxt; // 文章

	public ArticleTxt getPre_articleTxt() {
		return pre_articleTxt;
	}

	public void setPre_articleTxt(ArticleTxt pre_articleTxt) {
		this.pre_articleTxt = pre_articleTxt;
	}

	public ArticleTxt getLas_articleTxt() {
		return las_articleTxt;
	}

	public void setLas_articleTxt(ArticleTxt las_articleTxt) {
		this.las_articleTxt = las_articleTxt;
	}

	private List<ArticleTxt> articleTxtlist; // 文章集合
	private List<ArticleTxt> articleTxtPiclist; // 图片 1
	private List<ArticleTxt> articleTxtlistTiYu;// 体育 2
	private List<ArticleTxt> articleTxtlistJunShi;// 军事 3
	private List<ArticleTxt> articleTxtlistShengNei;// 省内4
	private List<ArticleTxt> articleTxtlistShiNei;// 市内5
	private List<ArticleTxt> articleTxtlistGuoNei;// 国内6
	private List<ArticleTxt> articleTxtlistCaiJing;// 财经7
	private List<ArticleTxt> articleTxtlistYuLe;// 娱乐8
	private List<ArticleTxt> articleTxtlistQiChe;// 汽车9
	private List<ArticleTxt> articleTxtlistShuMa;// 数码10
	private List<ArticleTxt> articleTxtlistLvYou;// 旅游11
	private List<ArticleTxt> articleTxtlistKeJi;// 科技12
	private ArticleType articleType; // 栏目
	private List<ArticleType> articleTypelist; // 栏目集合
	private ArticleTypeDao articleTypeDao;
	private ArticleTxtDao articleTxtDao;

	public ArticleTxtDao getArticleTxtDao() {
		return articleTxtDao;
	}

	@Resource
	public void setArticleTxtDao(ArticleTxtDao articleTxtDao) {
		this.articleTxtDao = articleTxtDao;
	}

	public ArticleTypeDao getArticleTypeDao() {
		return articleTypeDao;
	}

	@Resource
	public void setArticleTypeDao(ArticleTypeDao articleTypeDao) {
		this.articleTypeDao = articleTypeDao;
	}

	private File image; // 上传图片文件
	private String imageFileName; // 上传图片名称

	public List<ArticleTxt> getArticleTxtPiclist() {
		return articleTxtPiclist;
	}

	public void setArticleTxtPiclist(List<ArticleTxt> articleTxtPiclist) {
		this.articleTxtPiclist = articleTxtPiclist;
	}

	public List<ArticleTxt> getArticleTxtlistShengNei() {
		return articleTxtlistShengNei;
	}

	public void setArticleTxtlistShengNei(
			List<ArticleTxt> articleTxtlistShengNei) {
		this.articleTxtlistShengNei = articleTxtlistShengNei;
	}

	public List<ArticleTxt> getArticleTxtlistShiNei() {
		return articleTxtlistShiNei;
	}

	public void setArticleTxtlistShiNei(List<ArticleTxt> articleTxtlistShiNei) {
		this.articleTxtlistShiNei = articleTxtlistShiNei;
	}

	public List<ArticleTxt> getArticleTxtlistGuoNei() {
		return articleTxtlistGuoNei;
	}

	public void setArticleTxtlistGuoNei(List<ArticleTxt> articleTxtlistGuoNei) {
		this.articleTxtlistGuoNei = articleTxtlistGuoNei;
	}

	public List<ArticleTxt> getArticleTxtlistCaiJing() {
		return articleTxtlistCaiJing;
	}

	public void setArticleTxtlistCaiJing(List<ArticleTxt> articleTxtlistCaiJing) {
		this.articleTxtlistCaiJing = articleTxtlistCaiJing;
	}

	public List<ArticleTxt> getArticleTxtlistYuLe() {
		return articleTxtlistYuLe;
	}

	public void setArticleTxtlistYuLe(List<ArticleTxt> articleTxtlistYuLe) {
		this.articleTxtlistYuLe = articleTxtlistYuLe;
	}

	public List<ArticleTxt> getArticleTxtlistQiChe() {
		return articleTxtlistQiChe;
	}

	public void setArticleTxtlistQiChe(List<ArticleTxt> articleTxtlistQiChe) {
		this.articleTxtlistQiChe = articleTxtlistQiChe;
	}

	public List<ArticleTxt> getArticleTxtlistShuMa() {
		return articleTxtlistShuMa;
	}

	public void setArticleTxtlistShuMa(List<ArticleTxt> articleTxtlistShuMa) {
		this.articleTxtlistShuMa = articleTxtlistShuMa;
	}

	public List<ArticleTxt> getArticleTxtlistLvYou() {
		return articleTxtlistLvYou;
	}

	public void setArticleTxtlistLvYou(List<ArticleTxt> articleTxtlistLvYou) {
		this.articleTxtlistLvYou = articleTxtlistLvYou;
	}

	public List<ArticleTxt> getArticleTxtlistKeJi() {
		return articleTxtlistKeJi;
	}

	public void setArticleTxtlistKeJi(List<ArticleTxt> articleTxtlistKeJi) {
		this.articleTxtlistKeJi = articleTxtlistKeJi;
	}

	public List<ArticleTxt> getArticleTxtlistTiYu() {
		return articleTxtlistTiYu;
	}

	public void setArticleTxtlistTiYu(List<ArticleTxt> articleTxtlistTiYu) {
		this.articleTxtlistTiYu = articleTxtlistTiYu;
	}

	public List<ArticleTxt> getArticleTxtlistJunShi() {
		return articleTxtlistJunShi;
	}

	public void setArticleTxtlistJunShi(List<ArticleTxt> articleTxtlistJunShi) {
		this.articleTxtlistJunShi = articleTxtlistJunShi;
	}

	public ArticleTxt getArticleTxt() {
		return articleTxt;
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

	public void setArticleTxt(ArticleTxt articleTxt) {
		this.articleTxt = articleTxt;
	}

	public List<ArticleTxt> getArticleTxtlist() {
		return articleTxtlist;
	}

	public void setArticleTxtlist(List<ArticleTxt> articleTxtlist) {
		this.articleTxtlist = articleTxtlist;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	// @Override
	public String saveLast() throws Exception {
		if (this.IsLogin()) {
			articleTypelist = articleTypeDao.findAll();
			System.out.println("------->新闻栏目条数" + articleTypelist.size());
			return "saveLast";
		} else {
			return "loginUI";
		}
	}

	public String save() throws Exception {
		if (this.IsLogin()) {
			// ServletActionContext.getServletContext().getRealPath("/img");
			String realpath = "D:/ruanjian/news/WebRoot/img/";
			System.out.println("------->图片保存路径:" + realpath);
			System.out.println("------->图片名称:" + imageFileName);
			if (image != null) {
				File savefile = new File(new File(realpath), imageFileName);
				if (!savefile.getParentFile().exists())
					savefile.getParentFile().mkdirs();
				FileUtils.copyFile(image, savefile);
			}
			articleTxt.setTxtImg(imageFileName);
			articleTxt.setPoint(0);
			articleTxtDao.save(articleTxt);
			return "save";
		} else {
			return "loginUI";
		}
	}

	public String updateui() throws Exception {
		if (this.IsLogin()) {
			System.out.println("------------>文章修改：id：" + id);
			articleTxt = articleTxtDao.findById(id);
			articleTypelist = articleTypeDao.findAll();
			System.out.println("------->新闻栏目条数" + articleTypelist.size());
			return "updateui";
		} else {
			return "loginUI";
		}
	}

	public String update() throws Exception {
		if (this.IsLogin()) {
			articleTxtDao.update(articleTxt);
			return "update";
		} else {
			return "loginUI";
		}
	}

	/**
	 * 后台查询所有文章
	 * 
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception {
		if (this.IsLogin()) {
			articleTxtlist = articleTxtDao.findAll();
			System.out.println("------------>后台文章查询:" + articleTxtlist.size());
			return "list";
		} else {
			return "loginUI";
		}
	}

	public String findAll() throws Exception {
		System.out.println("------------>网站首页");
		articleTxtPiclist = articleTxtDao.find_pic();
		System.out.println("------------>后台文章查询 图片新闻:"
				+ articleTxtPiclist.size());
		articleTxtlistTiYu = articleTxtDao.findAllByTypeName("体育");
		articleTxtlistJunShi = articleTxtDao.findAllByTypeName("军事");
		articleTxtlistShengNei = articleTxtDao.findAllByTypeName("省内");
		articleTxtlistGuoNei = articleTxtDao.findAllByTypeName("国内");
		articleTxtlistShiNei = articleTxtDao.findAllByTypeName("市内");
		articleTxtlistCaiJing = articleTxtDao.findAllByTypeName("财经");
		System.out.println("------------>后台文章查询 财经新闻:"
				+ articleTxtlistCaiJing.size());
		articleTxtlistYuLe = articleTxtDao.findAllByTypeName("娱乐");
		articleTxtlistQiChe = articleTxtDao.findAllByTypeName("汽车");
		articleTxtlistShuMa = articleTxtDao.findAllByTypeName("数码");
		articleTxtlistLvYou = articleTxtDao.findAllByTypeName("旅游");
		System.out.println("------------>后台文章查询 旅游新闻:"
				+ articleTxtlistLvYou.size());
		articleTxtlistKeJi = articleTxtDao.findAllByTypeName("科技");
		// articleTxtlistKeJi = articleTxtDao.find_typename_count("科技",12);
		System.out.println("------------>后台文章查询 科技新闻:"
				+ articleTxtlistKeJi.size());
		return "findAll";
	}

	// 前台文章查看
	public String findById() throws Exception {
		System.out.println("------------>文章查询 id:" + id);
		articleTxt = articleTxtDao.findById(id);
		pre_articleTxt = articleTxtDao.find_byid_pre(id);
		las_articleTxt = articleTxtDao.find_byid_las(id);

		Integer point = articleTxt.getPoint() + 1;
		articleTxt.setPoint(point);
		articleTxtDao.update(articleTxt);

		// String content = articleTxt.getContent().replaceAll(" ",
		// "&nbsp;&nbsp;")
		// .replaceAll("\r", "<br/>");
		// articleTxt.setContent(content);
		// ActionContext.getContext().put("articleTxtlist", articleTxtlist);
		return "findById";
	}

	public String delete() throws Exception {
		if (this.IsLogin()) {
			// String id = ServletActionContext.getRequest().getParameter("id");
			// int id1 = Integer.parseInt(id);
			System.out.println("------------>文章删除：id：" + id);
			articleTxtDao.delete(articleTxtDao.findById(id));
			return "delete";
		} else {
			return "loginUI";
		}
	}

}
