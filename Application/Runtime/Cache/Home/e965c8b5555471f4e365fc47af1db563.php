<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta name="keywords" content="" />
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
	
	<title>项目测试</title>
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




	
	<link rel="stylesheet" href="/Kiyoshi/Static/DataTables-1.10.8/css/jquery.dataTables.css">
	<div id="managers-list">
		<table class="table table-border">
			<thead>
				<tr>
					<th width="70" class="text-center">项目ID</th>
					<th width="280" class="text-center">项目名称</th>
					<th width="150" class="text-center">指标分值</th>
					<th width="150" class="text-center">得分</th>
					<th width="150" class="text-center">合格率</th>
					<th width="150" class="text-center">排名</th>
					<!-- <th width="200" class="text-center">操作</th> -->
				</tr>
			</thead>
			<tbody>
				<?php $preID = $managerList[0]['system_id']; ?>
				<?php if(is_array($result)): foreach($result as $key=>$vi): ?><tr>
						<?php if(is_null($vi['item'])): else: ?>
							<td class="text-center"><?php echo ($key); ?></td>
							<td class="text-center"><?php echo ($vi['item']); ?></td>
							<td class="text-center"><?php echo ($vi['quota']); ?></td>
							<td class="text-center"><?php echo ($vi['final_score']); ?></td>
							<td class="text-center"><?php echo ($vi['pass_rate']); ?></td>
							<td class="text-center"><?php echo ($vi['order']); ?></td>
							<!-- <td class="text-center">
								&nbsp;<a class="modify-button"><i class="fa fa-pencil-square-o"></i></a>
								<a class=" none modify-cancel-button"><i class="fa fa-adjust"></i></a>&nbsp;&nbsp;&nbsp;
								<a class="none modify-submit-button" item="<?php echo ($vi['item']); ?>"><i class="fa fa-check"></i></a>&nbsp;
							</td> --><?php endif; ?>
					</tr><?php endforeach; endif; ?>
			</tbody>
		</table>
	</div>
	
	<script charset="utf8" src="/Kiyoshi/Static/DataTables-1.10.8/js/jquery.dataTables.js"></script>
	<script src="/Kiyoshi/Public/script/resItem.js"></script>
</body>
</html>