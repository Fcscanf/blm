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
</head>
<body>
<h3>用户登录</h3><br>
<form name="form" method="post" action="${pageContext.request.contextPath}/admin/validateUser">
    <table>
        <tr>
            <td><label>管理员用户名：</label></td>
            <td><input type="text" name="userName"></td>
        </tr>
        <tr>
            <td><label>管理员密码：</label></td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td><input id="submit" type="submit" value="登录"></td>
            <td><a href="${pageContext.request.contextPath}">返回首页</a></td>
        </tr>
    </table>
</form>
</body>
</html>
