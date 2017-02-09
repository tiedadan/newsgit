<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html style="overflow:hidden;">
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
    <title>CMS管理系统UI框架v1.0_登录</title>
    <link href="css/CommonStyle.css" rel="stylesheet" type="text/css" />
    <link href="css/PubilcStyle.css" rel="stylesheet" type="text/css" />
    <link href="js/Prompt/skin/theme/ymPrompt.css" rel="stylesheet" />
    <script src="js/Prompt/ymPrompt.js"></script>
    <script src="js/jquery-1.7.js"></script>
    <script>
        $(document).ready(function () {
            getIframeSize();
            leftMenu();
        });
        $(window).resize(function () {
            getIframeSize();
        });
        function getIframeSize() {
            $(".b_body").height($(window).height() - $(".top").height() - $(".top_menu").height() - $(".foot").height() - 5);
            $("#iframe_left").height($(".b_body").height() - 20);
            $("#iframe_right").height($("#iframe_left").height());
            $("#iframe_right").width($(window).width() - $("#iframe_left").width()-40);
        }
        function leftMenu() {
            var img_src = "images/";//图片存放路径
            //dl
            $(".l_menu dl").hover(
                function () {
                    if ($(this).attr("class") != "on") {
                        $(this).children("dt").find("img").attr("src", img_src + $(this).attr("id") + "_on" + ".gif");
                }
                },
                function () {
                    if ($(this).attr("class") != "on") {
                        $(this).children("dt").find("img").attr("src", img_src + $(this).attr("id") + ".gif");
                    }
                }
            );
            //一级菜单
            $(".l_menu dl dt").click(
                function () {
                    if ($(this).parent("dl").children("dd").css("display") == "none") {
                        $(".l_menu dl").removeClass("on");
                        $(this).parent("dl").addClass("on");
                        jQuery.each($(".l_menu dl"), function () {
                            $(this).children("dt").find("img").attr("src", img_src + $(this).attr("id") + ".gif");
                            //$(this).children("dd").hide();
                        })
                        $(this).find("img").attr("src", img_src + $(this).parent("dl").attr("id") + "_on" + ".gif");
                        $(this).parent("dl").children("dd").show();
                    } else {
                        $(this).parent("dl").removeClass("on");
                        $(this).find("img").attr("src", img_src + $(this).parent("dl").attr("id") + ".gif");
                        $(this).parent("dl").children("dd").hide();

                    }
                }
            );
            //二级菜单
            $(".l_menu dl dd ol").click(function () {
                
                if ($(this).next("ul").css("display")!="block") {
                    $(".l_menu dl dd div").removeClass("on");
                    $(this).parent("div").addClass("on");
                    $(this).next("ul").show();
                } else {
                    $(this).parent("div").removeClass("on");
                    $(this).next("ul").hide();
                }
                
            });
            //三级
            $(".l_menu dl dd ul li").click(function () {
                if ($(this).attr("class") != "on") {
                    $(".l_menu dl dd ul li").removeClass("on");
                    $(this).addClass("on");
                    $(".l_menu dl dd div").removeClass("on");
                    $(this).parent().parent("div").addClass("on");
                } else {
                   
                }
            });



        }
    </script>
</head>
<body style="overflow:hidden;">
    <center>
    <!--allwidth -->
        <div class="allwidth">
            <div class="top">
                <div class="top_info"><span class="bigfont">CMS </span>猛码科技</div>
                <div class="user_exit">
                    <span><a href="#" class="user_name">管理员：<%=session.getAttribute("name")%> </a></span><span><a href="login.html" class="btn_exit">退 出</a></span>
                </div>
            </div>
           
            <div class="b_body">
                <div id="iframe_left" class="iframe_left l_menu">
                    <div class="height5"></div>
                    <dl id="left_menu1">
                        <dt><a href="home.html" target="main"><img src="images/left_menu1.gif" />我的桌面</a></dt>
                        <dd></dd>
                    </dl>
                    <dl id="left_menu1">
                        <dt class="more"><img src="images/left_menu2.gif" />文章管理</dt>
                        <dd>
                            <div><ol><a href="articleTxt_saveLast.action" target="main"><span class="round"></span>添加文章</a></ol></div>
                            <div><ol><a href="articleTxt_list.action" target="main"><span class="round"></span>文章查询</a></ol></div>
                        </dd>
                    </dl>
                  <dl id="left_menu2">
                        <dt class="more"><img src="images/left_menu2.gif" />文章栏目管理</dt>
                        <dd>
                            <div><ol><a href="articleTypeAdd.jsp" target="main"><span class="round"></span>添加栏目</a></ol></div>
                            <div><ol><a href="articleType_findAll.action" target="main"><span class="round"></span>栏目查询</a></ol></div>
                        </dd>
                    </dl>
                    <div class="height5"></div>
                </div>
                <div id="iframe_right" class="iframe_right">
                    <iframe src="home.html" id="main" name="main" frameBorder=0 scrolling=auto width="100%" height="100%"  ></iframe>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <div class="foot">&copy;版权归猛码公司所有</div>
        </div>  
    <!--/allwidth -->
    </center>

</body>
</html>
