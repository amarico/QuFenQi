<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="css/cssProductDetail.css" type="text/css"></link>
<link rel="stylesheet" href="css/cssProductList.css" type="text/css"></link>
<link rel="stylesheet" href="css/cssIndex.css" type="text/css"></link>
<link rel="stylesheet" href="css/cssLink.css" type="text/css"></link>

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/JavaScriptIndex.js"></script>
<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>
<script type="text/javascript" src="js/cloud-zoom.1.0.2.js"></script>
<script type="text/javascript" src="js/jsDetails.js"></script>
<script type="text/javascript">
function submitAction(x)
{
	document.getElementById("form1").action=x+".action";
	if(x=="fenqi")
		document.getElementById(inpSubBut).click();
	else{
		document.getElementById(buttonAddToCart).click();
		}
}

</script>
</head>
<body>
<body>
	<div id="divHead">

		<div id="divWelcome">Easy 购——您的专业分期购物网站！</div>
		<c:choose>
			<c:when test="${NULL==user}">
				<div id="divHeadIndex">
					<a href="login.jsp">登录</a>&nbsp;|&nbsp; <a href="register.jsp">注册</a>&nbsp;|&nbsp;
					<a href="#">我的趣分期</a>&nbsp;|&nbsp; <a href="#">帮助中心</a>
				</div>
			</c:when>
			<c:otherwise>
				<div id="divHeadIndex">
					<a href="#"><a><%=user%></a>&nbsp;|&nbsp; <a
						href="getmyself.action">我的趣分期</a>&nbsp;|&nbsp; <a
						href="loginout.action">退出</a>&nbsp;| <a href="#">帮助中心</a>
			</c:otherwise>
		</c:choose>
	</div>

	<div id="divContent" class="divContent">
		<table class="tableHead">
			<tr>
				<td class="auto-style2"><img alt="" class="auto-style1"
					src="images/logo1.png" style="	width: 260px;
