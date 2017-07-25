<?php if ($fn_include = $this->_include("nheader.html")) include($fn_include); ?>

<form class="form-horizontal" action="" method="post" id="myform" name="myform">
    <div class="page-bar">
        <ul class="page-breadcrumb mylink">
            <?php echo $menu['link']; ?>
        </ul>
        <ul class="page-breadcrumb myname">
            <?php echo $menu['name']; ?>
        </ul>
        <div class="page-toolbar">
            <div class="btn-group pull-right">
                <button type="button" class="btn green btn-sm btn-outline dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <?php echo fc_lang('操作菜单'); ?>
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
        <small></small>
    </h3>

            <div class="portlet light bordered myfbody">
                <div class="portlet-title">
                    <div class="caption">
                        <span class="caption-subject font-green"><?php if ($pid) {  echo fc_lang('子词');  } else {  echo fc_lang('父词');  } ?></span>
                    </div>

                    
                </div>
                <div class="portlet-body">
                    <div class="form-body">

                        <div class="form-group dr_one" id="dr_row_name">
                            <label class="col-md-2 control-label"><?php echo fc_lang('名称'); ?>：</label>
                            <div class="col-md-9">
                                <label><input type="text" onblur="d_topinyin('cname', 'name')" class="form-control" id="dr_name" name="data[name]" value="<?php echo $data['name']; ?>"></label>
                                <span class="help-block"> <?php echo fc_lang('它的描述名称'); ?> </span>
                            </div>
                        </div>
                        <div class="form-group dr_one" id="dr_row_cname">
                            <label class="col-md-2 control-label"><?php echo fc_lang('别名'); ?>：</label>
                            <div class="col-md-9">
                                <label><input type="text" class="form-control" id="dr_cname" name="data[code]" value="<?php echo $data['code']; ?>"></label>
                                <span class="help-block"> <?php echo fc_lang('别名只能由字母或者字母+数字组成'); ?> </span>
                            </div>
                        </div>
                        <div class="form-group dr_one">
                            <label class="col-md-2 control-label"><?php echo fc_lang('点击量'); ?>：</label>
                            <div class="col-md-9">
                                <label style="width:200px;"><input type="text" id="hits" class="form-control" name="data[hits]" value="<?php echo intval($data['hits']); ?>"></label>
                            </div>
                        </div>

                        <?php echo $myfield; ?>
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


<?php if ($fn_include = $this->_include("nfooter.html")) include($fn_include); ?>