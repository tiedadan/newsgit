<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>CMS管理系统UI框架v1.0_登录</title>
<%@ include file="/common/common.jspf"%>
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
	//隐藏图片上床
	function showhidden() {
		if ($("#radio1").css("checked") == "true") {
			$("#pic_div_show").css("hidden") == "hidden";
		} else {
			//$("#pic_div_show").css("hidden") == "hidden";
		}

	}
	function watch1() {
		$("#pic_div_show").hide();
	}
	function watch2() {
		$("#pic_div_show").show();
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
			<form action="articleTxt_save" enctype="multipart/form-data"
				method="post">
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
							<input name="articleTxt.articleTitle" type="text"
								class="txt_box big " />
							<!-- <input type="checkbox" id="checkbox1" class="checkbox" /><label for="checkbox1">外部链接</label> -->
						</p>
						<p>
							<span class="title_txt">栏目：</span>
						</p>
						<p>
							<%-- <select class="select error"><option>请选择</option></select><span class="error_info">请选择一项!</span> --%>

							<select name="articleTxt.typeName" id="" class="select error">
								<option value=""></option>
								<s:iterator value="articleTypelist">
									<option value="${typeName}">
										<%-- <s:property value="typeName" /> --%> ${typeName}
									</option>
								</s:iterator>
							</select><span class="error_info">请选择一项!</span>
						</p>

						<p>
							<span class="title_txt">信息正文：</span>
						</p>
						<p>
							<textarea id="textarea1" class="textarea big"
								name="articleTxt.content"></textarea>
								<script type="text/javascript">CKEDITOR.replace('articleTxt.content');</script>
						</p>
						<!--  <p>
                            <span class="title_txt">副标题：</span>
                        </p>
                        <p>
                            <input type="text" class="txt_box big" />
                        </p>
                        <p>
                            <span class="title_txt">简短标题：</span><span class="title_txt">标题颜色：</span>
                        </p>
                        <p>
                            <input type="text" class="txt_box" />　<input type="color" class="txt_box short" /><input type="checkbox" id="checkbox2" class="checkbox" /><label for="checkbox2">标题加粗</label>
                        </p>
                        <p>
                            <span class="title_txt">备注信息：</span>
                        </p>
                        <p>
                            <textarea id="textarea" class="textarea big" ></textarea>
                        </p> -->
						<p>
							<label>（是否为图片文章）</label> <input type="radio" id="radio1"
								name="articleTxt.isPic" class="checkbox" value="1" onclick="watch2()" /> <label
								for="radio1">是</label> &nbsp;&nbsp; <input type="radio"
								id="radio2" name="articleTxt.isPic" value="0" class="checkbox" checked="true"
								onclick="watch1()" /> <label for="radio2">否</label>
						</p>
						<div id="pic_div_show" class="search_box" hidden="hidden">
							<p>
								<span class="title_txt">文章图片：</span>
							</p>
							<p>
								<input type="file" class="txt_box" name="image" />
							</p>
						</div>
						<p>
							<%-- <span class="title_txt">文章作者：</span> --%>
							<span class="title_txt">文章来源：</span>
						</p>
						<p>
							<input type="text" name="articleTxt.articleFrom" class="txt_box" />
							<%--  <select class="select short"><option>请选择</option></select>
                            　　<span class="width20"></span>
                            <input type="text" class="txt_box short" />
                            <select class="select short"><option>请选择</option></select> --%>
						</p>
						<p>
							<span class="title_txt">文章作者：</span><span class="title_txt">发布时间：</span>
						</p>
						<p>
							<input name="articleTxt.articleAuthor" type="text"
								class="txt_box" /> <span class="width10"></span> <input
								name="articleTxt.createDate" type="text"
								class="txt_box short Wdate" onClick="WdatePicker()" /><label>（留空为当前时间）</label>
						</p>
						<!-- <p>
                            <span class="title_txt">关键字：</span>
                        </p>
                        <p>
                            <input type="text" class="txt_box big" /><label>（各关键词之间用英文逗号分隔）</label>
                        </p>
                        <p>
                            <span class="title_txt">内容类型：</span>
                        </p>
                        <p>
                            <select class="select"><option>请选择</option></select>
                        </p>
                       
                        <p>
                            <span class="title_txt">多媒体：</span><span class="title_txt">播放器：</span>
                        </p>
                        <p>
                            <input type="file" class="txt_box" />
                            <span class="width10"></span>
                            <input type="radio" id="radio1" name="radio1" class="checkbox" checked /><label for="radio1">WM</label>
                    &nbsp;&nbsp;
                    <input type="radio" id="radio2" name="radio1" class="checkbox" /><label for="radio2">REAL</label>
                    &nbsp;&nbsp;
                    <input type="radio" id="radio3" name="radio1" class="checkbox" /><label for="radio3">FLV</label>
                    &nbsp;&nbsp;
                    <input type="radio" id="radio4" name="radio1" class="checkbox" /><label for="radio4">FLASH</label>
                        </p>
                        <p>
                            <span>信息公开：</span><input type="checkbox" id="checkbox3" class="checkbox" />
                        </p> -->


					</div>
					<div class="btn_group2">
						<a href="javascript:history.back(-1)" class="btn_goback btn_gray">返回</a>
						<!--   <input type="button" class="btn_save btn_green" value="保存" /> -->
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

