<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath()%>/css/lrtk.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script>
	var arr = new Array();
	arr[0] = "手机,三星,iPhone,魅族"
	arr[1] = "黄浦,卢湾,徐汇,长宁,静安,普陀,闸北,虹口,杨浦,闵行,宝山,嘉定,浦东,金山,松江,青浦,南汇,奉贤,崇明"
	arr[2] = "和平,东丽,河东,西青,河西,津南,南开,北辰,河北,武清,红挢,塘沽,汉沽,大港,宁河,静海,宝坻,蓟县"

	function init() {
		var city = document.getElementById("select2");
		var cityArr = arr[0].split(",");
		for ( var i = 0; i < cityArr.length; i++) {
			city[i] = new Option(cityArr[i], cityArr[i]);
		}
	}

	function getCity() {
		var pro = document.getElementById("select");
		var city = document.getElementById("select2");
		var index = pro.selectedIndex;
		var cityArr = arr[index].split(",");

		city.length = 0;
		//将城市数组中的值填充到城市下拉框中
		for ( var i = 0; i < cityArr.length; i++) {
			city[i] = new Option(cityArr[i], cityArr[i]);
		}
	}

	$(document).ready(
			function() {
				$("#firstpane .menu_body:eq(0)").show();
				$("#firstpane p.menu_head").click(
						function() {
							$(this).addClass("current").next("div.menu_body")
									.slideToggle(300).siblings("div.menu_body")
									.slideUp("slow");
							$(this).siblings().removeClass("current");
						});
				$("#secondpane .menu_body:eq(0)").show();
				$("#secondpane p.menu_head").mouseover(
						function() {
							$(this).addClass("current").next("div.menu_body")
									.slideDown(500).siblings("div.menu_body")
									.slideUp("slow");
							$(this).siblings().removeClass("current");
						});

			});
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

<body onload="init()">

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
						<td width="958" height="35"><form id="form1" name="form1"
								method="post" action="allProduct.action">


								<p>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									商品名： <input type="text" style="height:23px;"
										name="productInfo.productName" id="textfield" /> <input
										type="submit" name="button" id="button" value="查询" /> <input
										type="button" name="button2" id="button2" value="增加商品"
										onclick="javascript:window.location.href='addProduct.jsp'" />
									<input type="submit" name="button3" id="button3"
										value="导出到excel" />
								</p>
							</form></td>
					</tr>
				</table>

				<div id="zsgc">
					<table width="838" border="1" cellpadding="0" cellspacing="0"
						align="center" bordercolor="DBDBDB">
						<tr>

							<td width="29%"><div align="center">商品名</div></td>
							<td width="14%"><div align="center">价格</div></td>
							<td width="14%"><div align="center">品牌</div></td>
							<td width="14%"><div align="center">数量</div></td>

							<td width="14%">&nbsp;</td>
							<td width="15%">&nbsp;</td>
						</tr>
						<s:iterator value="allList" var="list">
							<s:iterator value="#list.character" var="listchar">
								<tr>
									<td height="30"><s:property value="#list.productName" />
									</td>
									<td><s:property value="#list.originalPrice" /></td>
									<td><s:property value="#listchar.color" /></td>
									<td><s:property value="#listchar.type" /></td>
									<td align="center"><a
										href="deleteProduct.action?chaId=<s:property value="#listchar.detailId"/>">删除</a>
									</td>
									<td align="center"><a
										href="getProductInformation.action?chaId=<s:property value="#listchar.detailId"/>">修改</a>
									</td>
								</tr>
							</s:iterator>
						</s:iterator>
					</table>
				</div>

			</div>

		</div>


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





