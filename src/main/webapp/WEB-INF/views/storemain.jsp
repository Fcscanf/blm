<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>饱了吗订餐系统</title>
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
        function openTab(text, url, iconCls) {
            if ($("#tabs").tabs("exists", text)) {/*若tabs已打开*/
                $("#tabs").tabs("select", text);
            } else {
                var content = "<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='${pageContext.request.contextPath}/foodDetail/" + url + "'></iframe>";
                $("#tabs").tabs("add", {
                    title: text,
                    iconCls: iconCls,
                    closable: true,
                    content: content
                });
            }

        }

    </script>
</head>
<body class="easyui-layout">
<div region="north" style="height: 78px;background-color: #E0ECFF">
    <table style="padding: 5px" width="100%">
        <tr>
            <td width="50%">
                <img alt="logo" src="${pageContext.request.contextPath}/images/bglogo.png">
            </td>
            <td valign="bottom" align="right" width="50%">
                <font size="3">&nbsp;&nbsp;<strong>欢迎：</strong>${currentUser.username }</font><br>
                <font size="3">&nbsp;&nbsp;<strong>电话：</strong>${resultStoreDetail.tel}</font>
            </td>
        </tr>
    </table>
</div>

<div region="center">
    <div class="easyui-tabs" fit="true" border="false" id="tabs">
        <div title="首页" data-options="iconCls:'icon-home'">
            <div align="center" style="padding-top: 100px"><font color="red" size="10">欢迎使用<br>"饱了吗"订餐系统</font></div>
        </div>
    </div>
</div>

<div region="west" style="width: 200px" title="导航菜单" split="true">
    <div class="easyui-accordion" data-options="fit:true,border:false">
        <div title="商家管理" data-options="iconCls:'icon-jcsjgl'" style="padding:10px">
            <a href="javascript:openTab('商品管理','foodManage','icon-user')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-user'" style="width: 150px;">商品管理</a>
        </div>

        <div title="客户管理" data-options="iconCls:'icon-khgl'" style="padding:10px;">
            <a href="javascript:openTab('客户订单管理','customerOrder','icon-khxxgl')" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-khxxgl'" style="width: 150px;">客户订单管理</a>
        </div>

        <div title="系统管理" data-options="iconCls:'icon-item'" style="padding:10px">
            <a href="javascript:openPasswordModifyDialog()" class="easyui-linkbutton"
               data-options="plain:true,iconCls:'icon-modifyPassword'" style="width: 150px;">修改密码</a>
            <a href="javascript:logout()" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-exit'"
               style="width: 150px;">安全退出</a>
        </div>
    </div>
</div>

<div region="south" style="height: 25px;padding: 5px" align="center">
    QST青软实训&nbsp;&nbsp;&nbsp;<a href="tencent://AddContact/?fromId=45&fromSubId=1&subcmd=all&uin=1297799065&website=www.oicqzone.com" target="_blank">执笔画倾颜</a>&nbsp;&nbsp;&nbsp;联系方式:13912852257(2019/6/19)
</div>

</body>
</html>