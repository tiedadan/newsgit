package com.bjsxt.registration.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class ArticleTxt {
	private int articleId;
	private Integer pre_articleId;
	private Integer las_articleId;
	/** 标题 */
	private String articleTitle;
	public Integer getPre_articleId() {
		return pre_articleId;
	}

	public void setPre_articleId(Integer pre_articleId) {
		this.pre_articleId = pre_articleId;
	}

	public Integer getLas_articleId() {
		return las_articleId;
	}

	public void setLas_articleId(Integer las_articleId) {
		this.las_articleId = las_articleId;
	}

	/** 文章来源 */
	private String articleFrom;
	/** 文章来源链接 */
	private String articleFromUrl;
	/** 文章作者 */
	private String articleAuthor;
	/** 文章发布时间 */
	private String createDate;
	/** 文章类别 */
	private int typeId;
	/** 文章类别 */
	private String typeName;
	private String content;//新闻内容
	/** 是否为图片新闻 图片：1  文字：0 */
	private Integer isPic;
	private Integer point;//点击量
	public Integer getPoint() {
		return point;
	}

	public void setPoint(Integer point) {
		this.point = point;
	}

	/** 文章图片 */
	private String txtImg;
	@Id
	@GeneratedValue
	public int getArticleId() {
		return articleId;
	}

	public String getTxtImg() {
		return txtImg;
	}

	public void setTxtImg(String txtImg) {
		this.txtImg = txtImg;
	}

	public Integer getIsPic() {
		return isPic;
	}

	public void setIsPic(Integer isPic) {
		this.isPic = isPic;
	}
	@Column(name = "content" ,columnDefinition="TEXT") 
//	@Column(columnDefinition="TEXT")  
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleFrom() {
		return articleFrom;
	}

	public void setArticleFrom(String articleFrom) {
		this.articleFrom = articleFrom;
	}

	public String getArticleFromUrl() {
		return articleFromUrl;
	}

	public void setArticleFromUrl(String articleFromUrl) {
		this.articleFromUrl = articleFromUrl;
	}

	public String getArticleAuthor() {
		return articleAuthor;
	}

	public void setArticleAuthor(String articleAuthor) {
		this.articleAuthor = articleAuthor;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

}
