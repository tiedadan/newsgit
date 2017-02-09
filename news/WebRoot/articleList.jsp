<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>太原粮网</title>
<link href="css/PubilcStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="wrap">
		<center>
			<div class="b_top">
				<div class="top">
					<span class="bt_l">欢迎访问太原粮网</span> <span class="bt_r"><a
						onClick="javascript:try{this.style.behavior='url(#default#homepage)';this.setHomePage(location.href);}catch(e){alert('您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页.');}"
						href="javascript:;">设为首页</a><a class="bt_r02"
						onClick="try{window.external.AddFavorite(location.href,document.title);}catch(e){alert('加入收藏失败，请使用Ctrl+D进行添加,或手动在浏览器里进行设置.');
}"
						href="javascript:;">加入收藏</a></span>
				</div>
			</div>
			<!--/b_top-->
			<div class="allwidth">
				<div class="head">
					<div class="logo"></div>
				</div>
				<div class="menu">
					<a href="articleTxt_findAll.action">网站首页</a><a href="#">工作动态</a><a href="#">分析预测</a><a
						href="#">市场行情</a><a href="#">粮网期刊</a><a href="#">粮食政策</a><a
						href="#">法规文件</a><a href="#">仓储管理</a><a href="#">行业知识</a><a
						href="#">供求信息</a><a href="#">关于我们</a>
				</div>
				<div class="b_time mt_10 PageNow">当前位置：首页&nbsp;/&nbsp;<s:property value="articleTxt.typeName" /></div>

				<div class="mt_10">

					<div class="bottom contentPage">
						<div class="cont_title"><s:property value="articleTxt.articleTitle" /></div>
						<div class="news_about">
							来源：<s:property value="articleTxt.articleFrom" /><span class=" ml_20">&nbsp;</span> 作者：<s:property value="articleTxt.articleAuthor" /><span
								class=" ml_20">&nbsp;</span> 时间：<s:property value="articleTxt.createDate" /><span class=" ml_20">&nbsp;</span>
							点击：<s:property value="articleTxt.point" />
						</div>
						<div class="news_info">
							<!--填充文字 start-->
							<%--  <s:form action="role_%{ id == null ? 'add' : 'edit' }"> --%>
							<s:if test="%{ articleTxt.isPic == 1 ? true : false }"><p class="tex_ali">
							<img src="<%=request.getContextPath()%>/img/<s:property value="articleTxt.txtImg" />" width="400px" height="380px"/>
								<!-- <img src="images/temp/img01.jpg" width="660" height="438"> -->
							</p></s:if>
							<s:property escape="false" value="articleTxt.content" />
						</div>
						<!--/news_info-->
						<div class="news_updown mt_20">
							<div class="fl NetBac">
								<a class="" href="articleTxt_findById?id=<s:property value="pre_articleTxt.articleId" />"><span>【上一篇】</span><s:property  value="pre_articleTxt.articleTitle" /></a><br>
								<a class="" href="articleTxt_findById?id=<s:property value="las_articleTxt.articleId" />"><span>【下一篇】</span><s:property escape="false" value="las_articleTxt.articleTitle" /></a>
							</div>
							<div class="fr chap">
								<a href="#" class="chap01">【打印】</a><a href="#" class="chap02">【关闭】</a><a
									href="#" class="chap03">【返回顶部】</a>
							</div>
							<div class="clear"></div>
						</div>
					</div>

				</div>
			</div>
			<!--/allwidth-->
			<div class="foot mt_10">
				<p>
					版权所有：太原粮食信息中心<br> 联系电话： 0351-3071709 3071710
					邮箱：tygrain@sina.com<br> 备案号：晋ICP12001118
				</p>
			</div>
		</center>
	</div>
	<!--/wrap-->
</body>
</html>


