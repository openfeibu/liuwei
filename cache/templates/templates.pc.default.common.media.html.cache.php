<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!--内容开始-->

<div class="content">
    <section class="banner-image">
        <div class="banner-image">
            <img class="img-responsive" src="<?php echo THEME_PATH; ?>liuwei/images/partner.png" alt="">
        </div>
        <div class="banner-mask">
            <p><?php echo $top['name']; ?></p>
            <p>NEWS CENTER</p>
        </div>
    </section>
    <!--<section class="page-position">-->
        <!--<div class="pull-left page-position">-->
            <!--<ul>-->
                <!--<li><a href="index.html">首页</a></li>-->
                <!--<?php echo dr_catpos($catid, '', true, '<li>>></li><li><a href="[url]">[name]</a></li>'); ?>-->
            <!--</ul>-->
        <!--</div>-->
    <!--</section>-->
    <section class="subhead">

        <span><?php echo dr_cat_value(4, 'name'); ?></span>

        <ul class="pull-right">
            <li>
                <form action="/index.php" class="search pull-right">
                    <input type="hidden" name="c" value="search">
                    <input type="hidden" name="mid" value="news">
                    <input type="hidden" name="m" value="news_search">
                    <button type="submit"><img src="<?php echo THEME_PATH; ?>liuwei/images/ic_search.png" alt=""></button>
                    <input type="text" name="keyword" placeholder="请输入您要查找的新闻">
                </form>
            </li>
            <li class="active"><a href="<?php echo $top['url']; ?>">全部</a></li>
            <?php $rt = $this->list_tag("action=category pid=4"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) {  if (t.child) {  $rt_t2 = $this->list_tag("action=category pid=$t[id]  return=t2"); if ($rt_t2) extract($rt_t2); $count_t2=count($return_t2); if (is_array($return_t2)) { foreach ($return_t2 as $key_t2=>$t2) { ?>
            <li><a href="<?php echo $t2['url']; ?>"><?php echo $t2['name']; ?></a></li>
            <?php } }  }  } } ?>
        </ul>
    </section>

    <section class="media-center">
        <div class="news-list-group">
            <?php $rt = $this->list_tag("action=module module=news catid=$catid page=1 pagesize=5 urlrule=index.php?page=[page] order=displayorder,updatetime"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
            <div class="news-list">
                <div class="news-list-img pull-left ">
                    <a href="<?php echo $t['url']; ?>"><img src="<?php echo dr_get_file($t['thumb']); ?>" alt=""></a>
                </div>
                <div class="news-list-body">
                    <a href="<?php echo $t['url']; ?>"><p><?php echo $t['title']; ?></p></a>
                    <p><?php echo $t['description']; ?></p>
                    <p><?php echo $t['updatetime']; ?></p>
                </div>
            </div>
            <?php } } ?>
        </div>
        <?php $pagenew=$pages ?>

        <div class="news-group pull-right">
            <h4>热门文章</h4>
            <ul>
                <?php $rt = $this->list_tag("action=module catid=4 order=hits num=5"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
                <li>
                    <a href="<?php echo $t['url']; ?>"><?php echo dr_strcut($t['title'], 80); ?></a>
                </li>
                <?php } } ?>
            </ul>
        </div>

    </section>
    <ul class="media-page">
        <?php echo $pagenew; ?>
        <!--<li><a href="">上一页</a></li>-->
        <!--<li class="page   -active"><a href="">1</a></li>-->
        <!--<li><a href="">2</a></li>-->
        <!--<li><a href="">3</a></li>-->
        <!--<li><a href="">下一页</a></li>-->
    </ul>

</div>

<!--内容结束-->

<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>