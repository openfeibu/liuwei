<footer>
    <div class="footer-content">
        <ul>
            <li><img src="<?php echo dr_get_file(dr_block(8)); ?>" alt=""></li>
            <li><?php echo dr_block(7); ?></li>
        </ul>
        <?php $link = @explode(PHP_EOL, dr_block(5)); ?>
        <ul>
            <li><?php echo $link[0]; ?></li>
            <li><?php echo $link[1]; ?></li>
        </ul>

        <ul>
            <li><?php echo $link[2]; ?></li>
            <li><?php echo $link[4]; ?></li>
        </ul>
    </div>
</footer>

<!--QQ咨询-->

<!--<div class="consult">-->
    <!--<div class="con-main">-->
        <!--<img src="<?php echo THEME_PATH; ?>liuwei/images/qqicon.png" alt="">-->
        <!--<a href="">咨询客服</a>-->
    <!--</div>-->
<!--</div>-->

<div  class="fb-rides-cs" >
    <div class="fb-floatL">
        <a class="fb-btnOpen fb-aFloatTools_Show" title="查看在线客服" style="top:20px;display:block" href="javascript:void(0);"></a>
        <a  class="fb-btnCtn fb-aFloatTools_Hide" title="关闭在线客服" style="top:20px;display:none" href="javascript:void(0);"></a>
    </div>
    <div  class="fb-floatR fb-divFloatToolsView" style="display: none;height:237px;width: 140px;">
        <div class="fb-cn">
            <h3 class="fb-titZx">在线客服</h3>
            <ul>
                <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=595642191&amp;site=qq&amp;menu=yes">客服1</a> </li>
                <li ><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=595642191&amp;site=qq&amp;menu=yes">客服2</a></li>
                <li ><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=595642191&amp;site=qq&amp;menu=yes">客服3</a></li>
                <li ><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=595642191&amp;site=qq&amp;menu=yes">客服4</a></li>
            </ul>
        </div>
    </div>
</div>


<!--引入JS文件-->

<script src="<?php echo THEME_PATH; ?>liuwei/JS/jquery-3.2.1.min.js"></script>
<script src="<?php echo THEME_PATH; ?>liuwei/JS/swiper.jquery.min.js"></script>
<script src="<?php echo THEME_PATH; ?>liuwei/JS/bootstrap.js"></script>
<script src="<?php echo THEME_PATH; ?>liuwei/js/script.js"></script>
<script src="<?php echo THEME_PATH; ?>liuwei/js/cropper.min.js"></script>
<script src="<?php echo THEME_PATH; ?>liuwei/js/sitelogo.js"></script>
<script>
    $(function () {
        $(".fb-aFloatTools_Show").click(function(){
            $('.fb-divFloatToolsView').animate({width:'show',opacity:'show'},100,function(){
                $('.fb-divFloatToolsView').show();
            });
            $('.fb-aFloatTools_Show').hide();
            $('.fb-aFloatTools_Hide').show();
        });
        $(".fb-aFloatTools_Hide").click(function(){
            $('.fb-divFloatToolsView').animate({width:'hide', opacity:'hide'},100,function(){
                $('.fb-divFloatToolsView').hide();
            });
            $('.fb-aFloatTools_Show').show();
            $('.fb-aFloatTools_Hide').hide();
        });
    })
</script>
<script>
    var galleryTop = new Swiper('.gallery-top', {
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 0,//slide之间的距离（单位px）
        loop:true,
        autoplay:5000,//自动切换的时间间隔（单位ms）
        autoplayDisableOnInteraction:false,
        loopedSlides: 3, //looped slides should be the same
        slidesPerView: 1,
    });
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 9,//slide之间的距离（单位px）
        slidesPerView: 3,//设置slider容器能够同时显示的slides数量(carousel模式)
        touchRatio: 0.2,//触摸距离与slide滑动距离的比率。
        loop:true,//环路
        autoplayDisableOnInteraction:false,//用户操作后是否禁止autoplay
        loopedSlides: 3, //在loop模式下使用slidesPerview:'auto',还需使用该参数设置所要用到的loop个数
        slideToClickedSlide: true//设置为true则点击slide会过渡到这个slide
    });
    galleryTop.params.control = galleryThumbs;
    galleryThumbs.params.control = galleryTop;
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?d937a18621fca5254ed41ceeb0a14677";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script language="javascript">
    var mySwiper = new Swiper('.swiper-container',{
        pagination : '.swiper-pagination',
        loop:true,
//            autoplay:3000,
        paginationClickable :true,
    })
</script>
</body>
</html>