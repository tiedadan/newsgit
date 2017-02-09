<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <table border="0" cellspacing="0" class="mrTable" id="list">
					<tr>
						<th style="width:5%;"><input type="checkbox"
							onclick="GetAllCheckBox(this)" /></th>
						<th style="width:5%;">编号</th>
						<th style="width:10%;">用户名</th>
						<th style="width:10%;">密码</th>
						<th align="center" style="width:15%;">操作</th>
					</tr>
					<s:iterator value="userlist">
						<tr>
							<td><input type="checkbox" name="test"  value="<s:property value="shoId" />"/></td>
							<td><s:property value="id" /></td>
							<td><s:property value="username" /></td>
							<td><s:property value="password" /></td>
							<td align="center"><a
								href="shopingDeleteAction?id=<s:property value="id" />"
								class="btn_small_del" title="删除"></a> <a
								href="shopingUpdateAction?id=<s:property value="id" />"
								class="btn_small_update" title="修改"></a></td>
						</tr>
					</s:iterator>
				</table>
  </body>
</html>
