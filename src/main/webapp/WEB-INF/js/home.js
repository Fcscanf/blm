window.onload = function () {

    const foodList = ['','水果','零食','油炸食品','生鲜肉类','生鲜蔬菜','地方菜品','便当','谷物类','高蛋白','低脂肪',
        '早餐','晚餐','中餐','夜宵','下午茶','异国料理','快餐','饮品','盖浇饭','面条馄饨'];

    let nowShopLength = 0;
    let allShopLength = 0;
    let getArr;

    let shopContainer = document.querySelector('.shop-class .shop-container');
    //页面加载完毕后，发起ajax请求。获取数据后，渲染列表//页面加载完毕后，发起ajax请求。获取数据后，渲染列表
    $.ajax({
        type: "post",
        url: "http://localhost:8080/blm_war_exploded/food/findAll",
        dataType: "json",
        headers: {'Content-Type': 'application/json'},
        data: JSON.stringify({

        }),
        success: function (result) {
            shopContainer.innerHTML = '';
            getArr = result.result;
            allShopLength = getArr.length;
            if(getArr.length > 32){
                nowShopLength = 32;
            }else {
                nowShopLength = getArr.length;
            }
            console.log('当前nowLength:'+nowShopLength)
            for (let i = 0; i < nowShopLength; i++) {
                let oDiv = document.createElement('div');
                oDiv.classList.add('shop-item');
                oDiv.innerHTML += `<a href="">
                <div class="imgBox">
                    <img src="${getArr[i].picpath}" alt="">
                </div>
                <div class="infoBox">
                    <h3 class="food-name">${getArr[i].foodname}</h3>
                    <p class="food-price">${getArr[i].price}元</p>
                    <p class="food-shop">${getArr[i].storename}</p>
                </div>
            </a>
            <div class="hide-info">
                <span class="h-span"></span>
                <h3 class="h-name">${getArr[i].foodname}</h3>
                <p class="h-class">${getArr[i].foodtype}</p>
                <span class="h-price">${getArr[i].price}元</span>
                <p class="h-desc">${getArr[i].description}</p>`;
                shopContainer.appendChild(oDiv);
            }

        },
        error: function () {

        }
    })

    //用户点击商家分类
    let shopClassSpanList = document.querySelectorAll('.food-class .food-container .right span');
    for(let i = 0;i<shopClassSpanList.length;i++){
        shopClassSpanList[i].onclick = function () {
            for(let j=0;j<shopClassSpanList.length;j++){
                shopClassSpanList[j].className = '';
            }
            this.classList.add('on');

            //检索关键词
            let keys = foodList[i];

            $.ajax({
                type: "post",
                url: "http://localhost:8080/blm_war_exploded/food/vaguefind",
                dataType: "json",
                headers: {'Content-Type': 'application/json'},
                data: JSON.stringify({
                    'foodtype':keys
                }),
                success: function (result) {
                    shopContainer.innerHTML = '';
                    let getArr = result.result;
                        for (let i=0;i<getArr.length;i++){
                            let oDiv = document.createElement('div');
                            oDiv.classList.add('shop-item');
                            oDiv.innerHTML += `<a href="">
                        <div class="imgBox">
                            <img src="${getArr[i].picpath}" alt="">
                        </div>
                        <div class="infoBox">
                            <h3 class="food-name">${getArr[i].foodname}</h3>
                            <p class="food-price">${getArr[i].price}元</p>
                            <p class="food-shop">${getArr[i].storename}</p>
                        </div>
                    </a>
                    <div class="hide-info">
                        <span class="h-span"></span>
                        <h3 class="h-name">${getArr[i].foodname}</h3>
                        <p class="h-class">${getArr[i].foodtype}</p>
                        <span class="h-price">${getArr[i].price}元</span>
                        <p class="h-desc">${getArr[i].description}</p>`;
                            shopContainer.appendChild(oDiv);
                        }
                },
                error: function () {

                }
            })
        }
    }

    //用户框检索信息
    let souInput = document.querySelector('.place-container .sou-food input[name=sou]');
    let souSpan = document.querySelector('.place-container .sou-food span.iconfont');
    let inputValue = '';
    souInput.onfocus = function () {
        document.onkeyup = function (e) {
            inputValue = e.target.value;
        }
    }
    souSpan.onclick = function () {
        $.ajax({
            type: "post",
            url: "http://localhost:8080/blm_war_exploded/food/vaguefind",
            dataType: "json",
            headers: {'Content-Type': 'application/json'},
            data: JSON.stringify({
                'foodtype':inputValue
            }),
            success: function (result) {
                shopContainer.innerHTML = '';
                let getArr = result.result;
                for (let i=0;i<getArr.length;i++){
                    let oDiv = document.createElement('div');
                    oDiv.classList.add('shop-item');
                    oDiv.innerHTML += `<a href="">
                    <div class="imgBox">
                        <img src="${getArr[i].picpath}" alt="">
                    </div>
                    <div class="infoBox">
                        <h3 class="food-name">${getArr[i].foodname}</h3>
                        <p class="food-price">${getArr[i].price}元</p>
                        <p class="food-shop">${getArr[i].storename}</p>
                    </div>
                </a>
                <div class="hide-info">
                    <span class="h-span"></span>
                    <h3 class="h-name">${getArr[i].foodname}</h3>
                    <p class="h-class">${getArr[i].foodtype}</p>
                    <span class="h-price">${getArr[i].price}元</span>
                    <p class="h-desc">${getArr[i].description}</p>`;
                    shopContainer.appendChild(oDiv);
                }
            },
            error: function () {

            }
        })
    }

    //点击加载更多
    let loadMore = document.querySelector('.shop-tomore .more-container');
    loadMore.onclick = function () {
        if((nowShopLength + 20)<allShopLength){
            for(let j=nowShopLength;j<=(nowShopLength+20);j++){
                let oDiv = document.createElement('div');
                oDiv.classList.add('shop-item');
                oDiv.innerHTML += `<a href="">
                    <div class="imgBox">
                        <img src="${getArr[j].picpath}" alt="">
                    </div>
                    <div class="infoBox">
                        <h3 class="food-name">${getArr[j].foodname}</h3>
                        <p class="food-price">${getArr[j].price}元</p>
                        <p class="food-shop">${getArr[j].storename}</p>
                    </div>
                </a>
                <div class="hide-info">
                    <span class="h-span"></span>
                    <h3 class="h-name">${getArr[j].foodname}</h3>
                    <p class="h-class">${getArr[j].foodtype}</p>
                    <span class="h-price">${getArr[j].price}元</span>
                    <p class="h-desc">${getArr[j].description}</p>`;
                shopContainer.appendChild(oDiv);
            }
            nowShopLength += 20;
        }else if(nowShopLength >= allShopLength){
            loadMore.innerHTML = '已经加载到底了';
        }else{
            for(let k=nowShopLength;k<allShopLength;k++){
                let oDiv = document.createElement('div');
                oDiv.classList.add('shop-item');
                oDiv.innerHTML += `<a href="">
                    <div class="imgBox">
                        <img src="${getArr[k].picpath}" alt="">
                    </div>
                    <div class="infoBox">
                        <h3 class="food-name">${getArr[k].foodname}</h3>
                        <p class="food-price">${getArr[k].price}元</p>
                        <p class="food-shop">${getArr[k].storename}</p>
                    </div>
                </a>
                <div class="hide-info">
                    <span class="h-span"></span>
                    <h3 class="h-name">${getArr[k].foodname}</h3>
                    <p class="h-class">${getArr[k].foodtype}</p>
                    <span class="h-price">${getArr[k].price}元</span>
                    <p class="h-desc">${getArr[k].description}</p>`;
                shopContainer.appendChild(oDiv);
            }
            nowShopLength = allShopLength
        }
    }
}