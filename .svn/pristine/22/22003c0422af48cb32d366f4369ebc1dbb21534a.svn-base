<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'province.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="400" border="1" align="center" cellpadding="0"
									cellspacing="0" bordercolor="#00FFFF">
									<tr>
										<td width="20" align="center" bgcolor="#CCCCCC">省份</td>
										<td width="20" align="center" bgcolor="#CCCCCC">人数</td>
									</tr>
									<s:iterator value="list" var="listpro">
									<tr>
										<td align="center"><s:property value="#listpro[1]" /></td>
										<td align="center"><s:property value="#listpro[0]" /></td>
                                    </tr>
                                    </s:iterator>
								</table>
  </body>
</html>
