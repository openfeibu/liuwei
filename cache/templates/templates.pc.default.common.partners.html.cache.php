<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!--内容开始-->
<div class="content">
    <section class="banner-image">
        <div class="banner-image">
            <img class="img-responsive" src="<?php echo THEME_PATH; ?>liuwei/images/partner.png" alt="">
        </div>
        <div class="banner-mask">
            <p><?php echo $top['name']; ?></p>
            <p>COOPERATIVE PARTNER</p>
        </div>
    </section>
    <section class="subhead">
        <span><?php echo $top['name']; ?></span>
    </section>
    <section class="partner-profile">
        <?php $rt = $this->list_tag("action=module module=partners catid=$catid page=1 pagesize=9 urlrule=index.php?page=[page] order=displayorder,updatetime"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
        <div class="par-group">
            <div class="par-header">
                <p><?php echo $t['title']; ?></p>
            </div>
            <div class="par-body">
                <a href="<?php echo $t['keywords']; ?>"><img src="<?php echo dr_get_file($t['thumb']); ?>" alt="">
            </div>
            <div class="par-footer">
                <p><?php echo $t['description']; ?></p>
            </div>
        </div>
        <?php } } ?>
    </section>
    <ul class="media-page">
        <?php echo $pages; ?>
    </ul>
</div>
<!--内容结束-->

<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>