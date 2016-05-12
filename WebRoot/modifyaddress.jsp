<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel=stylesheet type=text/css href="css/lrtk1.css">
<%@ page import="java.util.Map"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%
	ActionContext actionContext = ActionContext.getContext();
	Map session1 = actionContext.getSession();
	// 从session里取用户名
	String user = (String) session1.get("user");
%>
<title>无标题文档</title>
<script>
	window.onload = function() {
		var ms = document.getElementById("hehe");
		var add = document.getElementById("menu");
		ms.onmouseover = function() {
			add.style.display = "block";
		};
		ms.onmouseout = function() {
			add.style.display = "none";
		};
	};
</script>
<script>
	var arr = new Array();
	arr[0] = "东城,西城,崇文,宣武,朝阳,丰台,石景山,海淀,门头沟,房山,通州,顺义,昌平,大兴,平谷,怀柔,密云,延庆"
	arr[1] = "黄浦,卢湾,徐汇,长宁,静安,普陀,闸北,虹口,杨浦,闵行,宝山,嘉定,浦东,金山,松江,青浦,南汇,奉贤,崇明"
	arr[2] = "和平,东丽,河东,西青,河西,津南,南开,北辰,河北,武清,红挢,塘沽,汉沽,大港,宁河,静海,宝坻,蓟县"
	arr[3] = "万州,涪陵,渝中,大渡口,江北,沙坪坝,九龙坡,南岸,北碚,万盛,双挢,渝北,巴南,黔江,长寿,綦江,潼南,铜梁,大足,荣昌,壁山,梁平,城口,丰都,垫江,武隆,忠县,开县,云阳,奉节,巫山,巫溪,石柱,秀山,酉阳,彭水,江津,合川,永川,南川"
	arr[4] = "石家庄,邯郸,邢台,保定,张家口,承德,廊坊,唐山,秦皇岛,沧州,衡水"
	arr[5] = "太原,大同,阳泉,长治,晋城,朔州,吕梁,忻州,晋中,临汾,运城"
	arr[6] = "呼和浩特,包头,乌海,赤峰,呼伦贝尔盟,阿拉善盟,哲里木盟,兴安盟,乌兰察布盟,锡林郭勒盟,巴彦淖尔盟,伊克昭盟"
	arr[7] = "沈阳,大连,鞍山,抚顺,本溪,丹东,锦州,营口,阜新,辽阳,盘锦,铁岭,朝阳,葫芦岛"
	arr[8] = "长春,吉林,四平,辽源,通化,白山,松原,白城,延边"
	arr[9] = "哈尔滨,齐齐哈尔,牡丹江,佳木斯,大庆,绥化,鹤岗,鸡西,黑河,双鸭山,伊春,七台河,大兴安岭"
	arr[10] = "南京,镇江,苏州,南通,扬州,盐城,徐州,连云港,常州,无锡,宿迁,泰州,淮安"
	arr[11] = "杭州,宁波,温州,嘉兴,湖州,绍兴,金华,衢州,舟山,台州,丽水"
	arr[12] = "合肥,芜湖,蚌埠,马鞍山,淮北,铜陵,安庆,黄山,滁州,宿州,池州,淮南,巢湖,阜阳,六安,宣城,亳州"
	arr[13] = "福州,厦门,莆田,三明,泉州,漳州,南平,龙岩,宁德"
	arr[14] = "南昌市,景德镇,九江,鹰潭,萍乡,新馀,赣州,吉安,宜春,抚州,上饶"
	arr[15] = "济南,青岛,淄博,枣庄,东营,烟台,潍坊,济宁,泰安,威海,日照,莱芜,临沂,德州,聊城,滨州,菏泽"
	arr[16] = "郑州,开封,洛阳,平顶山,安阳,鹤壁,新乡,焦作,濮阳,许昌,漯河,三门峡,南阳,商丘,信阳,周口,驻马店,济源"
	arr[17] = "武汉,宜昌,荆州,襄樊,黄石,荆门,黄冈,十堰,恩施,潜江,天门,仙桃,随州,咸宁,孝感,鄂州"
	arr[18] = "长沙,常德,株洲,湘潭,衡阳,岳阳,邵阳,益阳,娄底,怀化,郴州,永州,湘西,张家界"
	arr[19] = "广州,深圳,珠海,汕头,东莞,中山,佛山,韶关,江门,湛江,茂名,肇庆,惠州,梅州,汕尾,河源,阳江,清远,潮州,揭阳,云浮"
	arr[20] = "南宁,柳州,桂林,梧州,北海,防城港,钦州,贵港,玉林,南宁地区,柳州地区,贺州,百色,河池"
	arr[21] = "海口,三亚"
	arr[22] = "成都,绵阳,德阳,自贡,攀枝花,广元,内江,乐山,南充,宜宾,广安,达川,雅安,眉山,甘孜,凉山,泸州"
	arr[23] = "贵阳,六盘水,遵义,安顺,铜仁,黔西南,毕节,黔东南,黔南"
	arr[24] = "昆明,大理,曲靖,玉溪,昭通,楚雄,红河,文山,思茅,西双版纳,保山,德宏,丽江,怒江,迪庆,临沧"
	arr[25] = "拉萨,日喀则,山南,林芝,昌都,阿里,那曲"
	arr[26] = "西安,宝鸡,咸阳,铜川,渭南,延安,榆林,汉中,安康,商洛"
	arr[27] = "兰州,嘉峪关,金昌,白银,天水,酒泉,张掖,武威,定西,陇南,平凉,庆阳,临夏,甘南"
	arr[28] = "银川,石嘴山,吴忠,固原"
	arr[29] = "西宁,海东,海南,海北,黄南,玉树,果洛,海西"
	arr[30] = "乌鲁木齐,石河子,克拉玛依,伊犁,巴音郭勒,昌吉,克孜勒苏柯尔克孜,博 尔塔拉,吐鲁番,哈密,喀什,和田,阿克苏"
	arr[31] = "香港"
	arr[32] = "澳门"
	arr[33] = "台北,高雄,台中,台南,屏东,南投,云林,新竹,彰化,苗栗,嘉义,花莲,桃园,宜兰,基隆,台东,金门,马祖,澎湖"

	function init() {
		var city = document.getElementById("city");
		var cityArr = arr[0].split(",");
		for ( var i = 0; i < cityArr.length; i++) {
			city[i] = new Option(cityArr[i], cityArr[i]);
		}
	}

	function getCity() {
		var pro = document.getElementById("province");
		var city = document.getElementById("city");
		var index = pro.selectedIndex;
		var cityArr = arr[index].split(",");

		city.length = 0;
		//将城市数组中的值填充到城市下拉框中
		for ( var i = 0; i < cityArr.length; i++) {
			city[i] = new Option(cityArr[i], cityArr[i]);
		}
	}
