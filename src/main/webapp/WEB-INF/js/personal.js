window.onload = function () {

    //获取左边栏的节点
    let pLeftLi = document.querySelectorAll('.wrap-left .sidebar > li');
    let pLeftA = document.querySelectorAll('.wrap-left .sidebar a');

    //需要渲染的目标容器
    let goalContainer = document.querySelector('.wrap-container .wrap-right');


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
                orderContainer.innerHTML += `
                <div class="order-item">
                        <div class="order-rst clearfix">
                            <a class="logo" href="">
                                <img src="${getData[i].foodDetailTemps[0].pic}" alt="">
                            </a>
                            <div class="info">
                                <h3 class="name"><a href="">${getData[i].foodDetailTemps[0].foodname}</a></h3>
                                <p class="product">${getData[i].foodDetailTemps[0].foodname}</p>
                                <a class="productnum">共<i class="num">${getData[i].foodDetailTemps.length}</i>个菜品&gt;</a>
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
                    </div>`
            }
        },
        error:function (result) {

        }
    })


}
