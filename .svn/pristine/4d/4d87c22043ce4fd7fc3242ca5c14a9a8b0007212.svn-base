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
<link href="<%=request.getContextPath()%>/css/lrtk.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script>
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

#qb {
	
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
				<div id="qb">
					<form id="form1" name="form1" method="post"
						action="modifyProduct.action">
						<table width="536" border="1" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="38" colspan="2" align="center">修改商品</td>
							</tr>
							<tr>
								<td width="254" height="39">原&nbsp;&nbsp;价&nbsp;&nbsp;&nbsp;
									<label for="textfield9"></label> <input type="text"
									name="productInfo.originalPrice" id="textfield9"
									value="<s:property value="productInfo.originalPrice"/>" /></td>
								<td>促销价&nbsp;&nbsp; <label for="textfield8"></label> <input
									type="text" name="productInfo.barginPrice" id="textfield8"
									value="<s:property value="productInfo.barginPrice"/>" /></td>
							</tr>
							<tr>
								<td height="57">商品名 <label for="textfield"></label> <input
									type="text" name="productInfo.productName" id="textfield"
									value="<s:property value="productInfo.productName"/>" /></td>
								<td>最大分期数 <label for="textfield8"></label> <input
									type="text" name="productInfo.monthNum" id="textfield8"
									value="<s:property value="productInfo.monthNum"/>" /></td>
							</tr>
							<tr>
								<td height="56">品&nbsp;&nbsp;牌&nbsp;&nbsp;&nbsp; <label
									for="textfield2"></label> <input type="text"
									name="productInfo.brand" id="textfield2"
									value="<s:property value="productInfo.brand"/>" /></td>
								<td>是否精品&nbsp; <label for="textfield10"></label> <input
									type="text" name="productInfo.isboutique" id="textfield10"
									value="<s:property value="productInfo.isboutique"/>" /></td>
							</tr>
							<tr>
								<td height="50">数&nbsp;&nbsp;量&nbsp;&nbsp;&nbsp; <label
									for="textfield3"></label> <input type="text"
									name="productInfo.cu" id="textfield3"
									value="<s:property value="productInfo.cu"/>" /></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td width="254" height="56">颜&nbsp;&nbsp;色&nbsp;&nbsp;&nbsp;
									<label for="textfield2"></label> <input type="text"
									name="character.color" id="textfield2"
									value="<s:property value="character.color"/>" /></td>
								<td>类型&nbsp; <label for="textfield10"></label> <input
									type="text" name="character.type" id="textfield10"
									value="<s:property value="character.type"/>" /></td>
							</tr>
							<tr>
								<td height="50" colspan="2" align="center"><input
									type="submit" name="button" id="button" value="提交"
									onclick="checkform()" />
								</td>
							</tr>
						</table>
					</form>
					<script language="JavaScript" type="text/javascript">
						function checkform() {
							var f = document.form1;
							if (f.textfield.value == "") {
								alert("商品名不能为空");
								f.textfield.focus();
								return false;
							}
							if (f.textfield2.value == "") {
								alert("品牌不能为空");
								f.textfield2.focus();
								return false;
							}
							if (f.textfield3.value == "") {
								alert("数量");
								f.textfield3.focus();
								return false;
							}
							if (f.textfield4.value == "") {
								alert("类型");
								f.textfield4.focus();
								return false;
							}
							if (f.textfield5.value == "") {
								alert("颜色");
								f.textfield5.focus();
								return false;
							}
							if (f.textfield6.value == "") {
								alert("是否精品");
								f.textfield6.focus();
								return false;
							}
							if (f.textfield7.value == "") {
								alert("最大分期数");
								f.textfield7.focus();
								return false;
							}
							if (f.textfield8.value == "") {
								alert("促销价");
								f.textfield8.focus();
								return false;
							}

							if (f.textfield9.value == "") {
								alert("原价");
								f.textfield9.focus();
								return false;
							}

							return true;

						}

						var arr = new Array();
						arr[0] = "手机,单反,智能手环"
						arr[1] = "项链,戒指,耳饰"
						arr[2] = "和平,宝坻,呵呵"

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
					</script>


				</div>
			</div>
</body>
</html>
