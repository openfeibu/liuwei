<?php if ($fn_include = $this->_include("nheader.html")) include($fn_include); ?>

<div class="page-bar">
    <ul class="page-breadcrumb">
        <li><a href="<?php echo dr_url('root/my'); ?>" class="blue"><i class="fa fa-user"></i> <?php echo fc_lang('资料修改'); ?></a><i class="fa fa-circle"></i></li>

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

<h3 class="page-title">
    <small><?php echo fc_lang('当前登录管理员账号：<font color="red"><b>%s</b></font>，您可以修改以下信息：', $admin['username']); ?></small>
</h3>

<form class="form-horizontal" action="" method="post" id="myform" name="myform">
<input type="hidden" id="dr_color" name="data[color]" value="blue">
<div class="portlet light bordered myfbody">

    <div class="portlet-body">

        <div class="row">
            <div class="portlet-body form">
                <div class="form-body">

                    <div class="form-group">
                        <label class="col-md-2 control-label"><?php echo fc_lang('姓名'); ?>：</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="data[realname]" value="<?php echo $admin['realname']; ?>">
                            <span class="help-block">  </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label"><?php echo fc_lang('密码'); ?>：</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" name="data[password]" value="">
                            <span class="help-block"> <?php echo fc_lang('留空表示不修改密码'); ?> </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label"><?php echo fc_lang('快捷菜单'); ?>：</label>
                        <div class="col-md-9">
                            <div class="form-control-static">
                                <?php echo fc_lang('归属于后台首页"第一个分组菜单"的下级菜单'); ?>
                                <a class="btn green btn-xs" title="<?php echo fc_lang('添加'); ?>" href="javascript:;" onClick="add_menu()"> <i class="fa fa-plus"></i> </a>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div id="menu_body">
                                <?php if (!empty($admin['usermenu'])) {  if (is_array($admin['usermenu'])) { $count=count($admin['usermenu']);foreach ($admin['usermenu'] as $k=>$t) { ?>
                                <table width="100%" class="menu-sort">
                                    <tbody>
                                    <tr>
                                        <td><i class="fa fa-arrows"></i> <?php echo fc_lang('名称'); ?>：<input class="input-text" type="text" name="data[usermenu][name][<?php echo $k; ?>]" value="<?php echo $t['name']; ?>" /></td>
                                        <td align="left">URL：<input class="input-text" type="text" name="data[usermenu][url][<?php echo $k; ?>]" value="<?php echo $t['url']; ?>" /></td>
                                        <td align="left"><a class="btn red btn-xs" title="<?php echo fc_lang('删除'); ?>" href="javascript:;" onClick="remove_menu(this)"> <i class="fa fa-trash"></i> </a></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <?php } }  } ?>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>

<div class="myfooter">
    <div class="row">
        <div class="portlet-body form">
            <div class="form-body">
                <div class="form-actions">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <button type="submit" class="btn green"> <i class="fa fa-save"></i> <?php echo fc_lang('保存'); ?></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>

<script type="text/javascript">
function add_menu() {
	var data = '<table width="100%" class="menu-sort ui-sortable"><tbody><tr><td><i class="fa fa-arrows"></i> <?php echo fc_lang('名称'); ?>：<input class="input-text" type="text" name="data[usermenu][name][]" value="" /></td><td align="left">URL：<input class="input-text" type="text" name="data[usermenu][url][]" /></td><td align="left"><a class="btn red btn-xs" title="<?php echo fc_lang('删除'); ?>" href="javascript:;" onClick="remove_menu(this)"> <i class="fa fa-trash"></i> </a></td></tr></tbody></table>';
	$('#menu_body').append(data);
}
function remove_menu(_this) {
	$(_this).parent().parent().parent().remove();
}
function set_color(o, file) {
}
$("#menu_body").sortable({
    items: "table"
});
</script>
<?php if ($fn_include = $this->_include("nfooter.html")) include($fn_include); ?>