<%--
  Created by IntelliJ IDEA.
  User: kalpa
  Date: 2019/6/26
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员列表</title>
</head>
<body>
<table>
    <c:forEach var="admin" items="${requestScope.adminList}">
        <tr>
            <td><a href="${pageContext.request.contextPath}/admin/getAdminInfo?loginname=${admmin.loginname}">
                    ${admmin.loginname}</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="${pageContext.request.contextPath}">返回首页</a>
</body>
</html>
