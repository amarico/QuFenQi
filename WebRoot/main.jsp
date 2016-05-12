<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/index.css" type="text/css"
	media="screen" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<!--<script>
    window.onload = function(){
        var ms = document.getElementById("hehe");
        var add = document.getElementById("menu");
        ms.onmouseover = function(){
            add.style.display = "block";
        };
        ms.onmouseout = function(){
            add.style.display = "none";
        };
    };
</script>-->
<title>首页</title>

<style type="text/css">
body{
}
#apDiv1 {
	margin-top: 25px;
	width: 100%;
	
}

#container {
	background-color: #FFF;
	height: 100%;
	width: 100%;
	position: relative;
}

#Header {
	background-color: rgba(0, 0, 0, 0.14);
	position: relative;
	width: 100%;
	a: hover{text-decoration:underline;
}

}
a {
	text-decoration: none;
}

a {color:#333;
	
}

#Body {
margin-top:30px;
margin-left:30px;
margin-bottom:10px;
	
}
#hehe{z-index:100;}
#menu {
	width: 170px;
	border: 0px solid #CCC;
	border-bottom:none;
	color: #FFF;
	
}
#menu ul {
	list-style: none;
	margin: 0px;
	padding: 0px;
	color: #F00;
}
#menu ul li {
	background:rgba(154, 154, 154, 0.73);
	
	padding: 0px 0px;
	height: 40px;
	line-height: 35px;
	border-bottom: 1px solid #ddd;
	position:relative;
}
#menu ul li:hover {
	background: rgba(255, 35, 35, 0.90);
}
#menu ul li ul {
	display:none;
	position: absolute;
	left: 170px;
	top: 0px;
	width:150px;
	border:1px solid #CCC;
	border-bottom:none;
}
#menu ul li.current ul {
	
	display:block;
}
#menu ul li:hover ul {
	display:block;
	
}

#divMain {
	min-height: 0px;
	max-width: 80%;
	margin-left: 100px;
	height: auto;
	display: block;
}

</style>
</head>
<%@ page import="java.util.Map"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%
	ActionContext actionContext = ActionContext.getContext();
	Map session1 = actionContext.getSession();
	// 从session里取用户名
	String user = (String) session1.get("user");
%>

