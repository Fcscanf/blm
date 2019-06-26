window.onload = function () {

    //获取左边栏的节点
    let pLeftLi = document.querySelectorAll('.wrap-left .sidebar > li');
    let pLeftA = document.querySelectorAll('.wrap-left .sidebar a');

    //需要渲染的目标容器
    let goalContainer = document.querySelector('.wrap-container .wrap-right');

    let now

    $.ajax({
        type: "post",
        url: "http://localhost:8080/blm_war_exploded/order/list/page=?",
        dataType: "json",
        headers: {'Content-Type': 'application/json'},
        data: JSON.stringify({
        }),
        success: function (result) {
            console.info(result)

        },
        error: function () {

        }
    })

}
