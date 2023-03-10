<?php if ($fn_include = $this->_include("nheader.html")) include($fn_include); ?>
<div class="page-bar">
	<ul class="page-breadcrumb mylink">
		<?php echo $menu['link']; ?>
	</ul>
	<ul class="page-breadcrumb myname">
		<?php echo $menu['name']; ?>
	</ul>
	<div class="page-toolbar">
		<div class="btn-group pull-right">
			<button type="button" class="btn green btn-sm btn-outline dropdown-toggle" data-toggle="dropdown" aria-expanded="false" data-hover="dropdown"> <?php echo fc_lang('操作菜单'); ?>
				<i class="fa fa-angle-down"></i>
			</button>
			<ul class="dropdown-menu pull-right" role="menu">
				<?php if (is_array($menu['quick'])) { $count=count($menu['quick']);foreach ($menu['quick'] as $t) { ?>
				<li>
					<a href="<?php echo $t['url']; ?>"><?php echo $t['icon'];  echo $t['name']; ?></a>
				</li>
				<?php } } ?>
				<li class="divider"> </li>
				<li>
					<a href="javascript:window.location.reload();">
						<i class="icon-refresh"></i> <?php echo fc_lang('刷新页面'); ?></a>
				</li>
			</ul>
		</div>
	</div>
</div>


<div class="mytopsearch">
	<form method="post" action="" name="searchform" id="searchform">
		<label><?php echo fc_lang('日志月份'); ?> ：</label>
		<label style="margin-right: 10px;"><?php echo dr_field_input('time', 'Date', array('option'=>array('format'=>'Y-m-d','width'=>120)), (int)$time); ?></label>
		<label style="margin-right: 10px;"><button type="submit" class="btn green btn-sm" name="submit" > <i class="fa fa-search"></i> <?php echo fc_lang('搜索'); ?></button></label>
		<label><?php echo fc_lang('删除日志时请到日志保存目录：/cache/errorlog/年月/，以"天"为文件名'); ?></label>
	</form>
</div>

<div class="portlet light bordered">
	<div class="portlet-body">
		<div class="table-scrollable v3table">
			<div class="table-list">
				<table width="100%">
				<thead>
				<tr>
					<th align="left" width="170"><?php echo fc_lang('发生时间'); ?></th>
					<th align="left"></th>
				</tr>
				</thead>
				<tbody>
				<?php if (is_array($list)) { $count=count($list);foreach ($list as $id=>$t) { ?>
				<tr>
					<td align="left"><?php echo $t['time']; ?></td>
					<td align="left"><?php echo $t['error']; ?></td>
				</tr>
				<?php } } ?>
				</tbody>
				</table>
				<div id="pages"><a><?php echo fc_lang('共%s条', $total); ?></a><?php echo $pages; ?></div>
			</div>
		</div>
	</div>
</div>
<?php if ($fn_include = $this->_include("nfooter.html")) include($fn_include); ?>