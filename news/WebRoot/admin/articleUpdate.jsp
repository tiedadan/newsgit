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
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>CMS管理系统UI框架v1.0_登录</title>
<link href="css/CommonStyle.css" rel="stylesheet" type="text/css" />
<link href="js/Prompt/skin/theme/ymPrompt.css" rel="stylesheet" />
<script src="js/My97DatePicker/WdatePicker.js"></script>
<link href="css/PubilcStyle.css" rel="stylesheet" type="text/css" />
<script src="js/Prompt/ymPrompt_Ex.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script>
	//搜索框隐藏和显示
	function showSearch() {
		if ($(".search_box").css("display") == "block") {
			$(".search_box").slideUp();
		} else {
			$(".search_box").slideDown();
		}
	}
	//隐藏搜索框
	function hideSearch() {
		$(".search_box").slideUp();
	}
</script>

</head>
<body>
	<center>
		<!--allwidth -->
		<div class="allwidth">
			<div class="nav_bar">
				<a href="index.html">主页</a> / <a href="列表.html">列表页</a> / <span></span>
			</div>
			<!--表单-->
			<form action="articleTxt_update" enctype="multipart/form-data" method="post">
				<s:hidden name="articleTxt.articleId"></s:hidden> 
				<div class="form">
					<div class="top_title">基本表单</div>
					<div class="form_page">
						<%--  <p>
                            <span class="title_txt">栏目：</span>
                        </p> --%>

						<p>
							<span class="title_txt">标题：</span>
						</p>
						<p>
							<input name="articleTxt.articleTitle" type="text" value="<s:property value="articleTxt.articleTitle" />"
								class="txt_box big " />
						</p>
						<p>
							<span class="title_txt">栏目：</span>
						</p>
						<p>
							<select name="articleTxt.typeName" id="" class="select error">
								<option value="<s:property value="articleTxt.typeName" />"><s:property value="articleTxt.typeName" /></option>
								<s:iterator value="articleTypelist">
									<option value="<s:property value="typeName" />">
										<s:property value="typeName" />
									</option>
								</s:iterator>
							</select><span class="error_info">请选择一项!</span>
						</p>

						<p>
							<span class="title_txt">信息正文：</span>
						</p>
						<p>
							<textarea id="textarea1" class="textarea big"
								name="articleTxt.content"><s:property value="articleTxt.content" /></textarea>
								<script type="text/javascript">CKEDITOR.replace('articleTxt.content');</script>
						</p>
						<p>
							<label>（是否为图片文章）</label> 
							<input type="radio" id="radio1"
							name="articeTxt.isPic" value="<s:property value="articleTxt.isPic" />" checked="%{articeTxt.isPic == 1 ? 'true' : 'false'}" class="checkbox" 
							onclick="showSearch()" /><label for="radio1">是</label> &nbsp;&nbsp; 
							<input type="radio" id="radio2" 
							name="articeTxt.isPic"  value="<s:property value="articleTxt.isPic" />" checked="%{articeTxt.isPic == 0 ? 'true' : 'false'}" class="checkbox"
							onclick="showSearch()" /><label for="radio2">否</label>
						</p>
						 <s:hidden name="articleTxt.txtImg"></s:hidden> 
						<%-- <div class="search_box">
						
							<p>
								<span class="title_txt">文章图片：</span>
							</p>
							<p>
								<input type="file" class="txt_box" name="image" />
							</p>
						</div> --%>
						<p>
							<span class="title_txt">文章来源：</span>
						</p>
						<p>
							<input type="text" name="articleTxt.articleFrom" value="<s:property value="articleTxt.articleFrom" />" class="txt_box" />
						</p>
						<p>
							<span class="title_txt">文章作者：</span><span class="title_txt">发布时间：</span>
						</p>
						<p>
							<input name="articleTxt.articleAuthor" value="<s:property value="articleTxt.articleAuthor"/>" type="text"
								class="txt_box" /> <span class="width10"></span> <input
								name="articleTxt.createDate" type="text"
								class="txt_box short Wdate" value="<s:property value="articleTxt.createDate" />" onClick="WdatePicker()" /><label>（留空为当前时间）</label>
						</p>
					</div>
					<div class="btn_group2">
						<a href="javascript:history.back(-1)" class="btn_goback btn_gray">返回</a>
						<input type="submit" class="btn_submit btn_blue" value="提交" />
					</div>
				</div>
			</form>
			<!--/表单-->
		</div>
		<!--/allwidth -->
	</center>
	<!--弹出层 start-->
	<!--弹出层 end-->
</body>
</html>

