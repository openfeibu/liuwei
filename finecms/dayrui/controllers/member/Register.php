<?php


/**
 * FineCMS 公益软件
 *
 * @策划人 李睿
 * @开发组自愿者  邢鹏程 刘毅 陈锦辉 孙华军
 */

//include APPPATH.'third_party/aliyun-php-sdk-core/Config.php';
//include_once APPPATH.'third_party/aliyun-php-sdk-core/Request/V20170525/SendSmsRequest.php';
//include_once APPPATH.'third_party/aliyun-php-sdk-core/Request/V20170525/QuerySendDetailsRequest.php';

class Register extends M_Controller {


//    private $accessKeyId;
//    private $accessKeySecret;
//
//    public function __construct()
//    {
//        parent::__construct();
//        $this->accessKeyId = 'LTAIApVLhPkBlaKA';
//        $this->accessKeySecret = '2lEVW34Rli7FqsEC8NzovB0gwmSITC';
//    }


	/**
	 * 注册
	 */
	public function index() {


		// 会员配置
		$MEMBER = $this->get_cache('MEMBER');



		// 判断是否开启注册
		if (!$MEMBER['setting']['register']) {
			$this->member_msg(fc_lang('站点已经关闭了会员注册'));
		}

		if (IS_POST) {
			$data = $this->input->post('data', TRUE);
            $data['email'] = $data['username'];
			$back_url = $_POST['back'] ? urldecode($this->input->post('back')) : '';
			$back_url = $back_url && strpos($back_url, 'register') === FALSE ? $back_url : dr_member_url('home/index');
			$coooo = get_cookie('register_code');
            if ($coooo != $this->input->post('register_code', TRUE)) {
                $error = array('name' => 'code', 'msg' => fc_lang('验证码不正确'));
            } elseif ($MEMBER['setting']['regcode'] && !$this->check_captcha('code')) {
				$error = array('name' => 'code', 'msg' => fc_lang('验证码不正确'));
			} elseif ($result = $this->is_username($data['username'])) {
				$error = array('name' => 'username', 'msg' => $result);
			} elseif (!$data['password']) {
				$error = array('name' => 'password', 'msg' => fc_lang('密码不能为空'));
//			} elseif ($data['password'] !== $data['password2']) {
//				$error = array('name' => 'password2', 'msg' => fc_lang('两次密码输入不一致'));
			} elseif ($result = $this->is_email($data['email'])) {
				$error = array('name' => 'email', 'msg' => $result);
			} else {
				$id = $this->member_model->register($data, 0);
				if ($id > 0) {
					// 注册成功
					$data['uid'] = $id;
					$this->hooks->call_hook('member_register_after', $data); // 注册之后挂钩点
					// 注册后的登录
					$code = $this->member_model->login($id, $data['password'], $data['auto'] ? 8640000 : $MEMBER['setting']['loginexpire'], 0, 1);

				} elseif ($id == -1) {
					$error = array('name' => 'username', 'msg' => fc_lang('该会员【%s】已经被注册', $data['username']));
				} elseif ($id == -2) {
					$error = array('name' => 'email', 'msg' => fc_lang('邮箱格式不正确'));
				} elseif ($id == -3) {
					$error = array('name' => 'email', 'msg' => fc_lang('该邮箱【%s】已经被注册', $data['email']));
				} elseif ($id == -4) {
					$error = array('name' => 'username', 'msg' => fc_lang('同一IP在限制时间内注册过多'));
				} elseif ($id == -5) {
					$error = array('name' => 'username', 'msg' => fc_lang('UCSSO：会员名称不合法'));
				} elseif ($id == -6) {
					$error = array('name' => 'username', 'msg' => fc_lang('UCSSO：包含不允许注册的词语'));
				} elseif ($id == -7) {
					$error = array('name' => 'username', 'msg' => fc_lang('UCSSO：Email格式有误'));
				} elseif ($id == -8) {
					$error = array('name' => 'username', 'msg' => fc_lang('UCSSO：Email不允许注册'));
				} elseif ($id == -9) {
					$error = array('name' => 'username', 'msg' => fc_lang('UCSSO：Email已经被注册'));
				} elseif ($id == -10) {
					$error = array('name' => 'phone', 'msg' => fc_lang('手机号码必须是11位的整数'));
				} elseif ($id == -11) {
                    $error = array('name' => 'phone', 'msg' => fc_lang('该手机号码已经注册'));
                } else {
					$error = array('name' => 'username', 'msg' => fc_lang('注册失败'));
				}
			}
			if (IS_AJAX) {
				$error && exit(dr_json(0, $error['msg']));
				$id > 0 && exit(json_encode(array(
					'status' => 1,
					'backurl' => $back_url,
					'syncurl' => dr_member_sync_url($code))));
			}
			$code && $this->member_msg(fc_lang('注册成功').$code, $back_url, 1, 3);
            exit;
		} else {
			$data = array();
			$back_url = $this->input->get('back') ? $this->input->get('back') : (isset($_SERVER['HTTP_REFERER']) ? (strpos($_SERVER['HTTP_REFERER'], 'login') !== false ? '' : $_SERVER['HTTP_REFERER']) : '');
		}

		$this->template->assign(array(
			'data' => $data,
			'code' => $MEMBER['setting']['regcode'],
			'back_url' => $back_url,
			'meta_title' => fc_lang('会员注册'),
		));
		$this->template->display('register.html');
	}

