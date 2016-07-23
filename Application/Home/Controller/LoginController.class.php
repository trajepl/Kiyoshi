<?php
namespace Home\Controller;
use Think\Controller;

class LoginController extends Controller {
	public function index() {
		$this->display('index');
	}

	public function toLogin() {
		$password = I('password');
		$username = I('username');

		$info = M('adminuser')->where("username='%s'", $username)->select();

		if(count($info) == 0) {
			$this->error('用户名错误！', '', 1);
		} else if(md5($password) == $info[0]['password']) {
			session('username', $username);
			session('password', $password);
			$this->redirect('Index/index');
		} else 
			$this->error('密码错误！', '', 2);
	}

}