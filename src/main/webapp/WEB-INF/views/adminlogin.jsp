<%--
  Created by IntelliJ IDEA.
  User: kalpa
  Date: 2019/6/25
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>饱了吗管理员登录页面</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
    <style type=text/css>
        body {
            text-align: center;
            padding-bottom: 0px;
            background-color: #ddeef2;
            margin: 0px;
            padding-left: 0px;
            padding-right: 0px;
            padding-top: 0px
        }

        A:link {
            color: #000000;
            text-decoration: none
        }

        A:visited {
            color: #000000;
            text-decoration: none
        }

        A:hover {
            color: #ff0000;
            text-decoration: underline
        }

        A:active {
            text-decoration: none
        }

        .input {
            border-bottom: #ccc 1px solid;
            border-left: #ccc 1px solid;
            line-height: 20px;
            width: 182px;
            height: 20px;
            border-top: #ccc 1px solid;
            border-right: #ccc 1px solid
        }

        .input1 {
            border-bottom: #ccc 1px solid;
            border-left: #ccc 1px solid;
            line-height: 20px;
            width: 120px;
            height: 20px;
            border-top: #ccc 1px solid;
            border-right: #ccc 1px solid;
        }
    </style>
    <script type="text/javascript">
        function login() {
            var loginname = $("#loginname").val();
            var password = $("#password").val();
            if (loginname == null || loginname == "") {
                alert("管理员不能为空！");
                return;
            }
            if (password == null || password == "") {
                alert("密码不能为空！");
                return;
            }
            $("#adminlogin").submit();

        }
    </script>
</head>
<body>
<form id=adminlogin method=post
      name=adminlogin action="${pageContext.request.contextPath}/admin/adminlist">
    <div></div>
    <table style="margin: auto; width: 100%; height: 100%" border=0
           cellSpacing=0 cellpadding=0>
        <tbody>
        <TR>
            <TD height=150>&nbsp;</TD>
        </TR>
        <tr style="height: 254px">
            <td>
                <div style="MARGIN: 0px auto; WIDTH: 936px"></div>
                <div style="background-color: #278296">
                    <div style="margin: 0px auto; width: 936px">
                        <div
                                style="background: url(${pageContext.request.contextPath}/images/AdminLogin.jpg) no-repeat; height: 155px">
                            <div
                                    style="text-align: left; width: 265px; FLOAT: right; height: 125px; _height: 95px">
                                <table border=0 cellSpacing=0 cellpadding=0 width="100%">
                                    <tbody>
                                    <tr>
                                        <td style="height: 45px"><input type="text" class=input
                                                                        value="${admin.loginname }" name="loginname"
                                                                        id="loginname"></td>
                                    </tr>
                                    <tr>
                                        <td><input type="password" class=input value="${admin.password }" name="password"
                                                   id="password"/></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div style="height: 1px; CLEAR: both"></div>
                            <div style="width: 380px; FLOAT: right; CLEAR: both">
                                <table border=0 cellSpacing=0 cellpadding=0 width=300>
                                    <tbody>

                                    <tr>
                                        <td width=100 align=right><input
                                                style="border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px"
                                                id=btnLogin src="${pageContext.request.contextPath}/images/btn1.jpg"
                                                type=image name=btnLogin onclick="javascript:login();return false;">
                                        </td>
                                        <td width=100 align=middle><input
                                                style="border-right-width: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px"
                                                id=btnReset src="${pageContext.request.contextPath}/images/btn2.jpg"
                                                type=image name=btnReset
                                                onclick="javascript:adminlogin.reset();return false;"></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr style="height: 30%">
            <td>&nbsp;</td>
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>
