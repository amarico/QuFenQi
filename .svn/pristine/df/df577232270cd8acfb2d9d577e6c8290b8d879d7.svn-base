<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>  
<link rel="stylesheet" href="css/cssRegist.css" type="text/css"></link>

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<script type="text/javascript" src="js/jsRegist.js"></script>

<script type="text/javascript" src="js/jquery.doubleSelect.js"></script>
</head>
<body>




    <div class="main">
        <div class="header">
            <img src="images/logo1.png" />

        </div>



        <div class="content">

            <div id="left">


                <form method="post" action="register.action">
                    <table>
                        <tr class="trHead">
                            <th colspan="2"><span>注册</span></th>
                        </tr>

                        <tr class="trSpace">
                            <td colspan="2">
                                <hr style="width: 103%; height: 1px; border: none; border-top: 1px solid #f04;" />
                            </td>
                        </tr>
                        <tr>
                            <td class="decory">手机号码：</td>
                            <td>
                                <input id="inputPhone" type="text" name="customer.userName" class="tetx" /></td>
                        </tr>

                        <tr>
                            <td class="decory">邮箱：</td>
                            <td>
                                <input id="inputEmail" type="email" name="customer.e_mail" class="tetx" /></td>
                        </tr>
                        <tr>
                            <td class="decory">名字：</td>
                            <td>
                                <input id="inputName" type="text" name="customer.name" class="tetx" /></td>
                        </tr>
                        <tr>
                            <td class="decory">所在省市：</td>
                            <td>
                                <select id="selectProvince" name="customer.province" size="1">
                                    <option value="">--</option>
                                </select>
                                <select id="selectCity" name="customer.city" size="1">
                                    <option value="">--</option>
                                </select>

                            </td>
                        </tr>
                        <tr>
                            <td class="decory">收货地址：</td>
                            <td>
                                <input id="inputAddress" type="text" name="customer.address" class="tetx" /></td>
                        </tr>
                        <tr>
                            <td class="decory">密码：</td>
                            <td>
                                <input id="inputPassword" type="password" name="customer.password" class="tetx" /></td>
                        </tr>
                        <tr>
                            <td class="decory">确认密码：</td>
                            <td>
                                <input id="inputRuquiredPassword" type="password" name="validPassword" class="tetx" /></td>
                        </tr>

                        <tr>
                            <td class="decory">图片验证码：</td>
                            <td>
                                <input type="text" name="pictureValid" id="inputPictureRegist" />
                                <input type="button" name="picture" id="picture" value="MMMM" />
                            </td>
                        </tr>

                        <tr class="tdAgree">
                            <td colspan="2">
                                <input id="inputAgreeMessage" type="checkbox" class="checkBox" value="11" />同意&nbsp;<a href="#">《趣分期用户注册协议》</a></td>
                        </tr>
                        <tr>

                            <td colspan="2">
                                <input id="btnSearch" type="submit" value="保  存" class="tetx_submit" /></td>
                        </tr>
                    </table>
                </form>
            </div>

            <div id="right" class="right">
                <h2>已经有趣分期账号?</h2>
                <p><a href="login.jsp">马上登录</a>  </p>
            </div>
            <div id="divWrongMessage" class="right">
                <h4>错误信息</h4>

                <hr style="width: 90%; height: 1px; border: none; border-top: 1px solid #ff3232; margin: 0px; margin-bottom: 5px; padding: 0px; left: 0px;" />

                <p id="pPhone">* 手机号码格式错误</p>
                <p id="pEmail">* 邮箱格式错误</p>
                <p id="pName">* 名字不能为空</p>
                <p id="pAddress">* 收货地址不能为空</p>
                <p id="pPassword">* 密码不能为空</p>
                <p id="pRuquiredPassword">* 确认密码不正确</p>
                <p id="pPictureRegist">* 图片验证码不正确</p>
                <p id="pAgreeMessage">* 请同意《趣分期用户注册协议》</p>
            </div>
        </div>

        <div class="tool">

            <a href="#">关于我们</a>&nbsp;|&nbsp;
                    <a href="#">加入我们 </a>&nbsp;|&nbsp;
                    <a href="#">联系我们</a>&nbsp;|&nbsp;
                    <a href="#">帮助中心</a>&nbsp;|&nbsp;
            客服电话:400-099-0707<br />

            Copyright © 2015 趣分期 Qufenqi.com 京ICP备14023095号-1<br />
            北京快乐时代科技发展有限公司 版权所有

        </div>

    </div>
</body>
</html>
