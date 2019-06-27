window.onload = function () {

    //获取左边栏的节点
    let pLeftLi = document.querySelectorAll('.wrap-left .sidebar > li');
    let pLeftA = document.querySelectorAll('.wrap-left .sidebar a');

    //需要渲染的目标容器
    let goalContainer = document.querySelector('.wrap-container .wrap-right');

    //进入页面初始化
    function initPage(){
        $.ajax({
            type:"post",
            url:"http://localhost:8080/blm_war_exploded/order/findallbyid",
            dataType:"json",
            async : false,
            headers: {'Content-Type':'application/json'},
            data:JSON.stringify({
                'userid': '1',
            }),
            success:function (result) {
                let getData = result.data;
                console.log(getData)
                goalContainer.innerHTML = ''

                goalContainer.innerHTML += `
                <div class="personal-center"  style="">
                    <div class="header-box clearfix">
                        <div class="header-item">
                            <div class="imgBox"><img src="../img/sm-icon/personal.png" alt=""></div>
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
                <div class="recent-order"  style="display: block;">
                    <div class="order-header clearfix">
                        <a href="javascript:void(0);" class="recent-ticket">最近订单</a>
                        <a href="" class="all-ticket">查看全部订单&gt;</a>
                    </div>
                    <div class="load-more">正在加载项目...</div>

                </div>
            `

                let orderContainer = document.querySelector('.wrap-right .recent-order');
                for(let i=0;i<getData.length;i++){
                    let date = new Date(getData[i].datee);
                    let Y = date.getFullYear() + '-';
                    let M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
                    let D = date.getDate() + ' ';
                    let h = date.getHours() + ':';
                    let m = date.getMinutes() + ':';
                    let s = date.getSeconds();
                    let getdate = Y+M+D+h+m+s;
                    orderContainer.innerHTML += `
                <div class="order-item">
                        <div class="order-rst clearfix">
                            <a class="logo" href="">
                                <img src="${getData[i].foodDetailTemps[0].picpath}" alt="">
                            </a>
                            <div class="info">
                                <h3 class="name"><a href="">${getData[i].foodDetailTemps[0].foodname}</a></h3>
                                <p class="product">${getData[i].foodDetailTemps[0].foodname}</p>
                                <a class="productnum">共<i class="num">${getData[i].foodDetailTemps.length}</i>个菜品&gt;</a>
                            </div>
                        </div>
                        <div class="order-time">
                            ${getdate}
                        </div>
                        <div class="order-price">
                            <p class="cost">${getData[i].foodDetailTemps[0].price}元</p>
                        </div>
                        <div class="order-status">
                            <p class="status">订单已完成</p>
                            <a class="link" href="">订单详情</a>
                        </div>
                    </div>`
                }
            },
            error:function (result) {

            }
        })
    }

    initPage();

    //点击地址管理
    let wrapLeftLi = document.querySelectorAll('.wrap-left .sidebar li > ul > li');

    //地址管理
    wrapLeftLi[1].onclick = function () {
        $.ajax({
            type:"post",
            url:"http://localhost:8080/blm_war_exploded/userdetail/select",
            dataType:"json",
            async : false,
            headers: {'Content-Type':'application/json'},
            data:JSON.stringify({
                'userid': '1',
            }),
            success:function(result){
                let getArr = result.data;
                goalContainer.innerHTML = '';
                goalContainer.innerHTML = `<div class="place-manager">
                    <h3 class="p-header">地址管理</h3>
                    <div class="place-box clearfix">                                         
                    </div>
                </div>`;

                let oPlaceBox = document.querySelector('.place-manager .place-box');
                for(let j=0;j<getArr.length;j++){
                    oPlaceBox.innerHTML +=`<div class="box-item">
                            <div class="top">
                                虞育涛<span>先生</span>
                                <div class="operate">
                                    <span>修改</span>
                                    <span>删除</span>
                                </div>
                            </div>
                            <div class="content">
                                ${getArr[j].address}
                            </div>
                            <div class="bottom">${getArr[j].phone}</div>
                            <div class="delete-box hide">
                                <p>是否删除收获地址</p>
                                <div class="choose-btn">
                                    <span>确定</span>
                                    <span>取消</span>
                                </div>
                            </div>
                        </div>`;
                }
            },
            error:function (result) {

            }
        })

    }

    //三个月的订单展示
    wrapLeftLi[0].onclick = function () {

        $.ajax({
            type:"post",
            url:"http://localhost:8080/blm_war_exploded/order/findallbyid",
            dataType:"json",
            async : false,
            headers: {'Content-Type':'application/json'},
            data:JSON.stringify({
                'userid': '1',
            }),
            success:function(result){
                goalContainer.innerHTML = '';
                console.log(result);
                let getArr = result.data;

                goalContainer.innerHTML += `<div class="recent-order";">
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
                            
                            </tbody>
                        </table>
                    </div>
                </div>`;

                let tableBody = document.querySelector('.recent-order .r-content .r-table tbody');
                for(let i=0;i<getArr.length;i++){
                    let date = new Date(getArr[i].datee);
                    let Y = date.getFullYear() + '-';
                    let M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
                    let D = date.getDate() + ' ';
                    let h = date.getHours() + ':';
                    let m = date.getMinutes() + ':';
                    let getdate = Y+M+D+h+m;
                    tableBody.innerHTML +=`<tr>
                                <td class="ro-time">
                                    <p>${getdate}</p>
                                    <span class="iconfont icon-yuanquan"></span>
                                </td>
                                <td class="ro-avator">
                                    <a href="">
                                        <img src="${getArr[i].foodDetailTemps[0].picpath}" alt="">
                                    </a>
                                </td>
                                <td class="ro-info">
                                    <p class="food-info">${getArr[i].foodDetailTemps[0].foodname}</p>
                                    <p class="ticket-info">订单号: ${getArr[i].orderid}</p>
                                </td>
                                <td class="ro-amount">
                                    <h3>${getArr[i].foodDetailTemps[0].price}</h3>
                                </td>
                                <td class="ro-status">
                                    <h3>订单已完成</h3>
                                </td>
                                <td class="ro-handle">
                                    <span onclick="">订单详情</span>
                                </td>
                            </tr>`;
                }

                let orderDetailBtn = document.querySelectorAll('.r-content .r-table tbody .ro-handle');
                for (let k=0;k<orderDetailBtn.length;k++){
                    orderDetailBtn[k].onclick = function () {
                        showOrderDetail();
                    }
                }
            },
            error:function (result) {

            }
        })
    }

    //订单详情展示
    function showOrderDetail() {
        goalContainer.innerHTML = '';
        goalContainer.innerHTML = `<div class="order-detail">
                    <div class="detail-title">
                        <h3>订单详情</h3>
                    </div>
                    <div class="show-status">
                        <h5>订单已送达</h5>
                        <p>18：29送达</p>
                    </div>
                    <div class="detail-shop">
                        <a href=""><img src="../img/food02.png" alt=""></a>
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
                </div>`;
    }

    //个人主页点击
    let oWrapFirstLi = document.querySelector('.wrap-left .sidebar > li');
    console.log(oWrapFirstLi)
    oWrapFirstLi.onclick = initPage();
}
