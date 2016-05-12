<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../css/lrtk.css" type="text/css"></link>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script>
	var xmlHttp;
	function createXMLHttp() {
		if (window.XMLHttpRequest) {
			xmlHttp = new XMLHttpRequest();
		} else {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	function showMsg() {
		var x = document.getElementById("proOrCity").value;
		createXMLHttp(); // 创建XMLHttp对象
		xmlHttp.open("POST", "reportTable.action?proOrCity=" + x);
		// 设置操作的回调函数
		xmlHttp.onreadystatechange = showMsgCallback;
		xmlHttp.send(null);
	}
	function showMsgCallback() { // 回调操作函数
		if (xmlHttp.readyState == 4) { // 调用完成
			if (xmlHttp.status == 200) { // HTTP状态码操作正常
				var text = xmlHttp.responseText;
				document.getElementById("table").innerHTML = text;
			}
		}
	}
</script>

<title>无标题文档</title>
<style type="text/css">
body {
	margin: 0;
}

#all {
	width: 100%;
}

#head {
	
}

#candan {
	margin-left: 20px;
}

#zsgc {
	margin-left: 80px;
	width: 900px;
	height: 200px;
	overflow: auto;
}

#apDiv1 {
	position: absolute;
	left: 252px;
	top: 270px;
	width: 1050px;
	height: 500px;
	z-index: 1;
	background-color: #FFF;
}
</style>
</head>

<body>

	<div id="all">
		<div id="head">
			<table width="100%" height="210px" background="../images/hahaha.jpg"
				border="0" rules="none" cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="6">&nbsp;&nbsp;&nbsp;&nbsp;<img
						src="../images/logo1.png" width="200" height="100" />
					</td>
					<td width="3%" rowspan="2"><img
						src="../images/u=1085408792,3256465306&fm=116&gp=0.jpg" width="32"
						height="24" />
					</td>
					<td width="16%" rowspan="2"><a href="admin.jsp">admin</a>&nbsp;<a
						href="adminloginout.action">退出</a>
					</td>
				</tr>


			</table>
		</div>

		<p>&nbsp;</p>

		<div id="candan">
			<div id="firstpane" class="menu_list">
				<p class="menu_head current">用户管理</p>
				<div style="display:block" class=menu_body>
					<a href="addCustomer.jsp">增加用户</a> <a href="admin.jsp">删除用户</a> <a
						href="admin.jsp">修改用户</a> <a href="admin.jsp">查找用户</a>

				</div>
				<p class="menu_head">商品管理</p>
				<div style="display:none" class=menu_body>
					<a href="addProduct.jsp">增加商品</a> <a href="queryProduct.jsp">删除商品</a>
					<a href="queryProduct.jsp">修改商品</a> <a href="queryProduct.jsp">查看商品</a>
				</div>
				<p class="menu_head">导出报表</p>
				<div style="display:none" class=menu_body>
					<a href="reportTable.jsp">用户数据报表</a> <a href="reportMoney.jsp">财务报表</a>

				</div>
				<p class="menu_head">系统管理</p>
				<div style="display:none" class=menu_body>
					<a href="adminModifyPassword.jsp">修改密码</a>
				</div>
			</div>

			<div id="apDiv1">


				<table width="1163" border="0">
					<tr>
						<td width="958" height="35" align="center"><form id="form1"
								name="form1" method="post" action="queryCustomer.action">

								<p>
									按条件筛选：<select style="width:100px; height:25px;"
										name="proOrCity" id="proOrCity">
										<option value="province">省</option>
										<option value="city">市</option>
									</select> <input type="button" style="width:100px; height:25px;"
										name="button2" id="button2" value="查询" onclick="showMsg()" />
									<input type="submit" style="width:100px; height:25px;"
										name="button3" id="button3" value="导出到excel" />
								</p>
								<p>&nbsp;</p>
							</form></td>
					</tr>
				</table>


				<div>
					<span id="table">
				</div>

			</div>

		</div>
		<script type=text/javascript>
			$(document).ready(
					function() {
						$("#firstpane .menu_body:eq(0)").show();
						$("#firstpane p.menu_head").click(
								function() {
									$(this).addClass("current").next(
											"div.menu_body").slideToggle(300)
											.siblings("div.menu_body").slideUp(
													"slow");
									$(this).siblings().removeClass("current");
								});
						$("#secondpane .menu_body:eq(0)").show();
						$("#secondpane p.menu_head").mouseover(
								function() {
									$(this).addClass("current").next(
											"div.menu_body").slideDown(500)
											.siblings("div.menu_body").slideUp(
													"slow");
									$(this).siblings().removeClass("current");
								});

					});
		</script>

	</div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>

	</div>
</body>
</html>

