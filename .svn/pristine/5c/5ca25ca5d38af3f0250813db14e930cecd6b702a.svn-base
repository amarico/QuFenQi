<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<title>无标题文档</title>
<style type="text/css">
a:visited, a:link
{
    color:#555;
    text-decoration:none;
}

a:hover
{
    color:#f54343;
    text-decoration:underline;
}

#fukuan {
position:absolute;
	left: 22%;
	width:800px;
	

}

form {

	border: 1px solid #666;
	
}

td{
	border: 1px solid #FFFFF;
}

</style>
</head>

<body>


	<div id="fukuan">
	<img src="images/logo1.png"  height="80" style="margin:20px;" />
		<form action="submitorder.action" method="post">
			<table width="100%" align="center" border="0"  cellspacing="0"
				cellpadding="0" style="padding:10px;">
				<tr>
					<td class="2">
					</td>
				</tr>
				<tr>
					<td class="2" height="213" ><font color="#f00"> 收货信息</font>
						<hr width="100%"  style="border:1px dotted #666;">
						</hr>
						<p>
							收货人：
							<s:property value="customer.name" />
						</p>
						<p>
							收货地址：
							<s:property value="customer.address" />
						</p>
						<p>
							电话：
							<s:property value="customer.userName" />
						</p></td>
				</tr>

				<tr>
					<td class="2" height="201" align="center" style="text-align:left;"><!--  valign="middle"  -->
					
					
					<font color="#f00"> 商品信息</font>
		<p/>
						
						
					<table  style="border: 1px solid #666;border-left:0px;border-right:0px;"
							width="100%" border="0" rules="rows" cellspacing="0" cellpadding="0">
							
							<tr style="background-color:rgba(155,155,155,0.10);">
								<td class="1" width="44%" height="45" align="center">商品</td>
								<td  class="1"width="13%" align="center">商品价格</td>
								<td class="1"width="10%" align="center">分期数</td>
								<td class="1"width="8%" align="center">首付</td>
								<td class="1"width="13%" align="center">月供</td>
								<td class="1"width="12%" align="center">&nbsp;</td>
							</tr>
							<tr>
								<td class="1" height="55" align="center"><s:property value="order.shop" />
								</td>
								<td class="1" align="center"><s:property value="order.price" />
								</td>
								<td class="1" align="center"><s:property value="order.monthTime" />
								</td>
								<td class="1" align="center"> <s:property value="order.firstPay" />
								</td>
								<td class="1" align="center"><s:property value="order.monthPay" />
								</td>
								<td class="1" align="center"><a
									href="javascript:window.history.back(-1);">返回修改</a>
								</td>
							</tr>
						</table>
						<p style="text-align:center">
							<input type="submit"
								style=" border:0px; width:150px;height:40px; background:#FF0000;" name="tijiao" id="tijiao"
								value="提  交" />
						</p>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
