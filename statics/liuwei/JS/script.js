/**
 * Created by 13046 on 2017/7/18.
//  */
// 登录、注册、修改页Ajax
// $(function () {
//     $(".forget-pd-a").click(function () {
//         $(".login-modal").load("forget_pd.html")
//     })
// });
// $(function () {
//     $(".registered").click(function () {
//         $(".login-modal").load("registered.html")
//     })
// });
// $(function () {
//     $(".a-login").click(function () {
//         $(".login-modal").load("login.html")
//     })
// });

//  登录样式判断开始
$("#index_login_form>input[type='text']").bind('input propertychange',function () {
    var logUs=$("#index_login_form>input[type='text']").val();
    if (logUs.length!=1) {
        $(".index-login-user").show()
    }
    else {
        $(".index-login-user").hide()
    }
});
$("#index_login_form>input[type='password']").bind('input propertychange',function () {
    var logPd=$("#index_login_form>input[type='password']").val();
    if (logPd.length<6) {
        $(".index-login-password").show()
    }
    else {
        $(".index-login-password").hide()
    }
});
//注册页样式判断开始
$("#reg_form>input[type='email']").bind('input propertychange',function () {
    var regEm=$("#reg_form>input[type='email']").val();
    var reg =/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
    if (reg.test(regEm)) {
        $(".forget-email").hide();
        $(".send-code").removeAttr("disabled")
    }
    else {
        $(".forget-email").show()
        $(".send-code").attr("disabled",true)
    }
});
$("#reg_form>.int-pd").bind('input propertychange',function () {
    var regPd=$("#reg_form>.int-pd").val();
    if (regPd.length<6) {
        $("#reg_form>.forget-pd").show()
    }
    else {
        $("#reg_form>.forget-pd").hide()
    }
    $("#reg_form>.int-pd-ag").bind('input propertychange',function () {
        var regpdAg=$("#reg_form>.int-pd-ag").val();
        if (regpdAg!=regPd) {
            $("#reg_form>.forget-pd-ag").show();
            $("#reg_form>.sub-btn").attr("disabled",true)
        }
        else {
            $("#reg_form>.forget-pd-ag").hide();
            $("#reg_form>.sub-btn").removeAttr("disabled")
        }
    });
});
//忘记密码判断样式开始
$("#forget_form>.for-pd").bind('input propertychange',function () {
    var forPd=$("#forget_form>.for-pd").val();
    if (forPd.length<6) {
        $("#forget_form>.forget-pd").show()
    }
    else {
        $("#forget_form>.forget-pd").hide()
    }
    $("#forget_form>.for-pd-ag").bind('input propertychange',function () {
        var forpdAg=$("#forget_form>.for-pd-ag").val();
        if (forpdAg!=forPd) {
            $("#forget_form>.forget-pd-ag").show();
            $("#forget_form>.sub-btn").attr("disabled",true);
            // $("#forget_form>.input-code").attr("disabled",true)
        }
        else {
            $("#forget_form>.forget-pd-ag").hide();
            $("#forget_form>.input-code").removeAttr("disabled");
            // $("#forget_form>.input-code").removeAttr("disabled")
        }
    });
});
//个人中心页修改密码判断样式开始
$("#pre-pd-new").bind('input propertychange',function () {
    var perPd=$("#pre-pd-new").val();
    if (perPd.length<6) {
        $("#per-ch-form>.per-pd-new").show()
    }
    else {
        $("#per-ch-form>.per-pd-new").hide()
    }
    $("#pre-ch-pd").bind('input propertychange',function () {
        var perpdAg=$("#pre-ch-pd").val();
        if (perpdAg!=perPd) {
            $("#per-ch-form>.per-pd-ag").show();
            $("#per-ch-form>.per-pd-ag").attr("disabled",true)
        }
        else {
            $("#per-ch-form>.per-pd-ag").hide();
            $("#per-ch-form>.per-pd-ag").removeAttr("disabled")
        }
    });
});
$(document).ready(function () {
    var lis=$(".click-opt li");
    lis.click(function () {
        lis.each(function () {
            $(this).removeClass("active")
        })
        $(this).addClass("active")
    })
})


