<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta name="keywords" content="测评" />
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
	
	<title>测评结果</title>
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




<nav id="nav-top">
	<div class="fl">
		<p class="system-name">
			<i class="fa fa-book"></i>
			<?php $id = $_SESSION['zoneId']; ?>
			<a href="<?php echo U('Index/disone', array('id'=>$id));?>">
			<span>苏州文明城市建设测试&nbsp;&gt;&gt;<i><?php echo (session('zoneId')); ?></i></span></a>
		</p>
	</div>
	<div class="fr pos-relative">
		<p id="nav-userinfo" class="one-line">
			<i class="fa fa-user"></i>
			<?php if(empty($username)): ?><span class="navtop-name"><?php echo (session('admin_id')); ?></span>
				<?php else: ?>
				<span class="navtop-name"><?php echo ($username); ?></span><?php endif; ?>

			<a href="<?php echo U('Index/logout');?>">
				<span>退出</span>
			</a>
		</p>
	</div>
</nav>

<div class="main-container">
	<nav id="admin-sidebar" class="side-bar">
		<ul class="nav-list">
			<li class="nav-list-item">
				<a href="javascript:openapp('<?php echo U('Index/dataDir');?>',1,'数据表')">
					<i class="fa fa-tasks"></i>
					<span>数据管理</span>
					<i class="fa fa-angle-right fr"></i>
				</a>
			</li>
		</ul>
	</nav>
	<div class="main-content">
		<div class="tab-nav">
			<ul class="tab-nav-item">
				<li class="active" data-id='0'>主页</li>
			</ul>
		</div>
		<div class="page-content">
		
		</div>
	</div>
</div>

	<script src="/Kiyoshi/Public/script/index.js"></script>
	<script src="/Kiyoshi/Public/script/admin.js"></script>

</body>
</html>