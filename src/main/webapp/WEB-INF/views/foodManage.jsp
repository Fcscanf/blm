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
        var pic;

        function searchFood() {
            $("#dg").datagrid('load', {
                "foodname": $("#s_foodname").val()
            });
        }

        /*打开添加商品栏*/
        function openFoodAddDialog() {
            $("#dlg").dialog("open").dialog("setTitle", "添加商品信息");
        }

        /*保存商品*/
        function save() {
            var foodname = $("#foodname").val().trim();
            var othername = $("#othername").val().trim();
            var price = $("#price").val().trim();
            var description = $("#description").val().trim();
            var picpath = pic;
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/foodDetail/save",
                dataType: "json",
                headers: {'Content-Type': 'application/json'},
                data: JSON.stringify({
                    "foodname": foodname,
                    "othername": othername,
                    "price": price,
                    "description": description,
                    "picpath": picpath
                }),
                success: function (result) {
                    console.info(result.code)
                    if (result.success) {
                        $.messager.alert("系统提示", "保存成功！");
                        resetValue();
                        $("#dlg").dialog("close");
                        $("#dg").datagrid("reload");
                    }
                },
                error: function () {
                    $.messager.alert("系统提示", "保存失败！");
                    return;
                }
            })

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

        function closeFoodModify() {
            $("#modify").dialog("close");
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
            $("#modify").dialog("open").dialog("setTitle", "编辑商品信息");

           $("#mdf").form("load", row);
               }

        function saveFood() {
           /* $("#mdf").form("submit", {
                url: url,
                onSubmit: function () {
                    return $(this).form("validate");
                },
                success: function (result) {
                    var result = eval('(' + result + ')');
                    if (result.success) {
                        $.messager.alert("系统提示", "保存成功！");
                        resetValue();
                        $("#modify").dialog("close");
                        $("#dg").datagrid("reload");
                    } else {
                        $.messager.alert("系统提示", "保存失败！");
                        return;
                    }
                }
            });*/
           var foodid=$("#foodidmodify").val();
            var foodname = $("#foodnamemodify").val().trim();
            var othername = $("#othernamemodify").val().trim();
            var price = $("#pricemodify").val().trim();
            var description = $("#descriptionmodify").val().trim();
           console.info(foodid)
            console.info(foodname)
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/foodDetail/save",
                dataType: "json",
                headers: {'Content-Type': 'application/json'},
                data: JSON.stringify({
                    "foodid":foodid,
                    "foodname": foodname,
                    "othername": othername,
                    "price": price,
                    "description": description,

                }),
                success: function (result) {
                    console.info(result.code)
                    if (result.success) {
                        $.messager.alert("系统提示", "保存成功！");
                        resetValue();
                        $("#modify").dialog("close");
                        $("#dg").datagrid("reload");
                    }
                },
                error: function () {
                    $.messager.alert("系统提示", "保存失败！");
                    return;
                }
            })

        }



        /*删除商品*/
        function deleteFood() {
            var selectedRows = $("#dg").datagrid("getSelections");
            if (selectedRows.length == 0) {
                $.messager.alert("系统提示", "请选择要删除的数据！");
                return;
            }
            var strIds = [];
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


        /*上传图片的Ajax*/
        function upload() {
            var formData = new FormData();
            var logo_file = document.getElementById("picpath");
            var logoFileObj = logo_file.files[0];
            formData.append("pic", logoFileObj);
            console.info(logoFileObj);
            console.info(formData);
            $.ajax({
                url: "${pageContext.request.contextPath}/user/certurl",
                type: 'post',
                data: formData,
                dataType: "json",
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (result) {
                    /* console.info(result)*/
                    pic = result.data;
                    console.info("success")

                },
                error: function (result) {
                    console.info("error")
                }
            });

        }


        /*加载图片*/
        function imgFormatter(value, row, index) {
            if ('' != value && null != value)
                value = '<img style="width:30px; height:30px;align:center" src="' + value + '">';
            return value;
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
        <th field="foodid"  width="50" align="center" hidden="true">编号</th>
        <th field="foodname" width="50" align="center">商品</th>
        <th field="othername" width="50" align="center">别名</th>
        <th field="price" width="50" align="center">价格</th>
        <th field="description" width="100" align="center">描述</th>
        <th data-options="field:'picpath',width:50, height:100,formatter: imgFormatter">如图</th>
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

<div id="dlg" class="easyui-dialog" style="width:640px;height:360px;padding: 10px 20px"
     closed="true" buttons="#dlg-buttons">
    <form id="fm" method="post" enctype="multipart/form-data">
        <table cellspacing="8px">
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
            <tr>
                <td>如图：</td>
                <td><input type="file" id="picpath" name="picpath" class="easyui-validatebox"
                           required="true"/>&nbsp;<font
                        color="red">*</font>
                </td>
                <td>
                    <a href="javascript:upload()" class="easyui-linkbutton" iconCls="icon-ok"></a>
                </td>
            </tr>
        </table>
    </form>
</div>

<div id="dlg-buttons">
    <a href="javascript:save()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
    <a href="javascript:closeFoodDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>



<div id="modify" class="easyui-dialog" style="width:600px;height:300px;padding: 10px 20px"
     closed="true" buttons="#modify-buttons">
    <form id="mdf" method="post" >
        <table cellspacing="8px">
            <tr>
                <td><input type="text" style="display: none;" id="foodidmodify" name="foodid" class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red"></font></td>
            </tr>
            <tr>
                <td>商品：</td>
                <td><input type="text" id="foodnamemodify" name="foodname" class="easyui-validatebox"
                           required="true"/>&nbsp;<font color="red">*</font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>别名：</td>
                <td><input type="text" id="othernamemodify" name="othername" class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font></td>
            </tr>
            <tr>
                <td>价格：</td>
                <td><input type="text" id="pricemodify" name="price" class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>描述：</td>
                <td><input type="text" id="descriptionmodify" name="description" class="easyui-validatebox" required="true"/>&nbsp;<font
                        color="red">*</font></td>
            </tr>
        </table>
    </form>
</div>

<div id="modify-buttons">
    <a href="javascript:saveFood()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
    <a href="javascript:closeFoodModify()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>



</body>
</html>