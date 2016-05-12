<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>支付宝支付</title>

	</head>
	<body>
		<form name="alipay_direct" action="pay.action" method="post">
			<table width="100%" border="0" >
				<tr>
					<th colspan="2" scope="col">
						<a href="http://www.alipay.com" target="_blank"><img
								src="images/logo.gif" border="0" align='left' /> </a>
					</th>
				</tr>
				<tr>
					<td colspan="2" height="2" bgcolor="#ff7300"></td>
				</tr>
				<tr>
					<td width="16%" align="right">
						订单号：
					</td>
					<td width="84%">
						<input type="text" name="orderid" id="orderid" value="<s:property value='order.orderId' />" >
					</td>
				</tr>
				<tr>
					<td width="16%" align="right">
						商品名称：
					</td>
					<td width="84%">
						<input type="text" name="goodName" id="goodName" value="<s:property value='order.shop' />" >
					</td>
				</tr>
				<tr>
					<td width="16%" align="right">
						商品描述：
					</td>
					<td width="84%">
						<input type="text" name="goodBody" id="goodBody" value="<s:property value='order.content' />">
					</td>
				</tr>
				<tr>
					<td width="16%" align="right">
						首付金额：
					</td>
					<td width="84%">
						<input type="text" name="goodPrice" id="goodPrice" value="<s:property value='order.firstPay' />">
					</td>
				</tr>
				<tr>
					<td width="16%" align="right">
						选择默认支付选项卡：
					</td>
					<td width="84%">
						<table>
							<tr>
								<td>
									<input type="radio" name="paymethod_1" value="directPay"
										checked>
									支付宝余额支付
								</td>
								<td>
									<input type="radio" name="paymethod_1" value="bankPay">
									网银支付
								</td>
								<td>
									<input type="radio" name="paymethod_1" value="cartoon">
									支付宝卡通支付
								</td>
							</tr>
						</table>
						<input type="hidden" name="paymethod" id="paymethod" />
					</td>
				</tr>

				<tr>
					<td width="16%" align="right">
						选择默认银行：
					</td>
					<td width="84%">
						<table>
							<tr>
								<td>
									<input type="radio" name="defaultbank_1" value="CMB" checked>
									<img src="images/icon_zsyh_s.gif" border="0" />
								</td>
								<td>
									<input type="radio" name="defaultbank_1" value="ICBCB2C">
									<img src="images/icon_zggsyh_s.gif" border="0" />
								</td>
								<td>
									<input type="radio" name="defaultbank_1" value="CCB">
									<img src="images/icon_ccb_s.gif" border="0" />
								</td>
							</tr>
							<tr>
								<td>
									<input type="radio" name="defaultbank_1" value="ABC">
									<img src="images/icon_abc_s.gif" border="0" />
								</td>
								<td>
									<input type="radio" name="defaultbank_1" value="SPDB">
									<img src="images/icon_spdb_s.gif" border="0" />
								</td>
								<td>
									<input type="radio" name="defaultbank_1" value="POSTGC">
									<img src="images/POSTGC.jpg" border="0" />
								</td>
							</tr>
							<tr>
								<td>
									<input type="radio" name="defaultbank_1" value="CITIC">
									<img src="images/icon_itic_s.gif" border="0" />
								</td>
								<td>
									<input type="radio" name="defaultbank_1" value="CIB">
									<img src='images/index_38.gif' border="0" />
								</td>
								<td>
									<input type="radio" name="defaultbank_1" value="GDB">
									<img src="images/icon_gdb_s.gif" border="0" />
								</td>
							</tr>
							<tr>
								<td>
									<input type="radio" name="defaultbank_1" value="SDB">
									<img src="images/icon_sdb_s.gif" border="0" />
								</td>
								<td>
									<input type="radio" name="defaultbank_1" value="CMBC">
									<img src="images/icon_cmbc_s.gif" border="0" />
								</td>
								<td>
									<input type="radio" name="defaultbank_1" value="COMM">
									<img src="images/icon_comm_s.gif" border="0" />
								</td>
							</tr>
						</table>
						<input type="hidden" name="defaultbank" id="defaultbank" />
					</td>
				</tr>

				<tr>
					<td align="right">
						操作：
					</td>
					<td>
						<input type="submit" style="width:100px; height:30px; " name="submit" value="支付宝付款"/>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
