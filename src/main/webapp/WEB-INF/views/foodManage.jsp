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
    <script type="text/javascript">

        var url;

        function searchFood() {
            $("#dg").datagrid('load', {
                "foodname": $("#s_foodname").val()
            });
        }

        /*添加商品*/
        function openFoodAddDialog() {
            $("#dlg").dialog("open").dialog("setTitle", "添加商品信息");
            url = "${pageContext.request.contextPath}/foodDetail/save";
        }


        function saveFood() {
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
            $("#foodname").val("");
            $("#othername").val("");
            $("#price").val("");
            $("#description").val("");

        }

        function closeFoodDialog() {
            $("#dlg").dialog("close");
            resetValue();
        }


        /*修改商品*/
        function openFoodModifyDialog() {
            var selectedRows = $("#dg").datagrid("getSelections");
            if (selectedRows.length != 1) {
                $.messager.alert("系统提示", "请选择一条要编辑的数据！");
                return;
            }
            var row = selectedRows[0];
            $("#dlg").dialog("open").dialog("setTitle", "编辑商品信息");
            $("#fm").form("load", row);
            url = "${pageContext.request.contextPath}/foodDetail/save?id=" + row.id;
        }


        function deleteFood() {
            var selectedRows = $("#dg").datagrid("getSelections");
            if (selectedRows.length == 0) {
                $.messager.alert("系统提示", "请选择要删除的数据！");
                return;
            }
            var strIds = [];
            console.log(selectedRows.length);
            for (var i = 0; i < selectedRows.length; i++) {
                strIds.push(selectedRows[i].foodid);
                /*获取foodid*/
            }
            var ids = strIds.join();
            $.messager.confirm("系统提示", "您确定要删除这<font color=red>" + selectedRows.length + "</font>条数据吗？", function (r) {
                if (r) {
                    $.post("${pageContext.request.contextPath}/foodDetail/delete", {ids: ids}, function (result) {
                        if (result.success) {
                            $.messager.alert("系统提示", "数据已成功删除！");
                            $("#dg").datagrid("reload");
                        } else {
                            $.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
                        }
                    }, "json");
                }
            });
        }

        /*加载图片*/
        function imgFormatter(value,row,index){
            if('' != value && null != value)
                value = '<img style="width:30px; height:30px;align:center" src="' + value + '">';
            return  value;
        }
    </script>
    <title>Insert title here</title>
</head>
<body style="margin: 1px">
<table id="dg" title="商品管理" class="easyui-datagrid"
       fitColumns="true" pagination="true" rownumbers="true"
       url="${pageContext.request.contextPath}/foodDetail/list" fit="true" toolbar="#tb">
    <thead>
    <tr>
        <th field="cb" checkbox="true" align="center"></th>
        <th field="foodname" width="50" height="50" align="center">商品</th>
        <th field="othername" width="50" height="50" align="center">别名</th>
        <th field="price" width="50" height="50" align="center">价格</th>
        <th field="description" width="100" height="50" align="center">描述</th>
        <th data-options="field:'picpath',width:100, height:50,formatter: imgFormatter">如图</th>
    </tr>
    </thead>
</table>
<div id="tb">
    <div>
        <a href="javascript:openFoodAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
        <a href="javascript:openFoodModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
        <a href="javascript:deleteFood()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
    </div>
    <div>
        &nbsp;用户名：&nbsp;<input type="text" id="s_foodname" size="20" onkeydown="if(event.keyCode==13) searchFood()"/>
        <a href="javascript:searchFood()" class="easyui-linkbutton" iconCls="icon-search" plain="true">搜索</a>
    </div>
</div>

<div id="dlg" class="easyui-dialog" style="width:620px;height:250px;padding: 10px 20px"
     closed="true" buttons="#dlg-buttons">

    <form id="fm" method="post">
        <table cellspacing="8px">
            <tr>
                <td >商品编号：</td>
                <td><input type="text" id="foodid" name="foodid" class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font></td>
            </tr>
            <tr>
                <td>商品：</td>
                <td><input type="text" id="foodname" name="foodname" class="easyui-validatebox"
                           required="true"/>&nbsp;<font color="red">*</font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>别名：</td>
                <td><input type="text" id="othername" name="othername" class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font></td>
            </tr>
            <tr>
                <td>价格：</td>
                <td><input type="text" id="price" name="price" class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>描述：</td>
                <td><input type="text" id="description" name="description" class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font></td>
            </tr>

        </table>
    </form>
</div>

<div id="dlg-buttons">
    <a href="javascript:saveFood()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
    <a href="javascript:closeFoodDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>
</body>
</html>