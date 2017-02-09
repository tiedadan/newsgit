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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>太原粮网</title>
<link href="css/PubilcStyle.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.7.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//图片轮换
		jQuery(".slideBox").slide({
			mainCell : ".bd ul",
			effect : "left",
			autoPlay : true
		});
		//滚动
		jQuery(".topLoop").slide({
			mainCell : ".bd ul",
			effect : "topMarquee",
			vis : 4,
			interTime : 60,
			autoPlay : true
		});
	});
</script>
</head>
<body>
<!--我愛你  -->
<!--傻逼  -->
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
				<div class="b_time mt_10">
					<label id="Clock"></label>
					<div class="top_search">
						<form>
							<input type="text" /><input type="submit" class="btn_search"
								value="" />
						</form>
					</div>
				</div>
				<div class="indexRow01">
					<div class="w760 fl mr_10">
						<div class="mt_10">
							<div id="slideBox" class="slideBox fl mr_10">
								<div class="hd">
									<ul>
										<li>1</li>
										<li>2</li>
										<li>3</li>
										<li>4</li>
										<li>5</li>
									</ul>
								</div>
								<div class="bd">
									<ul>
										<!-- 
										<li><img src="images/temp/img01.jpg" />
											<div class="info">
												<a href="#">市粮食局安排部署两节期间市场供应和市场检查工作</a>
											</div></li> -->
											<s:iterator value="articleTxtPiclist">
											   <li><!-- <img src="images/temp/img01.jpg" /> <%=request.getContextPath()%>/-->
											  <img src="<%=request.getContextPath()%>/img/<s:property value="txtImg" />" />
											<div class="info">
												<a
													href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
															value="articleTitle" /></a>
											</div></li>
											</s:iterator>
									</ul>
								</div>
							</div>
							<!--/slideBox-->
							<div class="news fl">
								<div class="tit">
									<span>娱乐</span><a href="#" class="more">更多>></a>
								</div>
								<div class="Col01 NewInfo">
									<h1>慰问困难职工 情暖新春佳节</h1>
									<p>1月23日下午，市粮食局党组成员分六组前往职工工家中慰...</p>
									<ul class="Lis">
										<li><a href="#">市粮食局召开春节期间食品安全保障部署工作<span
												class="date">2014-01-27</span></a></li>
										<li><a href="#">市粮食局安排部署两节期间市场供应和市场...<span
												class="date">2014-01-27</span></a></li>
										<li><a href="#">太原市粮食局圆满完成2014年度党报党刊征...<span
												class="date">2014-01-27</span></a></li>
										<li><a href="#">市粮食局深入学习贯彻党的十八届三中全会精神<span
												class="date">2014-01-27</span></a></li>
										<li><a href="#">太原市粮食局圆满完成2014年度党报党刊征...<span
												class="date">2014-01-27</span></a></li>
									</ul>
								</div>
							</div>
							<!--/news-->
							<div class="clear"></div>
						</div>
