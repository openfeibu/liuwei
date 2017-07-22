/**
 * Created by 13046 on 2017/7/18.
//  */
// 登录、注册、修改页Ajax
// $(function () {
//     $(".forget-pd").click(function () {
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
// function checkemail(){
//     var em_val=document.forms["email"].value;
//     var atpos=em_val.indexOf("@");
//     var dotpos=em_val.lastIndexOf(".");
//     if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length){
//         alert("不是一个有效的 e-mail 地址");
//         return false;
//     }
//     else {
//         return true;
//     }
// }
// 登录框
// function validateForm(){
//     var x=$("form>input[type='email']").val();
//     var atpos=x.indexOf("@");
//     var dotpos=x.lastIndexOf(".");
//     if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length){
//         alert("不是一个有效的 e-mail 地址");
//         return false;
//     }
// }
$(document).ready(function () {
    var na;
    $("input[type='email']").bind('input propertychange',function () {
        var em_val=$("input[type='email']").val();
        var atpos=em_val.indexOf("@");
        var dotpos=em_val.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=em_val.length){
            var na=false;
            $(".login-form>label:first-child").show()
        }
        else {
            var na=true;
            $(".login-form>label:first-child").hide()
        }
        checkLogin(na,pd)
    });
    var pd;
    $("input[type='password']").bind('input propertychange',function () {
        var pdl=$(".form-control[type='password']").val().length;
        if (pdl>=5 && pdl<=16) {
            pd=true
        }
        else {
            pd=false
        }
        checkLogin(na,pd)
    });
})
function checkLogin(na,pd) {
    if ( pd==true ) {
        $(".login-form .btn[type='submit']").removeAttr("disabled")
    }
    else {
        $(".login-form .btn[type='submit']").attr("disabled",true)
    }
}
// 修改密码
$(".change-pd .form-control:nth-child(1)").bind('input propertychange',function () {
    var fornum=$(".change-pd .form-control:nth-child(1)").val().length;
    if (fornum==11) {
        $(".change-pd .send-code").removeAttr("disabled")
    }
    else {
        $(".change-pd .send-code").attr("disabled",true)
    }
});
$(".change-pd .form-control[type='password']").bind('input propertychange',function () {
    var forpd=$(".change-pd .form-control[type='password']").val().length;
    if (forpd>6 && forpd<=16) {
        $(".change-pd .btn[type='submit']").removeAttr("disabled")
    }
    else {
        $(".change-pd .btn[type='submit']").attr("disabled",true)
    }
});
/*获取验证码*/
var isPhone = 1;
function getCode(e){
    checkPhone(); //验证手机号码
    if(isPhone){
        resetCode(); //倒计时
    }else{
        $('.phone').focus();
    }

}
//验证手机号码
function checkPhone(){
    var phone = $('.phone').val();
    var pattern = /^1[0-9]{10}$/;
    isPhone = 1;
    if(phone == '') {
        alert('请输入手机号码');
        isPhone = 0;
        return;
    }
    if(!pattern.test(phone)){
        alert('请输入正确的手机号码');
        isPhone = 0;
        return;
    }
}
//倒计时
function resetCode(){
    $('#J_getCode').hide();
    $('#J_second').html('60');
    $('#J_resetCode').show();
    var second = 60;
    var timer = null;
    timer = setInterval(function(){
        second -= 1;
        if(second >0 ){
            $('#J_second').html(second);
            $('#J_second').attr("disabled");
        }else{
            clearInterval(timer);
            $('#J_getCode').show();
            $('#J_resetCode').hide();
        }
    },1000);
}
$('.send-code').on('click', function () {
    var $btn = $('.send-code').button(resetCode());
    $btn.button('reset')
})



