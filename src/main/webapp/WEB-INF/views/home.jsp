<%--
  Created by IntelliJ IDEA.
  User: 有一天
  Date: 2019/6/24
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>饱了么主界面</title>

    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="../font_blm/iconfont.css">
    <script src="../js/jquery-3.4.1.min.js"></script>
    <script src="../js/home.js"></script>
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
                            <span class="pe-conter">个人中心</span>
                        </li>
                        <li>
                            <span class="iconfont icon-jiahao"></span>
                            <span class="pe-adddress">我的地址</span>
                        </li>
                        <li>
                            <span class="iconfont icon-tuichu1"></span>
                            <span class="pe-exit">退出登录</span>
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

            <div class="sou-food">
                <input type="text" class="sou" name="sou" placeholder="搜索商家，美食...">
                <span class="iconfont icon-sousuo"></span>
            </div>
        </div>
    </div>

    <div class="food-class">
        <div class="food-container">
            <div class="left">商家分类：</div>
            <div class="right">
                <span class="on">全部</span>
                <span>水果</span>
                <span>零食</span>
                <span>油炸食品</span>
                <span>生鲜肉类</span>
                <span>生鲜蔬菜</span>
                <span>地方菜品</span>
                <span>便当</span>
                <span>谷物类</span>
                <span>高蛋白</span>
                <span>低脂肪</span>
                <span>早餐</span>
                <span>晚餐</span>
                <span>中餐</span>
                <span>夜宵</span>
                <span>下午茶</span>
                <span>异国料理</span>
                <span>快餐</span>
                <span>饮品</span>
                <span>盖浇饭</span>
                <span>面条馄饨</span>
            </div>
        </div>
    </div>

    <div class="shop-class">
        <div class="shop-container">

        </div>
    </div>

    <div class="shop-tomore">
        <div class="more-container">
            加载更多食物列表...
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

<script>
    $(document).ready(function(){

        let isExitPlace = 0;    //是否存在收货地址

        let $userHd = $('.hd-container .user-info');
        let $userHideList = $('.hd-container .user-info .targetList');
        let $backTopBtn = $('.bot-container .toTop .toTopBtn');
        let $shopContainer = $('.shop-class .shop-container');
        let $changePlaceBtn = $('.place-container .now-place .pSpan-3');
        let $foodSearchBtn = $('.place-container .sou-food span.iconfont');




        $(window).scroll(function(){
            //创建一个变量存储当前窗口下移的高度
            var scroTop = $(window).scrollTop();
            //判断当前窗口滚动高度
            //如果大于100，则显示顶部元素，否则隐藏顶部元素
            if(scroTop>100){
                $('.return_top').fadeIn(500);
            }else{
                $('.return_top').fadeOut(500);
            }
        })

        $backTopBtn.click(function(){
            $("html,body").animate({scrollTop:0},"fast");
        })


        //header 的hover效果
        $userHd.mouseenter(function(e){
            e.stopPropagation();
            $userHideList.css('display','block');
            $(this).mouseleave(function(){
                $userHideList.css('display','none');
            })
            $userHideList.mouseleave(function(){
                $(this).css('display','none');
            })
        })


    })

</script>
</body>
</html>
