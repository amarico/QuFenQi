<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import="java.util.Map"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%
	ActionContext actionContext = ActionContext.getContext();
	Map session1 = actionContext.getSession();
	// 从session里取用户名
	String user = (String) session1.get("user");
%>
<title>无标题文档</title>

<link rel="stylesheet" href="css/cssIndex.css" type="text/css"></link>
<link rel="stylesheet" href="css/cssProductList.css" type="text/css"></link>
<link rel="stylesheet" href="css/cssPaginate.css" type="text/css"></link>
<link rel="stylesheet" href="css/cssLink.css" type="text/css"></link>

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/JavaScriptIndex.js"></script>
<script type="text/javascript" src="js/jquery.paginate.js"></script>
</head>

<body>
	<div class="divHead">

		<table class="divTable">
			<tr>
				<td>Easy 购——您的专业分期购物网站！</td>
				<c:choose>
						<c:when test="${NULL==user}">
				<td class="tdHeadSpase"></td>
				<td><a href="login.jsp">登录</a>&nbsp;|&nbsp; <a
					href="register.jsp">注册</a>&nbsp;|&nbsp; <a href="#">帮助中心</a>
				</td>
				</c:when>
						<c:otherwise>
						<td class="tdHeadSpase"></td>
				<td><a><%=user%></a>&nbsp;|&nbsp;
					<a href="getmyself.action">我的趣分期</a>&nbsp;|&nbsp;
					<a href="loginout.action">退出</a>&nbsp;|				   
					<a href="#">帮助中心</a>
				</td>
				</c:otherwise>
				</c:choose>
			</tr>
		</table>
	</div>

	<div class="divContent">
		<table class="tableHead">
			<tr>
				<td ><img alt="" class="auto-style1"
					src="images/logo1.png" style="	width: 260px;
