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
   
</head>
<body>
    <center>
    <!--allwidth -->
        <div class="allwidth">
            <div class="nav_bar">
                <a href="index.html">主页</a> / <a href="列表.html">列表页</a> / <span></span>
            </div>
            <!--表单-->
                <s:form action="articleType_%{articleType == null ? 'save' : 'update'}" method="post">
                   <input type="text" name="articleType.typeId" value="${articleType.typeId}">
                    <div class="form">
                    <div class="top_title">基本表单</div>
                    <div class="form_page">
                          <table class="form_table"><tr>
                            <td class="td_lable">栏目：<span class="mandatory">*</span></td><td><input type="text" name="articleType.typeName" value="${articleType.typeName}"class="txt_box error" /><span class="error_info">请输入栏目名称!</span></td>
                        </tr></table>
                    </div>
                    <div class="btn_group2">
                        <a href="javascript:history.back(-1)" class="btn_goback btn_gray">返回</a>
                      <!--   <input type="button" class="btn_save btn_green" value="保存" /> -->
                        <input type="submit" class="btn_submit btn_blue" value="提交" />
                    </div>
                    </div>
                </s:form>
            <!--/表单-->
        </div>  
    <!--/allwidth -->
    </center>

    <!--弹出层 start-->

    <!--弹出层 end-->

</body>
</html>

