<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta name="keywords" content="登录" />
	<meta name="description" content=""/>
	<!-- <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" /> -->
	<meta http-equiv="Cache-Control" content="no-transform" /> 
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	
	<!--[if lte IE 9]>
		<link rel="stylesheet" type="text/css" href="/Kiyoshi/Public/css/ie.css" />
	<![endif]--> 

	<!--[if IE 9]>
	    <script type="text/javascript" src="/Kiyoshi/Static/PIE-2.0beta1/PIE_IE9.js"></script>
	    <link rel="stylesheet" type="text/css" href="/Kiyoshi/Public/css/ie9.css" />
	<![endif]-->

	<!--[if lt IE 9]>
		<script type="text/javascript" src="/Kiyoshi/Public/plugins/html5.js"></script>
		<script type="text/javascript" src="/Kiyoshi/Public/plugins/respond.min.js"></script>
		<script type="text/javascript" src="/Kiyoshi/Static/PIE-2.0beta1/PIE_IE678.js"></script>
		<link rel="stylesheet" type="text/css" href="/Kiyoshi/Public/css/ie678.css" />
	<![endif]-->

	<!--[if lte IE 6]>
		<script src="/Kiyoshi/Public/plugins/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>

		<script type="text/javascript">
		    DD_belatedPNG.fix('div, ul, img, li, input , a');
		</script>
	<![endif]--> 
	
	<title>系统登录</title>
	<!-- <link href="favicon.ico" type="image/x-icon" rel="shortcut icon" /> -->
	<link rel="stylesheet" href="/Kiyoshi/Public/css/common.css">
	<link rel="stylesheet" href="/Kiyoshi/Public/css/admin.css">	
	<link rel="stylesheet" href="/Kiyoshi/Public/css/bootstrap.min.css">
	<link rel="stylesheet" href="/Kiyoshi/Static/DataTables-1.10.8/css/jquery.dataTables.css">
	<link rel="stylesheet" href="/Kiyoshi/Static/font-awesome-4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Kiyoshi/Public/css/style.css">
	<script type="text/javascript" src="/Kiyoshi/Public/plugins/jquery-1.11.2.js"></script>

</head>
<body>
<div id="wrapper-main">




	
	<style>
		body {
			background-color: #f6f6f6;
			background-image: url('/Kiyoshi/Public/images/soochow.jpg');
			background-size: 100%;
		}
	</style>

	<div style="padding: 60px;">
		<h1 style="text-align: center; text-shadow: 2px 2px 0px #ffffff">文明城市建设测评</h1>
	</div>

	<div id="admin-log-wrapper" class="center">
		<div class="admin-log-title">
			 <h2>请登录</h2>	
		</div>
		<form action="<?php echo U('Login/toLogin');?>" method="post">
			<div class="admin-log-body">
				<div class="admin-user-info">
					<span><i class=" fa fa-user-md"></i></span>
					<input type="text" name="username" placeholder="账号" value="">
				</div>
				<div class="admin-user-info">
					<span><i class="fa fa-key"></i></span>
					<input type="password" name="password" placeholder="密码" value="">
				</div>
				<div id="admin-log-button">
					<span class="fr">
						<input class="opacity-none" type="submit">
						<i class="fa fa-sign-in"></i>
					</span>	
				</div>
			</div>
		</form>
	</div>
</div>

<script src="/Kiyoshi/Public/plugins/jquery.cookie.js"></script>
<script>
	$(document).ready(function() {
		$("input[type='submit']").click( function(e) {
			var password = $("input[type='password']").val().trim();
			var username = $("input[type='text']").val().trim();

			if(username == '') {
				alert("请输入用户名！");
				e.preventDefault();
			}

			if(password == '') {
				alert("请输入密码！");
				e.preventDefault();
			}
		});	
	});
</script>
</body>
</html>