height: 130px;"/>
				</td>
				<td>
					<form name="form1" method="post" action="search.action">
						
							<input  name="keyWord" type="text"
								id="shangping" value="请输入商品名称"
								onFocus="if(this.value=='请输入商品名称')this.value='';"
								onBlur="if(this.value=='')this.value='请输入商品名称';"
								class="SmallInput" style="width:420px;height:39px;margin-left:100px;
	border: #FF0000 3px solid;
	margin-top:0px;
	height:39px;
	float:left;"> 
								<div style="float:left;width:40px;">
								<input
								name="sousuo" type="image" id="sousuo" value="搜索"
								src="images/0011.png" align="middle"
								onclick="javascript:document.getElementById('sousuo').submit" style="margin:0px">
						</div>
					</form></td>
				
				<td>	</td>
			</tr>
		</table>

		<ul id="mobanwang_com" class="first-menu">

			<li><a href="index.jsp" target="_self">商品分类</a>

				<ul style="display: none;" id="subMusic" class="second-menu">
                    <s:iterator value="mainShow" var="list">
					<li><a href="#" class="mobanwang" target="_self"><s:property value="#list.typeAllName" /></a>
						<ul class="third-menu">
						<s:iterator value="#list.productType" var="detail">
							<li><a href="loadDetail.action?detailKey=<s:property value="#detail.pdid"/>&
													sellAndPrice=all&brandOne=-1&minPrice=0&maxPrice=0"><s:property value="#detail.typeDetailName" /></a></li>
                        </s:iterator>
						</ul></li>
						</s:iterator>
		</ul>
		</li>
		</ul>
	</div>

	<div id="divMain">
		<div id="divNavigation1">
			<div style="float: left; width: auto">
				<a href="#" class="aButton"><s:property value="#sellAndPrice" /></a>
			</div>
			<div id="divNavAdd"></div>

		</div>

		<div id="divBrand">
			<table>
				<tr>
					<td class="tdLeft">
						<div class="pinpai_left">品牌:</div>
					</td>
					<td>
						<div id="pinpai_right" class="pinpai_right">
							<a href="loadDetail.action?detailKey=<s:property value="detailKey"/>&brandOne=-1&
			sellAndPrice=<s:property value="#sellAndPrice" />&minPrice=<s:property value="#minPrice" />&maxPrice=<s:property value="#maxPrice" />" class="aButton">全部</a>
						<s:iterator value="brandList" var="branddetail">
						<a href="loadDetail.action?detailKey=<s:property value="detailKey"/>&brandOne=<s:property value="#branddetail[1]" />&
			sellAndPrice=<s:property value="#sellAndPrice" />&minPrice=<s:property value="#minPrice" />&maxPrice=<s:property value="#maxPrice" />" class="aButton"><s:property value="#branddetail[0]" /></a>
						</s:iterator>
						</div>
					</td>
				</tr>
			</table>
			<hr
				style="height: 1px; border-top: 1px solid #e0e0e0; border-style: dashed none none none; border-width: 1px 0px 0px 0px; border-color: inherit;" />
		</div>


		<div id="divSort">
			<a href="loadDetail.action?detailKey=<s:property value="detailKey"/>&brandOne=<s:property value="#brandOne" />&
			sellAndPrice=all&minPrice=<s:property value="#minPrice" />&maxPrice=<s:property value="#maxPrice" />" class="button aButton">默认排序</a> <a href="loadDetail.action?detailKey=<s:property value="detailKey"/>&brandOne=<s:property value="brandOne" />&
			sellAndPrice=sell&minPrice=<s:property value="#minPrice" />&maxPrice=<s:property value="#maxPrice" />"
				class="button aButton" name="sellAndPrice">销量</a> <a href="?detailKey=<s:property value="detailKey"/>&brandOne=<s:property value="brandOne" />&
			sellAndPrice=price&minPrice=<s:property value="#minPrice" />&maxPrice=<s:property value="#maxPrice" />" class="button aButton" name="sellAndPrice">价格</a>
			<div class="divFrom">
				<form method="post" action="loadDetail.action">
					<table>
						<tr>
							<td>价格：</td>
							<td><input type="text" id="min_price" name="minPrice" value=""
								class="textInput" /></td>
							<td>元&nbsp;-</td>
							<td><input type="text" id="max_price" name="maxPrice"value=""
								class="textInput" /></td>
							<td>元</td>
							<td><input id="Submit1" type="submit" class="buttonFrom"
								value=" 确定 " /></td>
							<td><input id="Reset1" type="reset" class="buttonFrom"
								value=" 清空 " /></td>

						</tr>
					</table>
					<input name="detailKey" id="inputMonthPayment" value="<s:property value='detailKey'/>" type="text" style="display:none" />
					<input name="sellAndPrice" id="inputMonthPayment" value="<s:property value='sellAndPrice'/>" type="text" style="display:none" />
					<input name="brandOne" id="inputMonthPayment" value="<s:property value='brandOne'/>" type="text" style="display:none" />
				</form>
			</div>
		</div>

		<div style="clear: both">
			<p>
				&nbsp;
			</p>
		</div>

		<input name="product" id="product" value="<s:property value='detailList'/>" type="text" style="display:none" />
		<div id="content" style="left:35px; width:1076px;">
		 
			<s:iterator value="detailList" var="list">
				<div
					style="width: 231px; height: 340px; padding: 10px; margin: 8px; border-color: #ddd; border-width: 1px; border-style: solid; float: left; display: block;">

					<a style="width: 229px;" href="product.action?identify=<s:property value="#list.id"/>"> <img
						style="width: 229px; height: 229px;"
						src="<s:property value="#list.pic" />" />
						<p>
							<s:property value="#list.productName" />
						</p> </a>
					<p>
						售价：
						<s:property value="#list.barginPrice" />
					</p>
					<p>
						月供：￥<span style="color: #f00; font-size: 16px;"><s:property
								value="#list.monthPrice" /> </span>&nbsp;x &nbsp;
						<s:property value="#list.monthNum" />
						期
					</p>
				</div>

			</s:iterator>
		</div>

	</div>


</body>
</html>
