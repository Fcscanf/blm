<%--
  Created by IntelliJ IDEA.
  User: wang
  Date: 2019/6/22
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userlogin.css">
    <script src="${pageContext.request.contextPath}/js/userlogin.js"></script>


</head>
<body class="login">
<div class="header">
    <div class="header_center">
        <div class="header_logo">
            <span class="iconfont icon-shiwu"></span>
            <h1 class="logoname">饱了吗</h1>

        </div>
        <span class="line">|</span>
        <span class="logo_name">用户登录</span>

    </div>
    <div class="bg">
        <div class="bg_center">
            <div class="loginbox">
                <div class="userAccountLogin">
                    <div class="h">
                        <a href="#" class="titleleft">账号登录</a>
                        <a href="#" class="titleright">验证码登录</a>
                    </div>
                    <div class="errormessage_wrap"><span class="errormessage1">请输入正确的手机号</span>
                        <span class="errormessage2">密码中必须包含字母、数字</span>
                        <span class="errormessage3">密码应为8-16位</span>
                    </div>
                    <div class="table1">
                        <table>
                            <tr>
                                <td>
                                    <input type="text" id="username1" placeholder="请输入用户名">
                                    <input type="password" class="password" placeholder="请输入密码">
                                </td>
                            </tr>
                            <tr>
                                <td class="message_warp">
                                    <!--<a href="#" class="changeLoginType" >短信验证码登录</a>-->
                                </td>
                            </tr>
                            <tr>
                                <td class="login_wrap">
                                    <a href="javascript:void(0);" class="button_login1">登录</a>

                                </td>

                            </tr>
                            <tr>
                                <td class="check_box">
                                    <div class="remember_name">
                                        <input type="checkbox" class="checkmessage">
                                        <span class="remember_name_message"> 记住饱了吗账户</span>
                                    </div>
                                    <span class="more"></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="mt_link">
                                    <a href="#" class="register">注册账号</a>
                                    <a href="#" class="forget">忘记密码</a>

                                </td>

                            </tr>
                        </table>

                    </div>
                    <div class="table2">
                        <table>
                            <tr>
                                <td>
                                    <input type="text" id="username2" placeholder="请输入用户名">
                                    <input type="text" class="validate" placeholder="验证码">
                                    <div class="validateLogin_send"><a href="#" class="sendms">获取验证码</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td class="message_warp">
                                    <!--      <a href="#" class="changeLoginType" >短信验证码登录</a>-->
                                </td>
                            </tr>
                            <tr>
                                <td class="login_wrap">
                                    <a href="javascript:void(0)" class="button_login2">登录</a>

                                </td>

                            </tr>
                            <tr>
                                <td class="check_box">
                                    <div class="remember_name">
                                        <input type="checkbox" class="checkmessage">
                                        <span class="remember_name_message"> 记住饱了吗账户</span>
                                    </div>
                                    <span class="more"></span>
                                </td>
                            </tr>
                            <tr>
                                <td class="mt_link">
                                    <a href="#" class="register">注册账号</a>
                                    <a href="#" class="forget">忘记密码</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>
