<%--
  Created by IntelliJ IDEA.
  User: 周宇
  Date: 2019/6/22
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript">
        function searchOrder() {
            $("#dg").datagrid('load', {
                "username": $("#s_username").val()
            });
        }

        function deleteOrder() {
            var selectonRows = $("#dg").datagrid("getSelections");
            /*获取选中的行数*/
            if (selectonRows.length == 0) {
                $.messager.alert("系统提示", "请选择要删除的订单！");
                return;
            }
            var strIds = [];
            /*定义一个数组用来接受选中行的orderid*/
            for (var i = 0; i < selectonRows.length; i++) {
                strIds.push(selectonRows[i].orderid);
            }
            var ids = strIds.join();
            $.messager.confirm("系统提示", "您确定要删除这<font color=red>" + selectonRows.length + "</font>条数据吗？", function (r) {
                if (r) {
                    $.post("${pageContext.request.contextPath}/order/delete", {ids: ids}, function (result) {
                        if (result.success) {
                            $.messager.alert("系统提示", "订单删除成功！");
                            $("#dg").datagrid("reload");
                        } else {
                            $.messager.alert("系统提示", "订单删除失败，请联系管理员！");
                        }
                    }, "json")
                }
            });
        }
    </script>

    <title>客户历史订单</title>
</head>

<body style="margin: 1px">
<table id="dg" title="订单管理" class="easyui-datagrid"
       fitColumns="true" pagination="true" rownumbers="true"
       url="${pageContext.request.contextPath}/order/list" fit="true" toolbar="#tb">
    <thead>
    <tr>
        <th field="cb" checkbox="true" align="center"></th>
        <th field="username" width="50" align="center">用户名</th>
        <th field="foodname" width="50" align="center">商品</th>
        <th field="totalprice" width="50" align="center">总价</th>
        <th field="date" width="50" align="center">时间</th>
        <th field="remark" width="50" align="center">评价</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <div>
        <a href="javascript:deleteOrder()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
    </div>
    <div>
        &nbsp;用户名：&nbsp;<input type="text" id="s_username" size="20" onkeydown="if(event.keyCode==13) searchOrder()"/>
        <a href="javascript:searchOrder()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
    </div>
</div>

</body>
</html>