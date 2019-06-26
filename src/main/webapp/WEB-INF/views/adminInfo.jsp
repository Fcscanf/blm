<%--
  Created by IntelliJ IDEA.
  User: kalpa
  Date: 2019/6/26
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员基本信息</title>
</head>
<body>
<form name="userInfo" action="${pageContext.request.contextPath}/user/updateAdmin" method="post">
    <table>
        <tr>
            <td>管理员登录名：<input type="hidden" name="adminid" value="${requestScope.admin.adminId }"></td>
            <td><input type="text" name="loginname" readonly value="${requestScope.admin.loginname}"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password" value="${requestScope.admin.password}"></td>
        </tr>
        <tr>
            <td><input type="submit" value="修改"></td>
            <td><a href="${pageContext.request.contextPath}/admin/adminlist">返回用户列表</a> <br></td>
        </tr>
    </table>
</form>
</body>
</html>