height: 130px;" />
				</td>
				<td>
					<form name="form1" method="post" action="search.action">
						<input name="keyWord" type="text" id="shangping" value="请输入商品名称"
							onFocus="if(this.value=='请输入商品名称')this.value='';"
							onBlur="if(this.value=='')this.value='请输入商品名称';"
							class="SmallInput"
							style="width:420px;height:39px;margin-left:100px;
	border: #FF0000 3px solid;
	margin-top:0px;
	height:39px;
	float:left;">
						<div style="float:left;width:40px;">
							<input name="sousuo" type="image" id="sousuo" value="搜索"
								src="images/0011.png" align="middle"
								onclick="javascript:document.getElementById('sousuo').submit"
								style="margin:0px;padding-left:0px;width:39px;height:39px;">
						</div>
					</form></td>
				<td>&nbsp;</td>
				<td>
					<div id="divMySearch">
						<a id="aMySearch" href=""></a>
					</div></td>
			</tr>
		</table>

		<ul id="mobanwang_com" class="first-menu">

			<li><a href="index.jsp" target="_self">商品分类</a>
				<ul style="display: none;" id="subMusic" class="second-menu">
					<s:iterator value="mainShow" var="list">
						<li><a href="#" class="mobanwang" target="_self"><s:property
									value="#list.typeAllName" /> </a>
							<ul class="third-menu">
								<s:iterator value="#list.productType" var="detail">
									<li><a
										href="loadDetail.action?detailKey=<s:property value="#detail.pdid"/>&
													sellAndPrice=all&brandOne=-1&minPrice=0&maxPrice=0"><s:property
												value="#detail.typeDetailName" /> </a></li>
								</s:iterator>
							</ul></li>
					</s:iterator>
				</ul>
			</li>
		</ul>
	</div>


	<div class="divMain">
		<div class="divNavigation1">
			<div style="float: left; width: auto">
				<a href="#" class="aButton"> </a>
			</div>
		</div>

		<div class="divDetailContent">
			<div class="zoom-section">
				<div class="zoom-small-image">
					<a href="#productInfo.pic" class='cloud-zoom' id='zoom7'
						rel="position:'inside',showTitle:false,adjustX:-4,adjustY:-4">
						<img src="<s:property value='productInfo.pic' />"
						title="Your caption here" alt='' /> </a>
				</div>

				<p class="divImageIndex">
					<s:iterator value="productInfo.character" var="list" status="u">
						<a href="<s:property value='#list.pictureOne'/>"
							class='cloud-zoom-gallery <s:property value='#list.detailId'/>'
							title='<s:property value="#list.detailId"/>'
							rel="useZoom: 'zoom7', smallImage: '<s:property value='#list.pictureOne'/>'">
							<img class="zoom-tiny-image"
							src="<s:property value='#list.pictureOne'/>" alt="" /> </a>
						<a href="<s:property value='#list.pictureTwo'/>"
							class='cloud-zoom-gallery <s:property value='#list.detailId'/>'
							title='<s:property value='#list.detailId'/>'
							rel="useZoom: 'zoom7', smallImage: '<s:property value='#list.pictureTwo'/>'">
							<img class="zoom-tiny-image"
							src="<s:property value='#list.pictureTwo'/>" alt="" /> </a>
						<a href="<s:property value='#list.pictureThree'/>"
							class='cloud-zoom-gallery <s:property value='#list.detailId'/>'
							title='<s:property value="#list.detailId"/>'
							rel="useZoom: 'zoom7', smallImage: '<s:property value='#list.pictureThree'/>'">
							<img class="zoom-tiny-image"
							src="<s:property value='#list.pictureThree'/>" alt="" /> </a>
						<a href="<s:property value='#list.pictureFour'/>"
							class='cloud-zoom-gallery  <s:property value='#list.detailId'/>'
							title='<s:property value="#list.detailId"/>'
							rel="useZoom: 'zoom7', smallImage: '<s:property value='#list.pictureFour'/>'">
							<img class="zoom-tiny-image"
							src="<s:property value='#list.pictureFour'/>" alt="" /> </a>
					</s:iterator>
				</p>

			</div>

			<!--zoom-section end-->

			<div class="divTableIn">
				<form id="form1" method="post">
					<table class="tableUp">
						<tr>
							<td colspan="2">
								<h2>
									<s:property value="productInfo.productName" />
								</h2> <input name="order.shop"
								value='<s:property value="productInfo.productName"/>'
								type="text" style="display:none" /></td>
						</tr>
						<tr>
							<td class="tdLeft1">商品价格:</td>
							<td id="tdPrice"><s:property value="productInfo.barginPrice" /><input
								name="order.price"
								value='<s:property value="productInfo.barginPrice"/>'
								type="text" style="display:none" /></td>
						</tr>
						<tr>
							<td class="tdLeft1">颜&nbsp;&nbsp;&nbsp;&nbsp; 色:</td>
							<td><s:iterator value="productInfo.character"
									var="listcolor" status="u">
									<label class="labelColor"
										for='<s:property value='#listcolor.detailId'/>'><s:property
											value='#listcolor.color' /> </label>
									<input type="radio" class="radioButton"
										value='<s:property value='#listcolor.color' />'
										id='<s:property value='#listcolor.detailId'/>' />
								</s:iterator> <input name="character.color" id="productcolor" type="text"
								style="display:none" />
							</td>
						</tr>
						<tr>
							<td class="tdLeft1">选购类型:</td>
							<td><s:iterator value="productInfo.character" var="listtype">
									<label class="labelClass" for="zhao"><s:property
											value='#listtype.type' /> </label>
									<input type="radio" class="radioButton" id="zhao"
										value='<s:property value='#listtype.type' />' />
								</s:iterator> <input name="character.type" id="productsize" type="text"
								style="display:none" />
							</td>
						</tr>
						<tr class="tdGray">
							<td class="tdLeft1">首付金额:</td>
							<td><input name="order.firstPay" id="inputFristMonsy"
								max="100" min="0" type="number" class="tetx" value="0" /> <span
								class="tdLeft1">分期月数:</span> <input name="order.monthTime"
								id="inputMonth" max="1000" min="1" type="number" class="tetx"
								value="1" /> <span class="tdLeft1" id="inputRightMonthShow">
									*（1个月-3个月）</span></td>
						</tr>
						<tr class="tdMonthPayment">

							<td class="tdLeft1 ">月&nbsp;&nbsp;&nbsp;&nbsp; 供:</td>
							<td><span id="tdMonthPayment">113.9</span> <input
								name="order.monthPay" id="inputMonthPayment" type="text"
								style="display:none" /> <input name="percent" id="percent"
								value='<s:property value='per'/>' type="text"
								style="display:none" /></td>

						</tr>
						<tr>
							<td colspan="2"><input name="submit" id="inpSubBut"
								type="submit" onclick="submitAction('fenqi') " value="立 即 分 期" />
								<input id="buttonAddToCart" type="submit" value="加入购物车"
								onclick="submitAction('shopCartJoin')" /></td>
						</tr>
						<tr>
							<td colspan="2"><img id='imgRegret'
								src="images/detail_icon1.jpg" /></td>
						</tr>
					</table>
				</form>
			</div>

		</div>




		<div class="divDetaileBottom">
			<div id="divMenu">
				<div id="div1" class="divMenuItem divMenuItemCurrent">商品详情</div>
				<div id="div2" class="divMenuItem">评价列表</div>


			</div>
			<div id="For-div1" class="divProductDetail divProductDetailHide">


				<s:iterator value="productInfo.character" var="intro">
					<img src="<s:property value='#intro.pictureIntroOne'/>" />
					<img src="<s:property value='#intro.pictureIntroTwo'/>" />
					<img src="<s:property value='#intro.pictureIntroThree'/>" />
					<img src="<s:property value='#intro.pictureIntroFour'/>" />
					<img src="<s:property value='#intro.pictureIntroFive'/>" />
				</s:iterator>

			</div>
			<div id="For-div2" class="divProductDetail">
				<s:iterator value="judge" var="ju">
					<div class="divOneDetail">
						<p class="pName"> 
							<s:property value="#ju.userName" />
						</p>
						<p class="pDate">
							<s:property value="#ju.date" />
						</p>
						<hr style="width:100%;border:1px dashed #eee;" />
						<p class="pDetail">
							<s:property value="#ju.evaluate" />
						</p>
					</div>
				</s:iterator>
			</div>




		</div>










	</div>


</body>
</html>
