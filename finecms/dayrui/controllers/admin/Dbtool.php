<?php

class Dbtool extends M_Controller {

    private $beifen;

    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();

        $this->filename = WEBPATH.'cache/dbtool/config.php';
        $this->beifen = require $this->filename ;

        $menu = array(
            fc_lang('备份设置') => array('admin/dbtool/index', 'cog'),
        );

        if ($this->beifen['path'] && is_file(WEBPATH.$this->beifen['path'].'/index.php')) {
            $menu[fc_lang('数据备份管理')] = array('admin/dbtool/todo', 'database');
        }

        $this->template->assign(array(
            'menu' => $this->get_menu_v3($menu),
            'is_error' => !is_file(WEBPATH.$this->beifen['path'].'/index.php'),
        ));
    }

    public function index() {

        if (IS_POST) {
            $data = $this->input->post('data');
            $data['name'] = str_replace('/', '', $data['name']);
            $data['time'] = max(100, $data['time']);

            $this->load->library('dconfig');
            $this->dconfig->file($this->filename)->note('权限配置')->space(32)->to_require_one($data);

        } else {
            $data = $this->beifen;
        }

        $this->template->assign(array(
            'data' => $data,
        ));
        $this->template->display('dbtool_config.html');
    }

    public function todo() {


        $name = WEBPATH.'cache/dbtool/'.md5($_SERVER['HTTP_USER_AGENT'].$_SERVER['SERVER_ADDR'].$_SERVER['REMOTE_ADDR']).'.php';
        if (!file_put_contents($name, '<?php return '.(SYS_TIME + (int)$this->beifen['time']).'; ')) {
            $this->admin_msg('cache/dbtool/文件不可写入');
        }

        $this->template->assign(array(
            'sq_url' => $this->beifen['path'].'/index.php',
        ));
        $this->template->display('dbtool_todo.html');
    }
	

}