    public function getCode()
    {
        if (IS_AJAX) {
            $email = $this->input->post('email');
            $data = $this->db
                ->select('uid,username,randcode')
                ->where('email', $email)
                ->limit(1)
                ->get('member')
                ->row_array();
            if (!$data) {
                $randcode = dr_randcode();
                $this->load->helper('email');
                $code = @file_get_contents(WEBPATH.'cache/email/find_password.html');
                $boole = $this->sendmail($email, fc_lang('注册账号通知'), fc_lang($code, "会员", $randcode, $this->input->ip_address()));
                if (!$boole) {
                    $arr = [
                        'code' => '400',
                        'msg' => '发送失败'
                    ];
                    echo json_encode($arr);exit();
                }
                set_cookie('register_code', $randcode, 300);
//                $this->db->where('uid', $data['uid'])->update('member', array('randcode' => $randcode));

                echo json_encode([
                    'code' => 200,
                    'msg'  => '发送成功'
                ]);exit;

            }
            echo json_encode([
                'code' => 404,
                'msg' => '该用户已注册'
            ]);exit;
        }
    }

    public function contrastCode()
    {
        if (IS_AJAX) {
            $uid = (int)$this->input->post('uid');
            $code = (int)$this->input->post('code');

//            (!$uid || !$code) && $this->member_msg(fc_lang('输入不完整'));

            $data = $this->db
                ->where('email', $uid)
                ->where('randcode', $code)
                ->select('salt,uid,username,email')
                ->limit(1)
                ->get('member')
                ->row_array();
            if (!$data) {
                $this->db->where('uid', $uid)->update('member', array('randcode' => ''));
                $arr = [
                    'code' => 401,
                    'msg' => '验证码错误'
                ];
                echo json_encode($arr);exit;
            }

            $password1 = $this->input->post('password1');
            $password2 = $this->input->post('password2');
            if ($password1 != $password2) {
                $arr = [
                    'code' => 401,
                    'msg' => '两次密码输入不一致'
                ];
                echo json_encode($arr);exit;
            } elseif (!$password1) {
                $arr = [
                    'code' => 401,
                    'msg' => '密码不能为空'
                ];
                echo json_encode($arr);exit;
            } else {
                if (defined('UCSSO_API')) {
                    $rt = ucsso_edit_password($data['uid'], $password1);
                    // 修改失败
                    if (!$rt['code']) {
//                        $this->admin_msg(fc_lang($rt['msg']));
                        $arr = [
                            'code' => 401,
                            'msg' => $rt['msg']
                        ];
                        echo json_encode($arr);exit;
                    }
                }
                // 修改密码
                $this->db->where('uid', $data['uid'])->update('member', array(
                    'randcode' => 0,
                    'password' => md5(md5($password1) . $data['salt'] . md5($password1))
                ));
                $this->get_cache('MEMBER', 'setting', 'ucenter') && uc_user_edit($data['username'], '', $password1, '', 1);
                $this->hooks->call_hook('member_edit_password', array('member' => $data, 'password' => $password1));
//                $this->member_msg(fc_lang('密码修改成功'), dr_member_url('login/index'), 1);
                $arr = [
                    'code' => 200,
                    'msg' => '密码修改成功'
                ];
                echo json_encode($arr);exit;
            }
        }
    }


//    public function sendMsg()
//    {
//        @session_start();
//        //短信API产品名
//        $product = "Dysmsapi";
//        //短信API产品域名
//        $domain = "dysmsapi.aliyuncs.com";
//        //暂时不支持多Region
//        $region = "cn-hangzhou";
//
//
//        $mobile = $this->input->post('mobile');
//        $code = $this->input->post('mcode');
//
////        $mobile = $_GET['mobile'];
////        $code = rand(1000,9999);
////        $code=$_GET['mcode'];
//        if (isset($_SESSION['time']))//判断缓存时间
//        {
//            session_id();
//            $_SESSION['time'];
//        }
//        else
//        {
//            $_SESSION['time'] = date("Y-m-d H:i:s");
//        }
//        $_SESSION['user_code'] = [
//            'mobile' => $mobile,
//            'code' => $code,
//        ];
//
//        if((strtotime($_SESSION['time'])+600)<time()) {//将获取的缓存时间转换成时间戳加上60秒后与当前时间比较，小于当前时间即为过期
//            session_destroy();
//            unset($_SESSION);
//            header('content-type:text/html; charset=utf-8;');
//            echo '<script>alert("验证码已过期，请重新获取！");</script>';
//        }
//        else {
//            //初始化访问的acsCleint
//
//            $profile = DefaultProfile::getProfile($region, $this->accessKeyId, $this->accessKeySecret);
//            DefaultProfile::addEndpoint("cn-hangzhou", "cn-hangzhou", $product, $domain);
//            $acsClient = new DefaultAcsClient($profile);
//
//            $request = new Dysmsapi\Request\V20170525\SendSmsRequest;
//            //必填-短信接收号码
//            $request->setPhoneNumbers($mobile);
//            //必填-短信签名
//            $request->setSignName("方宝铖");
//            //必填-短信模板Code
//            $request->setTemplateCode("SMS_77975002");
//            //选填-假如模板中存在变量需要替换则为必填(JSON格式)
//            $request->setTemplateParam("{\"number\":\"$code\",\"product\":\"liuweifangshui\"}");
//            //选填-发送短信流水号
//            $request->setOutId("1234");
//            //发起访问请求
//            $acsResponse = $acsClient->getAcsResponse($request);
//            var_dump($acsResponse);
//            $this->querySendDetails();
//        }
//    }
//
//    public function querySendDetails() {
//
//        //短信API产品名
//        $product = "Dysmsapi";
//        //短信API产品域名
//        $domain = "dysmsapi.aliyuncs.com";
//        //暂时不支持多Region
//        $region = "cn-hangzhou";
//
//        //初始化访问的acsCleint
//        $profile = DefaultProfile::getProfile($region, $this->accessKeyId, $this->accessKeySecret);
//        DefaultProfile::addEndpoint("cn-hangzhou", "cn-hangzhou", $product, $domain);
//        $acsClient= new DefaultAcsClient($profile);
//
//        $request = new Dysmsapi\Request\V20170525\QuerySendDetailsRequest();
//        //必填-短信接收号码
//        $request->setPhoneNumber("13539809891");
//        //选填-短信发送流水号
//        $request->setBizId("abcdefgh");
//        //必填-短信发送日期，支持近30天记录查询，格式yyyyMMdd
//        $request->setSendDate("20170525");
//        //必填-分页大小
//        $request->setPageSize(10);
//        //必填-当前页码
//        $request->setContent(1);
//        //发起访问请求
//        $acsResponse = $acsClient->getAcsResponse($request);
//        var_dump($acsResponse);
//
//    }
}