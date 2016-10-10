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
				<a>
					<i class="fa fa-tasks"></i>
					<span>测评结果</span>
					<i class="fa fa-angle-right fr"></i>
				</a>
				<ul class="sub-list">
					<li>
						<a href="javascript:openapp('<?php echo U('Index/resItem');?>',1,'项目排名')">
							<i class="fa fa-caret-right"></i>
							<span>项目排名</span>
							<i class="fa fa-angle-right fr"></i>
						</a>
					</li>
					<li>
						<a href="javascript:openapp('<?php echo U('Index/resDomain');?>',2,'街道排名')">
							<i class="fa fa-caret-right"></i>
							<span>街道排名</span>
							<i class="fa fa-angle-right fr"></i>
						</a>
					</li>
					<li>
						<a href="javascript:openapp('<?php echo U('Index/resDepartment');?>',3,'责任单位')">
							<i class="fa fa-caret-right"></i>
							<span>责任单位</span>
							<i class="fa fa-angle-right fr"></i>
						</a>
					</li>
					<li>
						<a href="javascript:openapp('<?php echo U('Index/resDomainItem');?>',4,'街道项目对应表')">
							<i class="fa fa-caret-right"></i>
							<span>街道项目对应表</span>
							<i class="fa fa-angle-right fr"></i>
						</a>
					</li>
				</ul>
			</li>
			<li class="nav-list-item">
				<a>
					<i class="fa fa-users"></i>
					<span>报表生成</span>
					<i class="fa fa-angle-right fr"></i>
				</a>
				<ul class="sub-list">
					<li>
						<a href="javascript:openapp('<?php echo U('Index/report');?>',5,'报表预览')">
							<i class="fa fa-caret-right"></i>
							<span>报表预览</span>
							<i class="fa fa-angle-right fr"></i>
						</a>
					</li>
					<!-- <li>
						<a href="javascript:openapp('<?php echo U('Index/downloadFile');?>',6,'学生列表')">
							<i class="fa fa-caret-right"></i>
							<span>报表生成</span>
							<i class="fa fa-angle-right fr"></i>
						</a>
					</li> -->
					
				</ul>
			</li>
		</ul>
	</nav>
	<div class="main-content">
		<div class="tab-nav">
			<ul class="tab-nav-item">
				<li class="active" data-id='0'><a data-id='0' href="javascript:openapp('<?php echo U('Index/main');?>',0,'主页')">主页</a></li>
			</ul>
		</div>
		<div class="page-content">
				
			<link rel="stylesheet" href="/Kiyoshi/Static/DataTables-1.10.8/css/jquery.dataTables.css">
			<div id="managers-list">
				<table class="table table-border">
					<thead>
						<tr>
							<th width="100" class="text-center">序号</th>
							<th width="150" class="text-center">项目</th>
							<th width="100" class="text-center">考察点位</th>
							<th width="100" class="text-center">得分</th>
							<th width="100" class="text-center">区域</th>
							<th width="100" class="text-center">责任单位</th>
						</tr>
					</thead>
					<tbody>
						<?php if(is_array($data)): foreach($data as $key=>$vi): ?><tr>
							<td class="text-center"><?php echo ($vi["id"]); ?></td>
							<td class="text-center"><?php echo ($vi["item"]); ?></td>
							<td class="text-center"><?php echo ($vi["point"]); ?></td>
							<td class="text-center"><?php echo ($vi["get"]); ?></td>
							<td class="text-center"><?php echo ($vi["domain"]); ?></td>
							<td class="text-center">
							<?php $department = $vi['department']; ?>
							<?php if(is_array($department)): foreach($department as $key=>$si): echo ($si); ?> &nbsp;<?php endforeach; endif; ?>
							</td>
						</tr><?php endforeach; endif; ?>
					</tbody>
				</table>
			</div>
			<script charset="utf8" src="/Kiyoshi/Static/DataTables-1.10.8/js/jquery.dataTables.js"></script>
			<script src="/Kiyoshi/Public/script/resShow.js"></script>
		</div>
	</div>
</div>

	<script src="/Kiyoshi/Public/script/index.js"></script>
	<script src="/Kiyoshi/Public/script/admin.js"></script>

	</div>
</body>
</html>