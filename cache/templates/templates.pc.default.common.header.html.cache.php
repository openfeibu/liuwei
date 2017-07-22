<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=utf-8">
    <title><?php echo $meta_title; ?></title>
    <meta name="keywords" content="<?php echo $meta_keywords; ?>" />
    <meta name="description" content="<?php echo $meta_description; ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Feibu" />

    <!--引入CSS文件-->
    <link rel="stylesheet" href="<?php echo THEME_PATH; ?>liuwei/CSS/swiper.min.css">
    <link rel="stylesheet" href="<?php echo THEME_PATH; ?>liuwei/CSS/bootstrap.css">
    <link rel="stylesheet" href="<?php echo THEME_PATH; ?>liuwei/CSS/bootstrap-theme.css">
    <link rel="stylesheet" href="<?php echo THEME_PATH; ?>liuwei/CSS/style.css">
    <link rel="stylesheet" href="<?php echo THEME_PATH; ?>liuwei/css/cropper.min.css">
    <!--<link rel="stylesheet" href="<?php echo THEME_PATH; ?>liuwei/css/sitelogo.css">-->

    <script src="<?php echo THEME_PATH; ?>liuwei/JS/jquery-3.2.1.min.js"></script>
    <script src="<?php echo HOME_THEME_PATH; ?>layui/layui.js"></script>
    <script src="<?php echo HOME_THEME_PATH; ?>js/global.js"></script>
    <script type="text/javascript" src="<?php echo THEME_PATH; ?>js/<?php echo SITE_LANGUAGE; ?>.js"></script>
    <script type="text/javascript" src="<?php echo THEME_PATH; ?>js/dialog-plus.js"></script>
    <script type="text/javascript" src="<?php echo THEME_PATH; ?>js/jquery.artDialog.js?skin=default"></script>
    <script type="text/javascript" src="<?php echo THEME_PATH; ?>js/dayrui.js"></script>
    <script type="text/javascript" src="<?php echo THEME_PATH; ?>liuwei/js/script.js"></script>
    <script type="text/javascript">
        var memberpath = "<?php echo MEMBER_PATH; ?>";
    </script>

    <style>

        /*在线联系*/
        .fb-rides-cs {  font-size: 12px; background:#00a3e3; position: fixed; top: 250px; right: 0px; _position: absolute; z-index: 1500; border-radius:6px 0px 0 6px;height:220px;}
        .fb-rides-cs a { color: #00A0E9;}
        .fb-rides-cs a:hover { color: #ff8100; text-decoration: none;}
        .fb-rides-cs .fb-floatL { width: 36px; float:left; position: relative; z-index:1;margin-top: 21px;height: 181px;}
        .fb-rides-cs .fb-floatL a { font-size:0; text-indent: -999em; display: block;width: 36px;}
        .fb-rides-cs .fb-floatR { width: 130px; float: left; padding: 5px; overflow:hidden;}
        .fb-rides-cs .fb-floatR .cn {background:#F7F7F7; border-radius:6px;margin-top:23px;}
        .fb-rides-cs .fb-cn .fb-titZx{ font-size: 14px; color: #333;font-weight:600; line-height:24px;padding:5px;text-align:center;margin:0 !important}
        .fb-rides-cs .fb-cn {background: #fff;margin-top: 10px;border-radius: 5px;}
        .fb-rides-cs .fb-cn ul {padding:0px;}
        .fb-rides-cs .fb-cn ul li { line-height: 38px; height:38px;border-bottom: solid 1px #E6E4E4;overflow: hidden;text-align:center;}
        .fb-rides-cs .fb-cn ul li a{text-indent: 1em;text-align: left;color: #777;width: 100%;height:38px;display: block;background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEYAAAAUCAYAAAAwaEt4AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6OTA4ODJGQzhFNTQ2MTFFM0FBODFFOEM0RUVCNTZFNjQiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6OTA4ODJGQzdFNTQ2MTFFM0FBODFFOEM0RUVCNTZFNjQiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5kaWQ6Q0Y3MzdENUY0MkU1RTMxMUE0NThFRkVEREE3RTM3MzkiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6Q0Y3MzdENUY0MkU1RTMxMUE0NThFRkVEREE3RTM3MzkiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz777RZ6AAAKgElEQVR42pRYaWxU1xX+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) no-repeat 80% center; }
        .fb-rides-cs .fb-cn ul li img { vertical-align: middle;}
        .fb-rides-cs .fb-btnOpen, .fb-rides-cs .fb-btnCtn {  width:25px;position: relative; z-index:9; top:25px; left: 0;  background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEoAAACICAYAAABA8H3OAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo5OTUyODMwMzVGNEExMUU0ODI2RDhENUJFM0I2MUZGQSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo5OTUyODMwNDVGNEExMUU0ODI2RDhENUJFM0I2MUZGQSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjk5NTI4MzAxNUY0QTExRTQ4MjZEOEQ1QkUzQjYxRkZBIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjk5NTI4MzAyNUY0QTExRTQ4MjZEOEQ1QkUzQjYxRkZBIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+VDP/3wAAB1dJREFUeNrsXf9xozgU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); background-repeat: no-repeat; display:block;  height: 146px; padding: 8px;}
        .fb-rides-cs .fb-btnOpen { background-position: 0 0;}
        .fb-rides-cs .fb-btnCtn { background-position: -37px 0;}
        .fb-rides-cs ul li.top { border-bottom: solid #ACE5F9 1px;}
        .fb-rides-cs ul li.bot { border-bottom: none;}


        .index-carousel>.gallery-thumbs>.swiper-wrapper>.swiper-slide {
            width: 121px;!important;
            margin-right: 9px;!important;
        }
    </style>

</head>
<body>

<!--登录框-->
<div class="modal fade login" id="" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="login-modal">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <p>会员登陆</p>
        <div class="hr"></div>
        <form action="" class="login-form" id="myform" method="post">
            <input type="text" class="form-control" placeholder="邮箱" autocomplete="off" name="data[username]">
            <input type="password" class="form-control" minlength="6" maxlength="16"  placeholder="密码" autocomplete="off" name="data[password]">
            <a class="forget-pd" href="#">忘记密码？</a>
            <button type="submit" class="btn btn-block" onclick="dr_submit()">登录</button>
            <label class="checkbox-inline">
                <input type="checkbox" id="autologin" name="data[auto]" value="1">下次自动登录
            </label>
            <a class="registered" href="#">新用户注册</a>
        </form>
    </div>
</div>
<script type="text/javascript">
    function dr_submit() {
        var post = $("#myform").serialize();
        $.ajax({type: "POST",dataType:"json", url: "<?php echo dr_member_url('login/index'); ?>", data: post,
            success: function(data) {
                if (data.status) {
                    dr_tips('登录成功，即将为您跳转....', 3, 1);
                    setTimeout('window.location.href="'+data.backurl+'"', 2000);
                    var sync_url = data.syncurl;
                    // 发送同步登录信息
                    for(var i in sync_url){
                        $.ajax({
                            type: "GET",
                            async: false,
                            url:sync_url[i],
                            dataType: "jsonp",
                            success: function(json){ },
                            error: function(){ }
                        });
                    }
                } else {
                    dr_tips(data.code);
                }
            },
            error: function(HttpRequest, ajaxOptions, thrownError) {
                alert(HttpRequest.responseText);
            }
        });
    }
</script>
<script type="text/javascript">
    $(function () {
        $(".forget-pd").click(function () {
            $(".login-modal").load("<?php echo dr_member_url('login/find'); ?>")
        })
    });
    $(function () {
        $(".registered").click(function () {
            $(".login-modal").load("<?php echo dr_member_url('register/index'); ?>")
        })
    });
    $(function () {
        $(".a-login").click(function () {
            $(".login-modal").load("<?php echo dr_member_url('login/index'); ?>")
        })
    });
</script>
<!--页头开始-->

<header>
    <nav>
        <!--<div class="navheader">-->
            <!--<div class="wel-sentence">-->
                <!--<?php $gg = @explode(PHP_EOL, dr_block(1)); ?>-->
                <!--<?php if (is_array($gg)) { $count=count($gg);foreach ($gg as $t) { ?>-->
                <!--<?php list($value, $color)=explode('|', $t); ?>-->
                <!--<a href="index.html"><?php echo $value; ?></a>-->
                <!--<?php } } ?>-->
            <!--</div>-->
            <!--<ul>-->
                <!--<?php $link = @explode(PHP_EOL, dr_block(5)); ?>-->
                <!--<li><a href="#"><?php echo $link[3]; ?></a></li>-->
                <!--&lt;!&ndash; 登陆 &ndash;&gt;-->
                <!--<?php if ($member) { ?>-->
                <!--<li>-->
                    <!--<a href="<?php echo MEMBER_URL; ?>" class="blog-user">-->
                        <!--用户：<?php echo $member['username']; ?>-->
                    <!--&lt;!&ndash;<img src="<?php echo $member['avatar_url']; ?>" />&ndash;&gt;-->
                    <!--</a>-->
                <!--</li>-->
                <!--<?php } else { ?>-->
                <!--<li><a href="<?php echo dr_member_url('login/index'); ?>">登录</a></li>-->
                <!--<li>/</li>-->
                <!--<li><a href="<?php echo dr_member_url('register/index'); ?>">注册</a></li>-->
                <!--<?php } ?>-->
            <!--</ul>-->
        <!--</div>-->
        <!--<div class="col-md-1"></div>-->
        <div class="navbar">

            <!--logo-->
            <div class="logo">
                <a href="/">
                    <img class="img-responsive" src="<?php echo dr_get_file(dr_block(8)); ?>" alt="">
                </a>
            </div>

            <!--导航栏-->
            <ul>
                <!--<li class="active"><a class="active" href="/">首页</a></li>-->
                <?php $rt = $this->list_tag("action=category pid=0"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                <li class="per-info-nav <?php if (in_array($catid, $t['catids'])) { ?>active<?php } ?>">
                    <a href="<?php echo $t['url']; ?>"><?php echo $t['name']; ?></a>
                    <?php if ($t['child']) { ?>
                    <ul class="per-down">
                    <?php $rt_t2 = $this->list_tag("action=category pid=$t[id]  return=t2"); if ($rt_t2) extract($rt_t2); $count_t2=count($return_t2); if (is_array($return_t2)) { foreach ($return_t2 as $key_t2=>$t2) { ?>
                        <li><a href="<?php echo $t2['url']; ?>"><?php echo $t2['name']; ?></a></li>
                    <?php } } ?>
                    </ul>
                    <?php } ?>
                </li>
                <?php } }  if ($member) { ?>
                <li class="per-info-nav">
                    <a href="<?php echo MEMBER_URL; ?>"><img src="<?php echo $member['avatar_url']; ?>" class="img-circle" alt=""></a>
                    <ul class="per-down">
                        <li><a href="<?php echo MEMBER_URL; ?>">个人信息</a></li>
                        <li><a href="<?php echo dr_member_url('login/out'); ?>">退出</a></li>
                    </ul>
                </li>

                <?php } else { ?>
                <li class="login-btn">
                    <a href="" data-toggle="modal" data-target=".login">登录</a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </nav>
</header>

<!--页头结束-->