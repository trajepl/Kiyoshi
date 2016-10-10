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
	
	<title>数据表修改</title>
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




	<link rel="stylesheet" href="/Kiyoshi/Static/DataTables-1.10.8/css/jquery.dataTables.min.css">
	<style type="text/css">
		textarea{
			margin-bottom: -94px;
			border:none;
			outline:none;
			background: transparent;
		}
		div#back-home {
    		margin: 20px auto -23px 64px;
		}
	</style>

	<div id="back-home"> 
		<a href="<?php echo U('Index/dataDir');?>"><i class="fa fa-backward fa-2x" aria-hidden="true"></i></a>
	</div>
	<div id="teacher-list">
		<table class="info">
			<thead>
				<tr>
					<th width="80" class="text-center">ID</th>
					<th width="200" class="text-center">表项名称</th>
					<th width="80" class="text-center">表项状态</th>
					<th width="80" class="text-center">修改表项</th>
					<th width="80" class="text-center">增加表项</th>
				</tr>
			</thead>
			<tbody>
				<?php if(is_array($data)): foreach($data as $key=>$vi): ?><tr>
						<td data-field="id" class="text-center"><?php echo ($vi["id"]); ?></td>
						<td data-field="<?php echo ($fields); ?>" class="text-center"><?php echo ($vi["$fields"]); ?></td>
						<?php if($vi["in_use"] == 0): ?><td data-field="in_use" class="text-center"><a class="in-use text-center" state="0" data-id="<?php echo ($vi["id"]); ?>" table-name="<?php echo ($table); ?>"><i class="fa fa-check-circle-o">&nbsp;&nbsp;已启用</i></a></td>	
						<?php else: ?>	
							<td data-field="in_use" class="text-center"><a class="in-use text-center" state="1" data-id="<?php echo ($vi["id"]); ?>" table-name="<?php echo ($table); ?>"><i class="fa fa-ban">&nbsp;&nbsp;已停用</i></a></td><?php endif; ?>
						<td class="text-center">
							<a class="modify-button"><i class="fa fa-pencil-square-o">&nbsp; &nbsp; 修改</i></a>
							<a class="none modify-cancel-button"><i class="fa fa-adjust"></i></a>&nbsp;&nbsp;
							<a class="none modify-submit-button" data-id="<?php echo ($vi["id"]); ?>" table-name="<?php echo ($table); ?>"><i class="fa fa-check"></i></a>&nbsp;&nbsp;
						</td>
						<td class="text-center">
							<a id="add-item" table-name="<?php echo ($table); ?>" data-field="<?php echo ($fields); ?>"><i class="fa fa-plus"></i></a>
						</td>
					</tr><?php endforeach; endif; ?>
			</tbody>
		</table>
		
	</div>

	<div id="managers-addition" class="none">
		<table id="managers-add-table" class="table table-border">
			<tbody>
				<tr id="major">
					<td>添加表项内容</td>
					<td>
						<textarea cols="35" rows="8"></textarea>
					</td>
				</tr>
			</tbody>
		</table>

		<div id="table-addition-submit">
			<input type="button" value="提交" class="submit">
			<input type="reset" value="取消" class="reset">
		</div>
	</div>

	<script type="text/javascript" charset="utf8" src="/Kiyoshi/Static/DataTables-1.10.8/js/jquery.dataTables.js"></script>
	<script src="/Kiyoshi/Public/script/dataDir.js"></script>
</body>
</html>