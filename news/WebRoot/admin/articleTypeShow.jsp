<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"  >
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
    <title>帷美美容会所管理信息系统</title>
    <link href="css/CommonStyle.css" rel="stylesheet" type="text/css" />
    <link href="css/PubilcStyle.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.7.js"></script>
    <script src="js/changerows.js"></script>
     <script type="text/javascript">
    function chk() {
		var obj = document.getElementsByName('test'); //选择所有name="'test'"的对象，返回数组 
		//取到对象数组后，我们来循环检测它是不是被选中 
		var s = '';
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked)
				s += obj[i].value + ','; //如果选中，将value添加到变量s中 
		}

		alert("确定要删除吗？");

		$.post("projectSet1Action", {
			names : s

		}, function(response) {
			$("#ce_3").html(response);
		});

	}
	</script>
<style>
#ce_3 {
	
}
</style>
</head>
<body id="ce_3">
    <center>
    <!--allwidth -->
        <div class="allwidth">
            <div class="nav_bar">
                <a href="index.html">主页</a>
              
            </div>
            <!--列表-->
            <div class="list_div">
                <!--操作-->
                <div class="operation_div">
                    <div class="f_left">
                        服务项目信息表
                        <!--<form>
                        <input type="text" class="txt_box" /> <input type="button" class="btn_search" value="搜 索" />
                        </form>-->
                    </div>
                    <div class="f_right"><a href="projectAdd.jsp" class="btn_add">新增服务项目</a><input
						type="button" value="删除所选" class="btn_del" id="" onclick="chk()" /></div>
                    <div class="clear"></div>
                </div>
                <!--/操作-->
                <table border="0" cellspacing="0" class="mrTable" id="list">
                <tr>
                <th style="width:5%;"><input type="checkbox" onclick="GetAllCheckBox(this)" /></th>
                <th style="width:8%;">文章ID</th>
                <th style="width:auto;">文章标题</th>
                <th align="center" style="width: 29%;">操作</th>
            </tr>
            
            <s:iterator value="articleTypelist">
            <tr><td><input type="checkbox" name="test"  value="<s:property value="proId" />"/></td>
                <td>
                   <s:property value="typeId" />
                </td>
                <td>
                   <s:property value="typeName" />
                </td>
                <td align="center">
                    <a href="articleType_delete?id=<s:property value="typeId" />" class="btn_small_del" title="删除"></a>
                    <a href="articleType_updateui?id=<s:property value="typeId" />" class="btn_small_update" title="修改"></a>
                </td>
            </tr>
            </s:iterator>
            </table>
                <!--分页-->
                <div class="pageList">
                    <div class="f_left">共<s:property value="pageAll" />条</div>
                    <div class="f_right">
                        <a href="projectFindAllAction.action" title="首页"><<</a><a href="projectFindLastAction.action" title="上一页"><</a><a href="projectFindNextAction.action" title="下一页">></a><a href="projectFindEndAction.action" title="尾页">>></a>
                      <s:property value="pageNumber" />页 /共<s:property value="pageCount" />页   
                    </div>
                    <div class="clear"></div>
                </div>
                <!--/分页-->
        <script language="javascript">
            //奇偶行变色senfe("表格名称","奇数行背景f7feff","偶数行背景","鼠标经过背景"--,"点击后背景");
            senfe("list", "oddColor", "evenColor", "hoverClass");
        </script>
    
            </div>
            <!--/列表-->
        </div>  
    <!--/allwidth -->
    </center>

</body>
</html>