<body>
	<div id="container">
		<div id="Header">
			<table width="100%" border="0">
				<tr line-height:20px>
					<td width="80%" height=33px >&nbsp;&nbsp;&nbsp;
						Easy 购——您的专业分期购物网站！</td>
					<c:choose>
						<c:when test="${NULL==user}">
							<td width="6%" >
								<div align="center">
									<a href="login.jsp">登录</a>
								</div></td>
							<td>|</td>
							<td width="6%" >
								<div align="center">
									<a href="register.jsp">注册</a>&nbsp;
								</div>
							</td>
						</c:when>
						<c:otherwise>
							<td width="2%" >
								<div align="center">
									<a><%=user%></a>
								</div></td>
								<td>|</td>
							<td width="7%" >
								<div align="center">
									<a href="getmyself.action">我的趣分期</a>
								</div>
							</td>
							<td>|</td>
							<td width="3%" >
								<div align="center">
									<a href="loginout.action">退出</a>
								</div>
							</td>	
						</c:otherwise>
					</c:choose>
					<td>|</td>
					<td width="6%" ><div align="center">
							<a href="#">帮助中心</a>
						</div></td>

				</tr>
			</table>
		</div>
		<div id="Body">
			<table width="991" >
				<tr>
					<td width="436"><img src="images/logo1.png" 
						height="80" hspace="50" align="middle"></td>
					<td width="545" colspan="2">
						<form name="form1" method="post" action="search.action">
							<table width="465" border="0" rules=rows cellspacing=0 align=right>
							<tr><td width="420">
								<label for="shangping"></label> <input name="keyWord"
									type="text" id="shangping" value="请输入商品名称"
									onFocus="if(this.value=='请输入商品名称')this.value='';"
									onBlur="if(this.value=='')this.value='请输入商品名称';"
									class="SmallInput" style="width:420px;height:40px; border:#FF0000 3px solid;"> 
									</td>
									<td width="45"><input name="sousuo" type="image" id="sousuo" value="搜索"
									src="images/0011.png" align="middle" style="border:#FF0000 3px solid;" height="34"
									onclick="javascript:document.getElementById('sousuo').submit"></td>
							</tr></table>
						</form>
					</td>
				</tr>
			</table>
			</div>
			<p>&nbsp;</p>
			<div>
			<table width="918" border="0" style="position:absolute; z-index:100;">
				<tr>
					<td width="327" align="center" valign="top">
					<div id="hehe"><img src="images/spfl2.png" width="170" height="40">
					<div id="menu">
							<ul>
								
								<s:iterator value="mainShow" var="list">
									<li><a href="#"><s:property value="#list.typeAllName" />
									</a><ul> <s:iterator value="#list.productType" var="detail">
											
												<li><a
													href="loadDetail.action?detailKey=<s:property value="#detail.pdid"/>&
													sellAndPrice=all&brandOne=-1&minPrice=0&maxPrice=0"><s:property
															value="#detail.typeDetailName" /> </a></li>
										</s:iterator>
											</ul>
									</li>
								</s:iterator>
							</ul></div></div>
					</td>
					<td width="123"   valign="top"><a href="index.jsp"><font size="+2">首页</font></a></td>
					<td width="454"   valign="top"><a href="index.jsp"><font size="+2">特卖</font></a></td>
					
				</tr>
			</table>
		</div>
		<div id="apDiv1">
			<div class="pub_c">
				<div class="m_banner">
					<div class="banner b1"
						style=" background-image:url(images/banner_2.jpg);" id="banner1"></div>
					<div class="main_c">
						<a href="#" target="_blank" title="" class="l1"></a>
					</div>
					<div class="banner b5"
						style=" background-image:url(images/banner_17.jpg);display:none;"
						id="banner5"></div>
					<div class="banner b2"
						style=" background-image:url(images/banner_12.jpg);display:none;"
						id="banner2"></div>
					<div class="banner b3"
						style=" background-image:url(images/banner_3.jpg);display:none;"
						id="banner3"></div>
					<div class="banner b4"
						style=" background-image:url(images/banner_4.jpg);display:none;"
						id="banner4"></div>
					<div class="banner_ctrl">
						<a href="#" class="prev" title=""></a> <a href="javascript:;"
							class="next" title=""></a>
					</div>
				</div>
			</div>
			<p class="quanwangfenqi">&nbsp;</p>
			<p class="quanwangfenqi">&nbsp;</p>
			<p class="quanwangfenqi">&nbsp;</p>

			<form name="form6" method="post" action="fenqiLink.action">
			<table width="86%" border="0" align="center">
				<tr>
					<td width="28%" rowspan="4"><img
						src="images/logo2.png" width="300"
						height="220" /></td>
					<td height="41" colspan="3">
							<label for="textfield5"></label> &nbsp;商品链接 <input type="text"
								style="width:594px; height:33px" name="order.shop"
								id="textfield5">
						</td>
				</tr>
				<tr>
					<td width="21%" height="71">
							&nbsp;商品价格 <input type="text" style="width:90px; height:33px"
								name="order.price" id="textfield2"/>
						</td>
					<td width="19%">
							&nbsp;&nbsp;&nbsp;首付金额 <label for="textfield3"></label> <input type="text"
								style="width:90px; height:33px" name="order.firstPay"
								id="textfield3" />
						</td>
					<td width="32%">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分期月数 <label for="textfield4"></label> <label for="select"></label>
							<select name="order.monthTime" style="width:90px; height:33px" id="select">
							<option value="1">1个月</option>
							<option value="2">2个月</option>
							<option value="3">3个月</option>
							<option value="4">4个月</option>
							<option value="5">5个月</option>
							<option value="6">6个月</option>
							<option value="7">7个月</option>
							<option value="8">8个月</option>
							<option value="9">9个月</option>
							<option value="10">10个月</option>
							<option value="11">11个月</option>
							<option value="12">12个月</option>
							
								</select>
						</form></td>
				</tr>
				<tr>
					<td height="53" colspan="3">
							&nbsp;订单配置 <label for="textfield"></label> <input type="text"
								style="width:594px; height:33px" name="order.content" id="textfield" />
						</td>
				</tr>
				<tr>
					<td colspan="3">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
								style="width:200px; height:40px;background:#FF0000;color:#fff;border:0px; " name="button" id="button"
								value="提    交" />
						</td>
				</tr>
			</table>
			</form>
		</div>
		</br> </br>

		<div id="divMain">

			<s:iterator value="mainShow" var="list">
				<p>
					<span><s:property value="#list.typeAllName" /> </span>
					<s:iterator value="#list.productType" var="detail">
						<i><a
							href="loadDetail.action?detailKey=<s:property value="#detail.pdid"/>&
													sellAndPrice=all&brandOne=-1&minPrice=0&maxPrice=0"><s:property
									value="#detail.typeDetailName" /> </a> </i>
					</s:iterator>
				</p>
				</br>
				<div style="left:35px; width:1076px;">
					<hr style="width: 1076px;  borber:2px black solid">
					<s:set name="num" value="1" id="num"/>
					<s:iterator value="#list.productType" var="productdetail"
						status="u">
							<s:iterator value="#productdetail.product" var="product">
							<s:if test="#num<9">
							<s:set name="num" value="#num+1" id="num"/>
								<div
									style="width: 231px; height: 340px; padding: 10px; margin: 8px; border-color: #ddd; border-width: 1px; border-style: solid; float: left; display: block;">

									<a style="width: 229px;" href="product.action?identify=<s:property value="#product.id"/>"> <img
										style="width: 229px; height: 229px;"
										src="<s:property value="#product.pic" />" />
										<p>
											<s:property value="#product.productName" />
										</p> </a>
									<p>
										售价：
										<s:property value="#product.barginPrice" />
									</p>
									<p>
										月供：￥<span style="color: #f00; font-size: 16px;"><s:property
												value="#product.monthPrice" /> </span>&nbsp;x &nbsp;
										<s:property value="#product.monthNum" />
										期
									</p>
								</div>
								</s:if>
							</s:iterator>
					</s:iterator>
					<hr style="width: 1076px;height: 1px; color: 1px">
				</div>
			</s:iterator>
</body>
</html>
