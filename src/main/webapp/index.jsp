<%--
  Created by IntelliJ IDEA.
  User: 有一天
  Date: 2019/6/23
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>饱了吗首页</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="font_blm/iconfont.css">
    <script src="js/jquery-3.4.1.min.js"></script>
</head>
<body>
<div class="blm-container">
    <div class="blm-header">
        <div class="hd-container">
            <div class="hd-logo">
                <span class="iconfont icon-shiwu"></span>
                <h1 class="title">饱了吗</h1>
            </div>
            <div class="hd-listBox">
                <a href="#">首页</a>
                <a href="#">登录</a>
                <span>|</span>
                <a href="${pageContext.request.contextPath}/user/toregister">注册</a>
            </div>
        </div>

    </div>
    <div class="blm-listNav">
        <div class="nav-container">
            <a href="#">夏日特饮</a>
            <a href="#">午后奶茶</a>
            <a href="#">精选午餐</a>
            <a href="#">地方菜品</a>
        </div>
    </div>
    <div class="blm-banner">
        <div class="ban-container">

            <ul class="list-container">
                <li class="list-item">
                    <a href=""><img src="img/food01.png" alt=""></a>
                </li>
                <li class="list-item">
                    <a href=""><img src="img/food02.png" alt=""></a>
                </li>
                <li class="list-item">
                    <a href=""><img src="img/food03.png" alt=""></a>
                </li>
                <li class="list-item">
                    <a href=""><img src="img/food04.png" alt=""></a>
                </li>
                <li class="list-item">
                    <a href=""><img src="img/food05.png" alt=""></a>
                </li>
            </ul>

            <a class="preBtn ctrBox">&lt;</a>
            <a class="nextBtn ctrBox">&gt;</a>
        </div>
    </div>
    <div class="blm-shopNav">
        <div class="shopContainer">
            <div class="shop-title">
                <h1>优选店铺</h1>
            </div>
            <div class="shop-list">
                <div class="shop-item"></div>
                <div class="shop-item"></div>
                <div class="shop-item"></div>
                <div class="shop-item"></div>
                <div class="shop-item"></div>
                <div class="shop-item"></div>
                <div class="shop-item"></div>
                <div class="shop-item"></div>
                <div class="shop-item"></div>
                <div class="shop-item"></div>
            </div>
            <div class="shop-setBox"></div>
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
        let nPage  = 1;

        let $preBtn = $(".blm-banner .ban-container .preBtn");
        let $nextBtn = $(".blm-banner .ban-container .nextBtn");
        let $ctBtn = $('.blm-banner .ban-container .ctrBox');
        let $banContainer = $(".blm-banner .ban-container .list-container");
        let $backTopBtn = $('.bot-container .toTop .toTopBtn');

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


        $banContainer.mouseenter(function(){
            $(this).css("animation","stop");
        })
        $banContainer.mouseleave(function(){
            $(this).css("animation","showBanner 15s infinite");
        })
        $ctBtn.mouseenter(function(){
            $banContainer.css("animation","stop");
        })
        $ctBtn.mouseleave(function(){
            $banContainer.css("animation","showBanner 15s infinite");
        })

        $preBtn.click(function(){
            if(nPage<=1){
                nPage = 5;
            }else{
                nPage -- ;
            }
            $banContainer.animate({
                left:(nPage-1)*-1200
            })
        })

        $nextBtn.click(function(){
            if(nPage>=5){
                nPage = 1;
            }else{
                nPage ++ ;
            }
            $banContainer.animate({
                left:(nPage-1)*-1200
            })
        })

        $backTopBtn.click(function(){
            $("html,body").animate({scrollTop:0},"fast");
        })
    })
</script>
</body>
</html>
