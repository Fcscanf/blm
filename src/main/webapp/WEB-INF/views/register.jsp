<%--
  Created by IntelliJ IDEA.
  User: 有一天
  Date: 2019/6/23
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>饱了吗注册</title>
    <link rel="stylesheet" href="../css/register.css">
    <link rel="stylesheet" href="../font_blm/iconfont.css">
    <script src="../js/jquery-3.4.1.min.js"></script>
    <script src="../js/register.js" defer></script>
</head>
<body>
<div class="blm-container">
    <div class="blm-header">
        <div class="hd-container">
            <div class="hd-logo">
                <span class="iconfont icon-shiwu"></span>
                <h1 class="title">饱了吗</h1>
            </div>
            <div class="line">|</div>
            <div class="hd-desc">用户注册</div>
        </div>
    </div>
    <div class="blm-regControl">
        <div class="reg-leftBox">
            <a href="#" class="nor-reg onClicked">普通用户注册</a>
            <a href="#" class="shop-reg">我想成为商家</a>
        </div>
        <div class="reg-rightBox">
            <span>已有账号</span>
            <a href="#">登录></a>
        </div>
    </div>
    <div class="blm-content">
        <div class="norForm">
            <div class="input-container">
                <div class="input-left"><span>用户名</span></div>
                <div class="input-content">
                    <input type="text" name="username" placeholder="请输入用户名">
                </div>
                <div class="errInfo">用户名已经被注册！</div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>密码</span></div>
                <div class="input-content">
                    <input type="password" name="userpwd" placeholder="请输入密码">
                </div>
                <div class="errInfo">密码必须同时含有字母和数字且大于8位！</div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>确认密码</span></div>
                <div class="input-content">
                    <input type="password" name="repwd" placeholder="请确认密码">
                </div>
                <div class="errInfo">两次输入的密码不一致！</div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>手机号码</span></div>
                <div class="input-content">
                    <input type="text" name="mobile" placeholder="请输入手机号码">
                </div>
                <div class="errInfo">手机号码已经被注册！</div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>短信码验证</span></div>
                <div class="input-center">
                    <input type="text" name="mobilecode" placeholder="请输入短信验证码">
                </div>
                <div class="input-right">
                    <div class="getcode">获取验证码</div>
                </div>
            </div>
            <div class="regBtn">
                <button class="toReg">注册</button>
            </div>
        </div>
        <div class="shopForm">
            <div class="input-container">
                <div class="input-left"><span>用户名</span></div>
                <div class="input-content">
                    <input type="text" name="username" placeholder="请输入用户名">
                </div>
                <div class="errInfo">用户名已经被注册！</div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>密码</span></div>
                <div class="input-content">
                    <input type="password" name="userpwd" placeholder="请输入密码">
                </div>
                <div class="errInfo">密码必须同时包含字母和数字且大于8位！</div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>确认密码</span></div>
                <div class="input-content">
                    <input type="password" name="repwd" placeholder="请确认密码">
                </div>
                <div class="errInfo">两次输入的密码必须一致！</div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>手机</span></div>
                <div class="input-content">
                    <input type="text" name="mobile" placeholder="请输入手机号">
                </div>
                <div class="errInfo">手机号码不符合格式！</div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>短信码验证</span></div>
                <div class="input-center">
                    <input type="text" name="mobilecode" placeholder="请输入短信验证码">
                </div>
                <div class="input-right">
                    <span class="getcode">获取验证码</span>
                </div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>店铺名称</span></div>
                <div class="input-content">
                    <input type="text" name="shopname" placeholder="请输入店铺名称">
                </div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>联系电话</span></div>
                <div class="input-content">
                    <input type="text" name="shopname" placeholder="请输入联系电话">
                </div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>店铺区域</span></div>
                <div class="province c-box">
                    <span class="r-choose">江苏</span>
                    <span class="r-key">省</span>
                    <span class="r-icon"></span>
                    <div class="c-list">
                        <p class="clist-item">江苏</p>
                        <p class="clist-item">福建</p>
                    </div>
                </div>
                <div class="city c-box">
                    <span class="r-choose">无锡</span>
                    <span class="r-key">市/县</span>
                    <span class="r-icon"></span>
                    <div class="c-list">
                        <p class="clist-item">无锡</p>
                        <p class="clist-item">南京</p>
                        <p class="clist-item">南通</p>
                        <p class="clist-item">无锡</p>
                        <p class="clist-item">南京</p>
                        <p class="clist-item">南通</p>
                    </div>
                </div>
                <div class="area c-box">
                    <span class="r-choose">惠山</span>
                    <span class="r-key">区</span>
                    <span class="r-icon"></span>
                    <div class="c-list">
                        <p class="clist-item">无锡</p>
                        <p class="clist-item">南京</p>
                        <p class="clist-item">南通</p>
                        <p class="clist-item">无锡</p>
                        <p class="clist-item">南京</p>
                        <p class="clist-item">南通</p>
                    </div>
                </div>
            </div>
            <div class="input-container">
                <div class="input-left"><span>详细地址</span></div>
                <div class="input-content">
                    <input type="text" name="detailplace" placeholder="详细地址（xx街道/xx小区/xx号）">
                </div>
            </div>
            <div class="fileupload">
                <div class="file-container">
                    <div class="file-con">
                        <article class="upload" draggable="true">
                            <span></span>
                            <div class="file">选择图片
                                <form id="form" runat="server" method="post" enctype="multipart/form-data" >
                                    <input type="file"  multiple="multiple" id="imges1" name="imges1" class="upimages"/>
                                </form>
                            </div>
                        </article>
                    </div>
                    <div class="pic-show" draggable="true">
                        您也可以将卫生证书拖到此区域上传
                    </div>
                </div>

                <div class="img-show">

                </div>
                <div class="file-submit">
                    上传图片
                    <button class="sub-btn"></button>
                </div>
            </div>

            <div class="regBtn">
                <button class="toReg">注册</button>
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
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){

        //定义省市区对象
        const ssq={
            sheng:['江苏','福建'],
            shi:[
                ['无锡','南京','南通'],
                ['厦门']
            ],
            qu:[
                [
                    ['锡山','惠山','滨湖','梁溪','新吴'],
                    ['玄武','秦淮','建邺','鼓楼','浦口','栖霞','雨花台','江宁','六合','溧水','高淳'],
                    ['崇川','港闸','通州']
                ],
                [
                    ['思明','海沧','湖里','集美','同安','翔安']
                ]
            ]
        }
        //获取省市区列表
        let $province = $('.input-container .province');
        let $city = $('.input-container .city');
        let $area = $('.input-container .area');
        let $choose = $('.input-container .r-choose');

        let $cBoxList = $('.input-container .c-box .c-list');

        //省市区开关
        let $provinceState = 1;
        let $cityState = 1;
        let $areaState = 1;

        let $provinceChoose=0,
            $cityChoose=0,
            $areaChoose=0;

        //表单选择按钮
        let $norRegBtn = $('.blm-regControl .reg-leftBox .nor-reg');
        let $shopRegBtn = $('.blm-regControl .reg-leftBox .shop-reg');
        //表单信息
        let $nor_username = $('.blm-content .norForm .input-container input[name=username]');
        let $nor_userpwd = $('.blm-content .norForm .input-container input[name=userpwd]');
        let $nor_repwd = $('.blm-content .norForm .input-container input[name=repwd]');
        let $nor_mobile = $('.blm-content .norForm .input-container input[name=mobile]');
        let $nor_mobilecode = $('.blm-content .norForm .input-container input[name=mobilecode]');

        let $shop_username = $('.blm-content .shopForm .input-container input[name=username]');
        let $shop_userpwd = $('.blm-content .shopForm .input-container input[name=userpwd]');
        let $shop_repwd = $('.blm-content .shopForm .input-container input[name=repwd]');
        let $shop_mobile = $('.blm-content .shopForm .input-container input[name=mobile]');
        let $shop_mobilecode = $('.blm-content .shopForm .input-container input[name=mobilecode]');
        let $shop_shopname = $('.blm-content .shopForm .input-container input[name=shopname]');
        let $shop_detailplace = $('.blm-content .shopForm .input-container input[name=detailplace]');
        //获取两张表
        let $norForm = $('.blm-container .norForm');
        let $shopForm = $('.blm-container .shopForm');
        //获取normal两个错误的动画
        let $errInfoList_n = $('.blm-content .norForm .input-container .errInfo');
        let $errContainer_n = $('.blm-content .norForm .input-container');
        //获取shop两个错误信息
        let $errInfoList_s = $('.blm-content .shopForm .input-container .errInfo');
        let $errContainer_s = $('.blm-content .shopForm .input-container');
        //重新发送按钮
        let $timespan = $('.input-container .getcode');
        //定义要验证的对象
        let normalUser,shopUser;
        normalUser = new Object();

        //声明timer
        let timer = null;
        let countdown_n = 60;
        let countdown_s = 60;
        //控制发送验证码的开关，1代表可以发送，0代表不可发送
        let sendBtn_n = 1;
        let sendBtn_s = 1;



        //倒计时
        function settime_n(val) {
            if (countdown_n == 0) {
                val.text('获取验证码');
                val.css('color','#007dff');
                countdown_n = 60;
                sendBtn_n = 1;
            } else {
                val.text('重新获取 '+ countdown_n);
                val.css('color','#666');
                countdown_n--;
                setTimeout(function() {
                    settime_n(val);
                },1000)
            }
        }

        function settime_s(val) {
            if (countdown_s == 0) {
                val.text('获取验证码');
                val.css('color','#007dff');
                countdown_s = 60;
                sendBtn_s = 1;
            } else {
                val.text('重新获取 '+ countdown_s);
                val.css('color','#666');
                countdown_s--;
                setTimeout(function() {
                    settime_s(val);
                },1000)
            }
        }


        //注册用户类型,1代表普通用户，2代表商家用户
        let userType = 1;

        //清空表单信息
        function clearForm(){
            $nor_username.val('') ;
            $nor_username.val('') ;
            $nor_userpwd.val('');
            $nor_mobile.val('') ;
            $nor_mobilecode.val('');

            $shop_username.val('') ;
            $shop_userpwd.val('') ;
            $shop_repwd.val('');
            $shop_mobile.val('') ;
            $shop_mobilecode.val('') ;
            $shop_shopname.val('') ;
            $shop_detailplace.val('');

            normalUser = null;
            shopUser = null;
        }

        //正则 密码匹配是否满足要求
        function testPwd(pwd){
            var pPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
            return pPattern.test(pwd);
        }
        //手机匹配
        function testMobile(mobile){
            var pPattern = /^1[345789]\d{9}$/;
            return pPattern.test(mobile);
        }
        //邮箱匹配
        function testEmail(email){
            var pPattern = /^\w+\@+[0-9a-zA-Z]+\.(com|com.cn|edu|hk|cn|net)$/;
            return pPattern.test(email);
        }



        //点击
        $norRegBtn.click(function(){
            clearForm();
            userType = 1;

            normalUser = new Object();

            $norForm.css('display','block');
            $shopForm.css('display','none');

            if(!$(this).is('.onClicked')){
                $(this).addClass('onClicked');
            }
            if($shopRegBtn.is('.onClicked')){
                $shopRegBtn.removeClass('onClicked');
            }
        })

        $shopRegBtn.click(function(){
            clearForm();
            userType = 2;

            shopUser = new Object();

            $norForm.css('display','none');
            $shopForm.css('display','block');

            if(!$(this).is('.onClicked')){
                $(this).addClass('onClicked');
            }
            if($norRegBtn.is('.onClicked')){
                $norRegBtn.removeClass('onClicked');
            }
        })

        //普通用户的表单校对
        $nor_username.focus(function(){ //username
            $(window).keydown(function(event){
                $(window).keyup(function(e){

                    // $.ajax({
                    //     type: "POST",
                    //     url: "some.php",
                    //     data: "name=John&location=Boston",
                    //     success: function(msg){
                    //         if(msg = true){
                    //             //验证通过的话进行赋值
                    //             normalUser.username = $(this).val();


                    //         }else{
                    //             //报错处理
                    //             $errAn1.css({
                    //                 'animation':'errInfoMove 2s ease-in-out 0s 1 alternate forwards',
                    //                 'display':'block'
                    //             });
                    //         }
                    //     },
                    //     error: function(){}
                    // })

                    if($nor_username.val() === '123'){
                        $errInfoList_n.eq(0).css('display','block');
                        $errContainer_n.eq(0).addClass('errState');
                    }else{
                        $errInfoList_n.eq(0).css('display','none');
                        $errContainer_n.eq(0).removeClass('errState');
                    }
                })

            });
        })
        //普通用户密码框校对
        $nor_userpwd.focus(function(){
            $(window).keydown(function(){
                $(window).keyup(function (event) {
                    if(!testPwd($nor_userpwd.val())){
                        $errInfoList_n.eq(1).css('display','block');
                        $errContainer_n.eq(1).addClass('errState');
                    }else{
                        $errInfoList_n.eq(1).css('display','none');
                        $errContainer_n.eq(1).removeClass('errState');
                    }
                })
            })
        })
        //普通用户确认密码校对
        $nor_repwd.focus(function(){
            $(window).keydown(function(){
                $(window).keyup(function (event) {
                    if($nor_repwd.val() != $nor_userpwd.val()){
                        $errInfoList_n.eq(2).css('display','block');
                        $errContainer_n.eq(2).addClass('errState');
                    }else{
                        $errInfoList_n.eq(2).css('display','none');
                        $errContainer_n.eq(2).removeClass('errState');
                    }
                })
            })
        })
        //普通用户手机号码校对
        $nor_mobile.focus(function() {
            $(window).keydown(function(){
                $(window).keyup(function (event) {
                    if(!testMobile($nor_mobile.val())){
                        $errInfoList_n.eq(3).css('display','block');
                        $errInfoList_n.eq(3).text('手机号码不符合规范！')
                        $errContainer_n.eq(3).addClass('errState');
                    }else{
                        $errInfoList_n.eq(3).css('display','none');
                        //$errInfoList_n.eq(3).text('手机号码已经被注册！');
                        $errContainer_n.eq(3).removeClass('errState');

                        //ajax验证是否存在,成功后可触发获取验证码事件
                        // $timespan.click(function(){
                        //     if(sendBtn == 1){
                        //         sendBtn = 0;
                        //         settime($(this));
                        //         //发起ajax请求，发送验证码
                        //     }else{
                        //         console.info("不可发送状态");
                        //     }
                        // })
                    }
                })
            })
        })
        //发送按钮被按下
        $timespan.eq(0).click(function(){
            if(!testMobile($nor_mobile.val())){
                $errInfoList_n.eq(3).css('display','block');
                $errInfoList_n.eq(3).text('手机号码不符合规范！')
                $errContainer_n.eq(3).addClass('errState');
            }else{
                if(sendBtn_n == 1){
                    sendBtn_n = 0;
                    settime_n($(this));
                    //发起ajax请求，发送验证码
                }else{
                    $errInfoList_n.eq(3).css('display','none');
                    //$errInfoList_n.eq(3).text('手机号码已经被注册！');
                    $errContainer_n.eq(3).removeClass('errState');
                    console.info("不可发送状态");
                }
            }

        })

        //商家用户的表单校对
        //username
        $shop_username.focus(function(){
            $(window).keydown(function(){
                $(window).keyup(function(){
                    if($shop_username.val() == '123'){
                        $errInfoList_s.eq(0).css('display','block');
                        $errContainer_s.eq(0).addClass('errState');
                    }else{
                        $errInfoList_s.eq(0).css('display','none');
                        $errContainer_s.eq(0).removeClass('errState');
                    }
                })
            })
        })
        //密码
        $shop_userpwd.focus(function(){
            $(window).keydown(function(){
                $(window).keyup(function(){
                    if(!testPwd($shop_userpwd.val())){
                        $errInfoList_s.eq(1).css('display','block');
                        $errContainer_s.eq(1).addClass('errState');
                    }else{
                        $errInfoList_s.eq(1).css('display','none');
                        $errContainer_s.eq(1).removeClass('errState');
                    }
                })
            })
        })
        //确认密码
        $shop_repwd.focus(function(){
            $(window).keydown(function(){
                $(window).keyup(function(){
                    if($shop_repwd.val() != $shop_userpwd.val()){
                        $errInfoList_s.eq(2).css('display','block');
                        $errContainer_s.eq(2).addClass('errState');
                    }else{
                        $errInfoList_s.eq(2).css('display','none');
                        $errContainer_s.eq(2).removeClass('errState');
                    }
                })
            })
        })
        //手机号码
        $shop_mobile.focus(function(){
            $(window).keydown(function(){
                $(window).keyup(function(){
                    if(!testMobile($shop_mobile.val())){
                        $errInfoList_s.eq(3).css('display','block');
                        //$errInfoList_n.eq(3).text('手机号码已经被注册！');
                        $errContainer_s.eq(3).addClass('errState');
                    }else{
                        $errInfoList_s.eq(3).css('display','none');
                        //$errInfoList_n.eq(3).text('手机号码已经被注册！');
                        $errContainer_s.eq(3).removeClass('errState');
                    }
                })
            })
        })
        //验证按钮按下
        $timespan.eq(1).click(function(){
            if(!testMobile($shop_mobile.val())){
                $errInfoList_s.eq(3).css('display','block');
                $errInfoList_s.eq(3).text('手机号码不符合规范！')
                $errContainer_s.eq(3).addClass('errState');
            }else{
                if(sendBtn_s == 1){
                    sendBtn_s = 0;
                    settime_s($(this));
                    //发起ajax请求，发送验证码
                }else{
                    $errInfoList_s.eq(3).css('display','none');
                    //$errInfoList_n.eq(3).text('手机号码已经被注册！');
                    $errContainer_s.eq(3).removeClass('errState');
                    console.info("不可发送状态");
                }
            }
        })

        //省区域按下
        $province.click(function(){
            if($provinceState ==1){
                $provinceState = 0;
                $cBoxList.eq(0).css('display','block');
                $cBoxList.eq(0).empty();
                for(let i=0;i<ssq.sheng.length;i++){
                    let $op = $("<p class='clist-item'></p>");
                    $op.text(ssq.sheng[i]);
                    $op.attr('data-value',ssq.sheng[i]);
                    $cBoxList.eq(0).append($op);
                }
            }
            if($provinceState == 0){
                let $itemList = $('.input-container .province .c-list .clist-item');
                for(let j=0;j<$itemList.length;j++){
                    $itemList.eq(j).click(function(event){
                        //阻止事件的冒泡
                        event.stopPropagation();
                        $provinceState = 1;
                        let ctext = $itemList.eq(j).attr('data-value');
                        $choose.eq(0).text(ctext);
                        $cBoxList.eq(0).empty();
                        $cBoxList.eq(0).css('display','none');

                        //带动城市的变动
                        $choose.eq(1).text(ssq.shi[j][0]);
                        $choose.eq(2).text(ssq.qu[j][0][0]);

                        $provinceChoose = j;
                    })
                }
            }
        })
        //市区域按下
        $city.click(function(){
            if($cityState == 1){
                $cityState = 0;
                $cBoxList.eq(1).css('display','block');
                $cBoxList.eq(1).empty();
                for(let i=0;i<ssq.shi[$provinceChoose].length;i++){
                    let $op = $("<p class='clist-item'></p>");
                    $op.text(ssq.shi[$provinceChoose][i]);
                    $op.attr('data-value',ssq.shi[$provinceChoose][i]);
                    $cBoxList.eq(1).append($op);
                }
            }
            if($cityState == 0){
                let $itemList = $('.input-container .city .c-list .clist-item');
                for(let j=0;j<$itemList.length;j++){
                    $itemList.eq(j).click(function(event){
                        //阻止事件的冒泡
                        event.stopPropagation();
                        $cityState = 1;
                        let ctext = $itemList.eq(j).attr('data-value');
                        $choose.eq(1).text(ctext);
                        $cBoxList.eq(1).empty();
                        $cBoxList.eq(1).css('display','none');

                        //带动区的变动
                        $choose.eq(2).text(ssq.qu[$provinceChoose][j][0]);

                        $cityChoose = j;
                    })
                }
            }
        })
        //区选择
        $area.click(function(){
            if($areaState == 1){
                $areaState = 0;
                $cBoxList.eq(2).css('display','block');
                $cBoxList.eq(2).empty();
                for(let i=0;i<ssq.qu[$provinceChoose][$cityChoose].length;i++){
                    let $op = $("<p class='clist-item'></p>");
                    $op.text(ssq.qu[$provinceChoose][$cityChoose][i]);
                    $op.attr('data-value',ssq.qu[$provinceChoose][$cityChoose][i]);
                    $cBoxList.eq(2).append($op);
                }
            }
            if($areaState == 0){
                let $itemList = $('.input-container .area .c-list .clist-item');
                for(let j=0;j<$itemList.length;j++){
                    $itemList.eq(j).click(function(event){
                        //阻止事件的冒泡
                        event.stopPropagation();
                        $areaState = 1;
                        let ctext = $itemList.eq(j).attr('data-value');
                        $choose.eq(2).text(ctext);
                        $cBoxList.eq(2).empty();
                        $cBoxList.eq(2).css('display','none');

                        $areaChoose = j;
                    })
                }
            }

        })


    })
</script>

</body>
</html>
