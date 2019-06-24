$(function () {
    var countdown = 60;

    //倒计时
    function settime(val) {
        if (countdown == 0) {
            val.text('获取验证码');
            countdown = 60;
        } else {
            /* val.setAttribute("disabled", true);*/
            val.text('重新获取 ' + countdown)
            countdown--;
            setTimeout(function () {
                settime(val)
            }, 1000)
        }
    }
    //发送验证码
    $(".validateLogin_send").click(function () {
        settime($(this));
    })
    //验证用户号码
    $(".username").blur(function () {
        var pPattern = /^1[345789]\d{9}$/;
        var $phone = $(".username").val();

        if (!pPattern.test($phone)) {
            $(".errormessage1").css("visibility", "visible");
            $(".errormessage2").css("visibility", "hidden");
            $(".errormessage3").css("visibility", "hidden");
        } else {
            $(".errormessage1").css("visibility", "hidden");
        }/*.{8,30}*/
    })
    //验证密码格式
    $(".password").blur(function () {
        var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z])');
        var pattern = /^[\w_-]{6,16}$/;
        var $password = $(".password").val();
        if (!regex.test($password)) {
            $(".errormessage2").css("visibility", "visible");
            $(".errormessage1").css("visibility", "hidden");
            $(".errormessage3").css("visibility", "hidden");
        } else {
            $(".errormessage2").css("visibility", "hidden");
        }
        if (!pattern.test($password)) {
            $(".errormessage3").css("visibility", "visible");
            $(".errormessage1").css("visibility", "hidden");
            $(".errormessage2").css("visibility", "hidden");
        } else {
            $(".errormessage3").css("visibility", "hidden");
        }
    })

    $(".titleleft").click(function () {
        $(".table1").css("z-index", "1");
        $(".table2").css("z-index", "-1");
        $(".titleleft").css("color", "#b40707");
        $(".titleright").css("color", "#333");
    })
    $(".titleright").click(function () {
        $(".table1").css("z-index", "-1");
        $(".table2").css("z-index", "1");
        $(".titleright").css("color", "#b40707");
        $(".titleleft").css("color", "#333");
    })
    //密码登录验证
    $(".button_login1").click(function () {
        loginpassword();
    })
    function loginpassword() {
        var username=$(".username").val();
        var password=$(".password").val();
        $.ajax({
            type:"post",
            url:"#",
            dataType:"json",
            data:{
                'username':username,
                'password':password
            },
            success:function (result) {

            },
            error:function () {
                alert("失败")
            }
        })
    }
    //验证登录
    $(".button_login2").click(function () {
        login2();
    })
    function loginp2() {
        var username=$(".username").val();
        var validate=$(".validate").val();
        $.ajax({
            type:"post",
            url:"#",
            dataType:"json",
            data:{
                'username':username,
                'validate':validate
            },
            success:function (result) {

            },
            error:function () {
            }
        })
    }




})