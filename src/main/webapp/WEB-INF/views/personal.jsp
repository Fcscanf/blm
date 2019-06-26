<%--
  Created by IntelliJ IDEA.
  User: 有一天
  Date: 2019/6/25
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人管理</title>
    <link rel="stylesheet" href="../css/personal.css">
    <link rel="stylesheet" href="../font_blm/iconfont.css">
    <script src="../js/jquery-3.4.1.min.js"></script>
    <script src="../js/personal.js" defer></script>
</head>
<body>
<div class="blm-container">
    <div class="blm-header">
        <div class="hd-container">
            <div class="hd-logo">
                <span class="iconfont icon-shiwu"></span>
                <h1 class="title">饱了吗</h1>
            </div>

            <div class="list-title">
                <a href="#" class="index">首页</a>
                <a href="#" class="myorder">我的订单</a>
                <a href="#" class="myorder">我的客服</a>
            </div>

            <div class="user-info">
                <span class="user-name">yyt12345</span>
                <span class="iconfont icon-tubiao211"></span>

                <div class="targetList">
                    <div class="small-span"></div>
                    <ul>
                        <li>
                            <span class="iconfont icon-user"></span>
                            <span class="">个人中心</span>
                        </li>
                        <li>
                            <span class="iconfont icon-jiahao"></span>
                            <span class="">我的地址</span>
                        </li>
                        <li>
                            <span class="iconfont icon-tuichu1"></span>
                            <span class="">退出登录</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="blm-place">
        <div class="place-container">
            <div class="now-place">
                <span class="pSpan-1">当前位置：</span>
                <span class="pSpan-2">南通123翔安隧道</span>
                <span class="pSpan-3"><a href="javascript:void(0);">[切换地址]</a></span>
                <span class="pSpan-4">&gt;搜索</span>
            </div>
        </div>
    </div>

    <div class="blm-wrap">
        <div class="wrap-container clearfix">
            <div class="wrap-left" >
                <ul class="sidebar">
                    <li><span class="iconfont icon-user"></span>个人中心</li>
                    <li><span class="iconfont icon-tubiaolunkuo-"></span >我的订单
                        <ul>
                            <li><a>近三个月的订单</a></li>
                        </ul>
                    </li>
                    <li><span class="iconfont icon-guanli"></span>个人管理
                        <ul>
                            <li><a>地址管理</a></li>
                            <li><a>个人资料</a></li>
                            <li><a>我的红包</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="wrap-right">
                <!-- 个人中心首页-->
                <div class="personal-center"  style="">
                    <div class="header-box clearfix">
                        <div class="header-item">
                            <div class="imgBox"><img src="img/sm-icon/personal.png" alt=""></div>
                            <div class="info">
                                <p class="user-info">你好，<strong class="user-name">1234</strong></p>
                                <p class="say-some">不出门，也可以享受一天的美食哦！</p>
                            </div>
                        </div>
                        <div class="header-item">
                            <div>我的红包</div>
                            <div class="packet"><span class="num">1</span>个</div>
                        </div>
                    </div>

                </div>
                <div class="recent-order"  style="display: none;">
                    <div class="order-header clearfix">
                        <a href="javascript:void(0);" class="recent-ticket">最近订单</a>
                        <a href="" class="all-ticket">查看全部订单&gt;</a>
                    </div>
                    <div class="load-more">正在加载项目...</div>
                    <div class="order-item">
                        <div class="order-rst clearfix">
                            <a class="logo" href="">
                                <img src="img/food01.png" alt="">
                            </a>
                            <div class="info">
                                <h3 class="name"><a href="">黄门鸡米饭</a></h3>
                                <p class="product">黄米鸡米饭套餐包含米饭1份</p>
                                <a class="productnum">共<i class="num">1</i>个菜品&gt;</a>
                            </div>
                        </div>
                        <div class="order-time">
                            2019-06-16 18:26
                        </div>
                        <div class="order-price">
                            <p class="cost">￥24.80</p>
                        </div>
                        <div class="order-status">
                            <p class="status">订单已完成</p>
                            <a class="link" href="">订单详情</a>
                        </div>
                    </div>
                </div>

                <!-- 订单详情页 -->
                <div class="order-detail" style="display: none;">
                    <div class="detail-title">
                        <h3>订单详情</h3>
                    </div>
                    <div class="show-status">
                        <h5>订单已送达</h5>
                        <p>18：29送达</p>
                    </div>
                    <div class="detail-shop">
                        <a href=""><img src="img/food02.png" alt=""></a>
                        <div class="shop-info">
                            <h4>小明便当</h4>
                            <div class="ticket-info">
                                <span>订单编号：1234</span>
                                <span>商家电话：13046770635</span>
                            </div>
                        </div>
                    </div>
                    <div class="detail-content clearfix">
                        <div class="diet-list">
                            <div class="diet-title">
                                <span class="cell-name">菜品</span>
                                <span class="cell-quanity">数量</span>
                                <span class="cell-price">小计(元)</span>
                            </div>
                            <div class="diet-row">
                                <span class="cell-name">无锡小笼八只</span>
                                <span class="cell-quanity">1</span>
                                <span class="cell-price">24.00</span>
                            </div>
                            <div class="diet-row">
                                <span class="cell-name">无锡小笼八只</span>
                                <span class="cell-quanity">1</span>
                                <span class="cell-price">24.00</span>
                            </div>
                            <div class="diet-row">
                                <span class="cell-name">无锡小笼八只</span>
                                <span class="cell-quanity">1</span>
                                <span class="cell-price">24.00</span>
                            </div>
                            <div class="song-row">
                                <span class="cell-name">餐盒费</span>
                                <span class="cell-quanity"></span>
                                <span class="cell-price">0.00</span>
                            </div>
                            <div class="song-row">
                                <span class="cell-name">配送费</span>
                                <span class="cell-quanity"></span>
                                <span class="cell-price">0.00</span>
                            </div>
                            <div class="real-pay">
                                实际支付：<span class="pay-num">40.5</span>
                            </div>
                        </div>

                        <div class="piao-list">
                            <h5>配送信息</h5>
                            <div class="group">
                                <p>配送方式：盛鑫源小笼馄饨(春雷店)提供配送服务</p>
                                <p>送达时间：尽快送出</p>
                            </div>
                            <div class="group">
                                <p>联 系 人：虞育涛(先生)</p>
                                <p>送达时间：尽快送出</p>
                                <p>收货地址：蓉阳苑21-24号蓉阳苑8－21 602</p>
                            </div>
                            <div class="group">
                                <p>发票信息：无发票 </p>
                                <p>备 注：	无备注</p>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- 近三个月的订单 -->
                <div class="recent-order" style="display: none;">
                    <div class="r-header">
                        <h3>近三个月的订单</h3>
                    </div>
                    <div class="r-content">
                        <table class="r-table">
                            <thead>
                            <tr>
                                <th>下单时间</th>
                                <th>订单内容</th>
                                <th></th>
                                <th>支付金额（元）</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="ro-time">
                                    <p>2019-06-16 18:26</p>
                                    <span class="iconfont icon-yuanquan"></span>
                                </td>
                                <td class="ro-avator">
                                    <a href="">
                                        <img src="img/food03.png" alt="">
                                    </a>
                                </td>
                                <td class="ro-info">
                                    <p class="food-info">黑椒牛排饭等一个菜品</p>
                                    <p class="ticket-info">订单号: 2110685471086654558</p>
                                </td>
                                <td class="ro-amount">
                                    <h3>15.88</h3>
                                </td>
                                <td class="ro-status">
                                    <h3>订单已完成</h3>
                                </td>
                                <td class="ro-handle">
                                    <span>订单详情</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="ro-time">
                                    <p>2019-06-16 18:26</p>
                                    <span class="iconfont icon-yuanquan"></span>
                                </td>
                                <td class="ro-avator">
                                    <a href="">
                                        <img src="img/food03.png" alt="">
                                    </a>
                                </td>
                                <td class="ro-info">
                                    <p class="food-info">黑椒牛排饭等一个菜品</p>
                                    <p class="ticket-info">订单号: 2110685471086654558</p>
                                </td>
                                <td class="ro-amount">
                                    <h3>15.88</h3>
                                </td>
                                <td class="ro-status">
                                    <h3>订单已完成</h3>
                                </td>
                                <td class="ro-handle">
                                    <span>订单详情</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="ro-time">
                                    <p>2019-06-16 18:26</p>
                                    <span class="iconfont icon-yuanquan"></span>
                                </td>
                                <td class="ro-avator">
                                    <a href="">
                                        <img src="img/food03.png" alt="">
                                    </a>
                                </td>
                                <td class="ro-info">
                                    <p class="food-info">黑椒牛排饭等一个菜品</p>
                                    <p class="ticket-info">订单号: 2110685471086654558</p>
                                </td>
                                <td class="ro-amount">
                                    <h3>15.88</h3>
                                </td>
                                <td class="ro-status">
                                    <h3>订单已完成</h3>
                                </td>
                                <td class="ro-handle">
                                    <span>订单详情</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- 地址管理 -->
                <div class="place-manager" style="display: none;">
                    <h3 class="p-header">地址管理</h3>
                    <div class="place-box clearfix">
                        <div class="box-item">
                            <div class="top">
                                虞育涛<span>先生</span>
                                <div class="operate">
                                    <span>修改</span>
                                    <span>删除</span>
                                </div>
                            </div>
                            <div class="content">
                                蓉阳苑21-24号 蓉阳苑8－21 602
                            </div>
                            <div class="bottom">13962083614</div>
                            <div class="delete-box hide">
                                <p>是否删除收获地址</p>
                                <div class="choose-btn">
                                    <span>确定</span>
                                    <span>取消</span>
                                </div>
                            </div>
                        </div>
                        <div class="box-item"></div>
                        <div class="box-item"></div>
                        <div class="box-item"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="blm-bottom">
        <div class="bot-container">
            <div class="web-info">
                    <span class="group-info">
                        &copy; 最美坤坤小组
                    </span>
                <span class="author">设计《有一天》</span>
            </div>
            <a class="toTop">
                <span class="iconfont icon-zhiding"></span>
                <span class="toTopBtn">前往顶部</span>
            </a>
        </div>
    </div>
</div>
</body>
</html>