<!--省内 国内  市内 -->
						<div class="mt_10">
							<div class="news w393 fl mr_10">
								<div class="slideTxtBox slideTxtBox03">
									<div class="hd">
										<div class=" hdTit fl">
											<span>最新资讯</span>
										</div>
										<ul class="fl">
											<li><a href="">市内</a></li>
											<li><a href="">省内</a></li>
											<li><a href="">国内</a></li>
										</ul>
										<a href="#" class="more02">更多>></a>
										<div class="clear"></div>
									</div>
									<div class="bd area_02_list hi225">
										<ul class="Lis">
											<s:iterator value="articleTxtlistShiNei">
												<li><a
													href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
															value="articleTitle" />...<span class="date"><s:property
																value="createDate" /></span></a></li>
											</s:iterator>
										</ul>
										<ul class="Lis">
											<s:iterator value="articleTxtlistShengNei">
												<li><a
													href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
															value="articleTitle" />...<span class="date"><s:property
																value="createDate" /></span></a></li>
											</s:iterator>
										</ul>
										<ul class="Lis">
											<%-- <li><a href="#">市粮食局召开春节期间食品安全保障部署工作<span
													class="date">2014-01-27</span></a></li> --%>
										<s:iterator value="articleTxtlistGuoNei">
												<li><a
													href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
															value="articleTitle" />...<span class="date"><s:property
																value="createDate" /></span></a></li>
											</s:iterator>
										</ul>
									</div>
								</div>
								<!--/slideTxtBox-->
								<script type="text/javascript">
									jQuery(".slideTxtBox03").slide();
								</script>

							</div>
							<!--/news-->
							<div class="news fl">
								<div class="tit">
									<span>财经</span><a href="#" class="more">更多>></a>
								</div>
								<div class="Col01 hi250">
									<ul class="Lis">
										<img src="images/qk.jpg" width="337" height="50"
											style="margin:4px 0;">
										<s:iterator value="articleTxtlistCaiJing">
												<li><a
													href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
															value="articleTitle" />...<span class="date"><s:property
																value="createDate" /></span></a></li>
											</s:iterator>
									</ul>
								</div>
							</div>
							<!--/news-->
							<div class="clear"></div>
						</div>
						<div class="mt_10">
							<img src="images/zt03.jpg" width="760" height="100">
						</div>
					</div>
					<!--/w760-->


					<div class="w224 fl mt_10 ">
						<div class="tit f_w">
							科技<a href="#" class="more">更多>></a>
						</div>
						<div class="area hi360">
							<ul class="Lis">
							<s:iterator value="articleTxtlistKeJi">
												<li><a
													href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
															value="articleTitle" />...</a></li>
											</s:iterator>
							</ul>
						</div>
						<!--/area-->
						<div class="banner">
							<a href="#"><img src="images/zt01.jpg" width="224"
								height="115"></a> <a href="#"><img src="images/zt02.jpg"
								width="224" height="100"></a>
						</div>
					</div>
					<!--/w224-->
					<div class=" clear"></div>
				</div>
				<!--/indexRow01-->

				<div class="indexRow02 mt_10">
					<div class="news w393 fl mr_10">
						<div class="slideTxtBox">
							<div class="hd">
								<ul>
									<li><a href="">体育</a></li>
									<li><a href="">军事</a></li>
								</ul>
								<a href="#" class="more02">更多>></a>
							</div>
							<div class="bd area_02_list hi225">
								<ul class="Lis">
									<s:iterator value="articleTxtlistTiYu">
										<li><a
											href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
													value="articleTitle" />...<span class="date"><s:property
														value="createDate" /></span></a></li>
									</s:iterator>
								</ul>
								<ul class="Lis">
									<s:iterator value="articleTxtlistJunShi">
										<li><a
											href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
													value="articleTitle" />...<span class="date"><s:property
														value="createDate" /></span></a></li>
									</s:iterator>
								</ul>
							</div>
						</div>
						<!--/slideTxtBox-->
						<script type="text/javascript">
							jQuery(".slideTxtBox").slide();
						</script>


					</div>
					<!--/news-->
					<div class="news fl mr_10">

						<div class="slideTxtBox slideTxtBox02">
							<div class="hd">
								<ul>
									<li><a href="">汽车</a></li>
									<li><a href="">数码</a></li>
								</ul>
								<a href="#" class="more02">更多>></a>
							</div>
							<div class="bd area_02_list hi225">
								<ul class="Lis">
									<s:iterator value="articleTxtlistQiChe">
										<li><a
											href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
													value="articleTitle" />...<span class="date"><s:property
														value="createDate" /></span></a></li>
									</s:iterator>
								</ul>
								<ul class="Lis">
									<s:iterator value="articleTxtlistShuMa">
										<li><a
											href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
													value="articleTitle" />...<span class="date"><s:property
														value="createDate" /></span></a></li>
									</s:iterator>
								</ul>
							</div>
						</div>
						<!--/slideTxtBox-->
						<script type="text/javascript">
							jQuery(".slideTxtBox02").slide();
						</script>



					</div>
					<!--/news-->
					<div class="fl w224">
						<div class="tit f_w">
							旅游<a href="#" class="more">更多>></a>
						</div>
						<div class="area hi250 ">
							<ul class="Lis">
								<s:iterator value="articleTxtlistLvYou">
									<li><a
										href="articleTxt_findById?id=<s:property value="articleId" />"><s:property
												value="articleTitle" />...</a></li>
								</s:iterator>
							</ul>
						</div>
						<!--/area-->
					</div>
				</div>
				<!--/indexRow02-->
			</div>
			<!--/allwidth-->
			<div class="foot mt_10">
				<p>
					版权所有：太原粮食信息中心<br> 联系电话： 0351-3071709 3071710
					邮箱：tygrain@sina.com<br> 备案号：晋ICP12001118<br> <a
						href="admin/login.html">后台管理</a>
				</p>
			</div>
			<script>
				Clock.innerHTML = getCurrentTime();
				setInterval("Clock.innerHTML=getCurrentTime()", 1000);
				function getCurrentTime() {
					var currentTimes = "";
					var xingq = "";
					var numxq = new Date().getDay();
					switch (numxq) {
					case 0:
						xingq = "日";
						break;
					case 1:
						xingq = "一";
						break;
					case 2:
						xingq = "二";
						break;
					case 3:
						xingq = "三";
						break;
					case 4:
						xingq = "四";
						break;
					case 5:
						xingq = "五";
						break;
					case 6:
						xingq = "六";
						break;
					default:
						break;
					}
					currentTimes = new Date().getFullYear() + '年'
							+ (new Date().getMonth() + 1) + '月'
							+ new Date().getDate() + '日 ' + '星期' + xingq
							+ '&nbsp;&nbsp;&nbsp;'
							+ new Date().toLocaleTimeString();
					return currentTimes;
				}
			</script>


		</center>
	</div>
	<!--/wrap-->
</body>
</html>

