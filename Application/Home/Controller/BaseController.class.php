<?php
namespace Home\Controller;
use Think\Controller;

class BaseController extends Controller {
	public function __construct() {
		parent::__construct();

		if(!session("?username")) {
			$this->redirect('Login/index');
		}

		$this->assign('userid', session('userid'))
			->assign('username', session('username'));
	}

}