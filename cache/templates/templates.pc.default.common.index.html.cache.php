<?php if ($fn_include = $this->_include("header.html")) include($fn_include); ?>
<!--内容开始-->

<!--轮播图开始-->
<div class="content">
	<section class="index-carousel">
		<!-- Swiper -->
		<div class="swiper-container gallery-top">
			<div class="swiper-wrapper">
				<?php $block=dr_block(4); ?>
				<div class="swiper-slide">
					<img class="img-responsive" src="<?php echo dr_get_file($block['file']['0']); ?>" alt="">
				</div>
				<div class="swiper-slide">
					<img class="img-responsive" src="<?php echo dr_get_file($block['file']['1']); ?>" alt="">
				</div>
				<div class="swiper-slide">
					<img class="img-responsive" src="<?php echo dr_get_file($block['file']['0']); ?>" alt="">
				</div>
			</div>
			<!-- Add Arrows -->
		</div>
		<div class="swiper-pagination"></div>
		<!--<div class="swiper-container gallery-thumbs">-->
			<!--<div class="swiper-wrapper">-->
				<!--<div class="swiper-slide">-->
					<!--<img class="img-responsive" src="<?php echo dr_get_file($block['file']['0']); ?>" alt="">-->
				<!--</div>-->
				<!--<div class="swiper-slide">-->
					<!--<img class="img-responsive" src="<?php echo dr_get_file($block['file']['1']); ?>" alt="">-->
				<!--</div>-->
				<!--<div class="swiper-slide">-->
					<!--<img class="img-responsive" src="<?php echo dr_get_file($block['file']['0']); ?>" alt="">-->
				<!--</div>-->
			<!--</div>-->
			<!-- Add Arrows -->
		<!--</div>-->
		<div class="swiper-button-next swiper-button-white"></div>
		<div class="swiper-button-prev swiper-button-white"></div>
	</section>
	<!--轮播图结束-->

	<section id="index-dynamic">
		<div class="index-about">
			<div class="intro_up"><img class="img-responsive" src="<?php echo THEME_PATH; ?>liuwei/images/intro_up.png" alt=""></div>
			<div class="intro_paragraph">
				<p><?php echo dr_block(6); ?></p>
			</div>
			<div class="intro_down"><img class="img-responsive" src="<?php echo THEME_PATH; ?>liuwei/images/intro_down.png" alt=""></div>
		</div>

		<!--新闻动态-->
		<div class="index-news">
			<h3>
				<a href="<?php echo dr_cat_value(24, 'url'); ?>"><?php echo dr_cat_value(24, 'name'); ?></a>
			</h3>
            <?php $rt = $this->list_tag("action=module catid=24 order=displayorder,updatetime num=1"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
			<a href="#">
				<img class="img-responsive" src="<?php echo dr_get_file($t['thumb']); ?>" alt="">
			</a>
			<h4>
				<a href="<?php echo $t['url']; ?>"><?php echo dr_strcut($t['title'], 40); ?></a>
			</h4>
			<p><?php echo $t['description']; ?></p>
            <?php } } ?>
		</div>

		<!--产品动态-->
		<div class="index-product">
			<h3>
				<a href="#"><?php echo dr_cat_value(25, 'name'); ?></a>
			</h3>
            <?php $rt = $this->list_tag("action=module catid=25 order=displayorder,updatetime num=3"); if ($rt) extract($rt); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
			<div class="product-dynamics">
				<a href="#" class="pull-left">
					<img src="<?php echo dr_get_file($t['thumb']); ?>" class="" alt='' />
				</a>
				<div>
					<a href="<?php echo $t['url']; ?>"><?php echo dr_strcut($t['title'], 40); ?></a>
				</div>
			</div>
            <?php } } ?>
			<a href="<?php echo dr_cat_value(1, 'url'); ?>" class="pull-right index-product-more">更多产品>></a>
		</div>
	</section>
</div>
<?php if ($fn_include = $this->_include("footer.html")) include($fn_include); ?>