</script>


<style type="text/css">
body {
	margin: 0;
}

#apDiv1 {
	position:absolute;
	left:50px;
	top:220px;
	width:1280px;
	height:312px;
	z-index:1;
	
}

#dingdan {
	
}
</style>
</head>
<style type="text/css">
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
	a: hover{  
text-decoration:underline;
}

}
a {
	text-decoration: none;
}

a {
	color: #333  ;
}

#Body { margin-top:20px;

	
}

#hehe {
	
}

#tb {margin-top:30px;
	
}

#kkk {
	overflow-y: auto;
	max-height: 200px;
}

#tubiao{margin-left:30px;
margin-top:5px;

 }

#container #apDiv1 table tr td {
	font-size: 20px;
}

#container #apDiv1 table tr td #dingdan p {
	font-size: 12px;
}

#container #apDiv1 table tr td #dingdan #form2 {
	font-size: 12px;
}

#container #apDiv1 table tr td #dingdan #form2 table {
	font-size: 12px;
	
}
</style>
<body>
	<div id="container">
		<div id="Header">
    <table width="100%" border="0">
      <tr line-height:20px>
        <td width="68%" height=33px >&nbsp;&nbsp;&nbsp; 
          
          欢迎来到趣分期！</td>
        <c:choose>
			<c:when test="${NULL==user}">
        <td width="17%"><div align="right"><a href="login.jsp">登录</a>&nbsp;</div></td>
        <td width="1%"> |</td>
        <td width="5%"><div align="center"><a href="register.jsp">&nbsp;注册</a>&nbsp;</div></td>
        <td width="1%"> |</td>
        </c:when>
        <c:otherwise>
        <td width="17%"><div align="right"><a href="getmyself.action"> <%=user%></a>&nbsp;</div></td>
        <td width="1%"> |</td>
        <td width="5%"><div align="center"><a href="loginout.action"> 退出</a>&nbsp;</div></td>
        <td width="1%"> |</td>
        </c:otherwise>
        </c:choose>
        <td width="8%"><div align="center"><a href="#">帮助中心</a></div></td>
      </tr>
    </table>
  </div>



 <div id="Body">
			<table width="991" >
				<tr>
					<td width="436"><img src="images/logo1.png" 
						height="80px" hspace="80" align="middle"></td>
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
			
		<div id="tb">
			<table width="918" border="0" >
				<tr>
					<td width="327" align="center" valign="top">
					<div id="hehe"><img src="images/spfl3.png" width="170" height="40">
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
			<table width="1250" height="400" border="1" bgcolor=#f1f1f1  rules=cols>
				<tr>
					<td width="21%"  valign="top" >
						<div id="tubiao">	<img src="images/003.png"
								width="74" height="40" /><s:property value="myinfo.name" />
						</div>
						<hr />
						<p>可用额度：<s:property value="myinfo.creditLine" /></p>
					</td>

					<td width="79%" rowspan="3" bgcolor=#FFFFFF><table border="0" align="center"
							cellpadding="0" cellspacing="0" rules="none">
							<tr>
								<td>
									<form id="form1" name="form1" method="post"
										action="modifyaddress.action">
										<p>
											省市：&nbsp;&nbsp;&nbsp;&nbsp; <select name="province" id="province"
												size=1 onchange="getCity()">
												<option value="北京">北京</option>
												<option value="上海">上海</option>
												<option value="天津">天津</option>
												<option value="重庆">重庆</option>
												<option value="河北">河北</option>
												<option value="山西">山西</option>
												<option value="内蒙古">内蒙古</option>
												<option value="辽宁">辽宁</option>
												<option value="吉林">吉林</option>
												<option value="黑龙江">黑龙江</option>
												<option value="江苏">江苏</option>
												<option value="浙江">浙江</option>
												<option value="安徽">安徽</option>
												<option value="福建">福建</option>
												<option value="江西">江西</option>
												<option value="山东">山东</option>
												<option value="河南">河南</option>
												<option value="湖北">湖北</option>
												<option value="湖南">湖南</option>
												<option value="广东">广东</option>
												<option value="广西">广西</option>
												<option value="海南">海南</option>
												<option value="四川">四川</option>
												<option value="贵州">贵州</option>
												<option value="云南">云南</option>
												<option value="西藏">西藏</option>
												<option value="陕西">陕西</option>
												<option value="甘肃">甘肃</option>
												<option value="宁夏">宁夏</option>
												<option value="青海">青海</option>
												<option value="新疆">新疆</option>
												<option value="香港">香港</option>
												<option value="澳门">澳门</option>
												<option value=>台湾</option>
											</select><select name="city" id="city" style="width:80px">
											</select>
										<p>
											详细地址&nbsp;&nbsp; <input type="text" name="address"
												id="textfield2" style="width:200px;" />
										</p>
										<p>
											&nbsp; <input type="submit" name="button" id="button"
												value="确定" style="width:100px; height:30px;  " /> &nbsp; <input
												type="button" name="button2" id="button2" value="关闭"
												style="width:100px; height:30px;  "
												onclick="window.close();" />
										</p>
									</form></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
				
					<td  >
					
					<div id="firstpane" class="menu_list">
    <p class="menu_head current">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="getmoney.action">我的账单</a></p>

    <p class="menu_head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="getorder.action">我的订单</a></p>

    <p class="menu_head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="checkSafe.action">安全中心</a></p>
   
    <p class="menu_head">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="shopCart.action">我的购物车</a></p>
    
  
   </div>
					</td>
				</tr>
				<tr>
					<td height="60" ></td>
				</tr>
			</table>

		</div>
	</div>
</body>
</html>


