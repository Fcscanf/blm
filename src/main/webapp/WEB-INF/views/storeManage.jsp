<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <script type="text/javascript">/*load方法，把userName传回去，获取查询到的记录*/
    var url;

    function search() {
        $("#dg").datagrid('load', {
            "storename": $("#s_storename").val()
        });
    }


    function openStoreModifyDialog() {
        var selectedRows = $("#dg").datagrid("getSelections");
        if (selectedRows.length != 1) {
            $.messager.alert("系统提示", "请选择一条要编辑的数据！");
            return;
        }
        var row = selectedRows[0];
        $("#dlg").dialog("open").dialog("setTitle", "编辑店面信息");
        $("#fm").form("load", row);
        url = "${pageContext.request.contextPath}/store/update?id=" + row.id;
    }

    function save() {
        $("#fm").form("submit", {
            url: url,
            onSubmit: function () {
                return $(this).form("validate");
            },
            success: function (result) {
                var result = eval('(' + result + ')');
                if (result.success) {
                    $.messager.alert("系统提示", "保存成功！");
                    resetValue();
                    $("#dlg").dialog("close");
                    $("#dg").datagrid("reload");
                } else {
                    $.messager.alert("系统提示", "保存失败！");
                    return;
                }
            }
        });
    }

    function resetValue() {
        $("#tel").val("");
        $("#email").val("");
        $("#storename").val("");
        $("#storeaddress").val("");
        $("#certrul").val("");
        $("#shopfronturl").val("");
        $("#area").val("");
    }

    function closeUserDialog() {
        $("#dlg").dialog("close");
        resetValue();
    }


    /* function formartOper(val, row, index){
         return '<a href="#" onclick="">分配角色</a>';
     }*/


    </script>

    <title>Insert title here</title>
</head>
<body style="margin: 1px">
<table id="dg" title="用户管理" class="easyui-datagrid"
       fitColumns="true" pagination="true" rownumbers="true"
       url="${pageContext.request.contextPath}/store/list" fit="true" toolbar="#tb">
    <thead>
    <tr>
        <th field="cb" checkbox="true" align="center"></th>
        <th field="id" width="50" align="center">编号</th>
        <th field="tel" width="50" align="center">电话</th>
        <th field="email" width="50" align="center">邮箱</th>
        <th field="storename" width="50" align="center">店名</th>
        <th field="storeaddress" width="50" align="center">店面地址</th>
        <th field="certrul" width="50" align="center">证书</th>
        <th field="shopfronturl" width="50" align="center">店面商标</th>
        <th field="area" width="50" align="center">服务地区</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <div>
        <a href="javascript:openStoreModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改商家信息</a>

        <%--		<a href="javascript:openUserAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
         <a href="javascript:deleteUser()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>--%>
    </div>
    <div>
        &nbsp;店名：&nbsp;<input type="text" id="s_storename" size="20" onkeydown="if(event.keyCode==13) search()"/>
        <a href="javascript:search()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
    </div>
</div>

<div id="dlg" class="easyui-dialog" style="width:620px;height:250px;padding: 10px 20px"
     closed="true" buttons="#dlg-buttons">

    <form id="fm" method="post" enctype="multipart/form-data">
        <table cellspacing="8px">
            <tr>
                <td>电话：</td>
                <td><input type="text" id="tel" name="tel" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>邮件：</td>
                <td><input type="text" id="email" name="email" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
            </tr>
            <tr>
                <td>店名：</td>
                <td><input type="text" id="storename" name="storename" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>地址：</td>
                <td><input type="text" id="storeaddress" name="storeaddress" class="easyui-validatebox" validType="email" required="true"/>&nbsp;<font color="red">*</font></td>
            </tr>
            <tr>
                <td>证书：</td>
                <td><input type="file" id="certrul" name="certrul" class=class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>商标：</td>
                <td><input type="file" id="shopfronturl" name="shopfronturl" class=class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
            </tr>
            <tr>
                <td>服务地址：</td>
                <td><input type="text" id="area" name="area" class="easyui-validatebox" required="true"/>&nbsp;<font color="red">*</font></td>
            </tr>
        </table>
    </form>
</div>

<div id="dlg-buttons">
    <a href="javascript:save()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
    <a href="javascript:close()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>
</body>
</html>